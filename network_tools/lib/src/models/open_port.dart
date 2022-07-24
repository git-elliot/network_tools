/// Represents open port for a target IP
class OpenPort {
  OpenPort(this._port, {this.isOpen = true});

  final int _port;
  final bool isOpen;

  int get port => _port;
}
