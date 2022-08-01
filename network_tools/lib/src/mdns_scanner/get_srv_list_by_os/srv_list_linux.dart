import 'dart:collection';

import 'package:process_run/shell.dart';

class SrvListLinux {
  static Future<List<String>?> getSrvRecordList() async {
    final HashSet<String> srvList = HashSet<String>();

    try {
      srvList.addAll(await runAvahiBrowseCommand());
      srvList.addAll(await runMdnsScanCommand());
    } catch (e) {
      print('Error:\n$e');
    }
    return srvList.toList();
  }

  /// Will try to get results from avahi-browse, it is not installed by default
  /// on all Linux machines
  static Future<List<String>> runAvahiBrowseCommand() async {
    final shell = Shell(verbose: false);

    final List<String> srvListAvahi = [];

    List<String> resultForEachLine = [];
    try {
      await shell.run(
        '''
timeout 2s avahi-browse --all -p
''',
      ).onError((ShellException error, stackTrace) {
        // The command should return error as we are killing it with the command timeout

        final String? resultStderr = error.result?.stderr.toString();
        if (resultStderr != null &&
            resultStderr.contains('No such file or directory')) {
          print(
            'You can make the mdns process better by installing `avahi-browse`',
          );
          return [];
        }
        final String? resultStdout = error.result?.stdout.toString();
        if (resultStdout == null) {
          return [];
        }
        resultForEachLine = resultStdout.split('\n');

        return [];
      });

      for (final String resultLine in resultForEachLine) {
        final List<String> lineSeparated = resultLine.split(';');
        if (lineSeparated.length >= 6) {
          final String srvString = lineSeparated[lineSeparated.length - 2];
          if (!srvString.contains(' ')) {
            srvListAvahi.add(srvString);
          }
        }
      }
    } catch (e) {
      print('Error getting info from avahi-browse\n$e');
    }
    return srvListAvahi;
  }

  /// Will try to get results from mdns-scan, it is not installed by default
  /// on all Linux machines
  static Future<List<String>> runMdnsScanCommand() async {
    final shell = Shell(verbose: false);

    final List<String> srvListMdnsScan = [];

    List<String> resultForEachLine = [];
    try {
      await shell.run(
        '''
timeout 2s mdns-scan
''',
      ).onError((ShellException error, stackTrace) {
        // The command should return error as we are killing it with the command timeout

        final String? resultStderr = error.result?.stderr.toString();

        if (resultStderr == null ||
            (resultStderr.contains('No such file or directory'))) {
          print(
            'You can make the mdns process better by installing `mdns-scan`',
          );
          return [];
        }
        resultForEachLine = resultStderr.split('\n');

        return [];
      });

      for (final String resultLine in resultForEachLine) {
        final List<String> lineSeparated = resultLine.split('.');
        if (lineSeparated.length >= 4) {
          final String srvString =
              '${lineSeparated[lineSeparated.length - 3]}.${lineSeparated[lineSeparated.length - 2]}';
          if (!srvString.contains(' ') && srvString != '.') {
            srvListMdnsScan.add(srvString);
          }
        }
      }
    } catch (e) {
      print('Error getting info from mdns-scan\n$e');
    }
    return srvListMdnsScan;
  }
}
