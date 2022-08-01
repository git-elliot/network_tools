/// Service record list that is including the protocol, mostly _tcp, _udp may
/// not work
List<String> tcpSrvRecordsList = [
  '_uscan._tcp', // Any HP-compatible network scanners
  '_uscans._tcp', // Any SSL/TLS-capable HP-compatible network scanners
  '_privet._tcp', // Any Google CloudPrint-capable printers or print services
  '_http-alt._tcp',
  '_scanner._tcp', // Are there any Bonjour-capable scanners
  '_home-assistant._tcp',
  '_pdl-datastream._tcp', // Any HP JetDirect-style network printers
  '_ipp._tcp', // Are there any printers using the IPP protocol // "domain": "ipp"
  '_ipps._tcp', // Any SSL/TLS capable IPP printers // "domain": "ipp"
  '_http._tcp', // "domain": "bosch_shc", "name": "bosch shc*"
  '_ldap._tcp',
  '_gc._tcp',
  '_kerberos._tcp',
  '_kpasswd._tcp',
  '_airplay._tcp', // Any Apple AirPlay-capable video displays here_ipps // [ { "domain": "apple_tv", "properties": { "model": "appletv*" } }, { "domain": "apple_tv", "properties": { "model": "audioaccessory*" } }, { "domain": "apple_tv", "properties": { "am": "airport*" } }, { "domain": "samsungtv", "properties": { "manufacturer": "samsung*" } } ]
  '_raop._tcp', // Any Apple AirPlay-capable audio devices [ { "domain": "apple_tv", "properties": { "am": "appletv*" } }, { "domain": "apple_tv", "properties": { "am": "audioaccessory*" } },  { "domain": "apple_tv", "properties": { "am": "airport*" } } ],
  '_ippusb._tcp', // Are there any shared printers that are using the IPP-over-USB protocol, i.e. USB-connected printers shared by a Mac
  '_printer._tcp', // Any kinds of shared printers at all  "domain": "brother", "name": "brother*"
  '_ptp._tcp', // Any devices supporting the Picture Transfer Protocol over this network
  '_googlecast._tcp', // Is there a ChromeCast-capable device in this network "domain": "cast"
  '_airport._tcp', // Any Apple AirPort WiFi APs // "domain": "apple_tv"
  '_esphomelib._tcp', // [ { "domain": "esphome" }, { "domain": "zha", "name": "tube*" } ]
  '_mqtt._tcp',
  '_autodiscover._tcp',
  '_sip._tcp',
  '_minecraft._tcp',
  '_Volumio._tcp', // "domain": "volumio"
  '_api._tcp', // [ { "domain": "baf", "properties": { "model": "haiku*" } }, { "domain": "baf", "properties": { "model": "i6*" } } ]
  '_appletv-v2._tcp', // "domain": "apple_tv"
  '_axis-video._tcp', // [ { "domain": "axis", "properties": { "macaddress": "00408c*" } }, { "domain": "axis", "properties": { "macaddress": "accc8e*" } }, { "domain": "axis", "properties": { "macaddress": "b8a44f*" } }, { "domain": "doorbird", "properties": { "macaddress": "1ccae3*"} } ],
  '_bond._tcp', // "domain": "bond"
  '_companion-link._tcp', // "domain": "apple_tv"
  '_daap._tcp', // "domain": "forked_daapd"
  '_dkapi._tcp', // "domain": "daikin"
  '_dvl-deviceapi._tcp', // [ { "domain": "devolo_home_control" }, { "domain": "devolo_home_network", "properties": { "MT": "*" } } ]
  '_easylink._tcp', // "domain": "modern_forms", "name": "wac*"
  '_elg._tcp', // "domain": "elgato"
  '_enphase-envoy._tcp', // "domain": "enphase_envoy"
  '_fbx-api._tcp', //  "domain": "freebox"
  '_hap._tcp', // [ { "domain": "homekit_controller" }, { "domain": "zwave_me", "name": "*z.wave-me*" } ]
  '_homekit._tcp', // "domain": "homekit"
  '_hscp._tcp', // "domain": "apple_tv"
  '_hue._tcp', // "domain": "hue"
  '_hwenergy._tcp', // "domain": "homewizard",
  '_kizbox._tcp', // "domain": "overkiz", "name": "gateway*"
  '_leap._tcp', // "domain": "lutron_caseta"
  '_lookin._tcp', // "domain": "lookin"
  '_mediaremotetv._tcp', // "domain": "apple_tv"
  '_nanoleafapi._tcp', // "domain": "nanoleaf"
  '_nanoleafms._tcp', // "domain": "nanoleaf"
  '_nut._tcp', // "domain": "nut"
  '_octoprint._tcp', // "domain": "octoprint"
  '_plexmediasvr._tcp', // "domain": "plex"
  '_plugwise._tcp', // "domain": "plugwise"
  '_powerview._tcp', // "domain": "hunterdouglas_powerview"
  '_sideplay._tcp', // { "domain": "ecobee", "properties": { "mdl": "eb-*" } }, { "domain": "ecobee", "properties": { "mdl": "ecobee*" } }
  '_sonos._tcp', // "domain": "sonos"
  '_soundtouch._tcp', // "domain": "soundtouch"
  '_spotify-connect', // "domain": "spotify"
  '_ssh._tcp', // { "domain": "smappee", "name": "smappee1*" }, { "domain": "smappee", "name": "smappee2*" }, { "domain": "smappee", "name": "smappee50*" }
  '_system-bridge._tcp', // "domain": "system_bridge"
  '_touch-able._tcp', // "domain": "apple_tv"
  '_viziocast._tcp', // "domain": "vizio"
  '_wled._tcp', // "domain": "wled"
  '_xbmc-jsonrpc-h._tcp', // "domain": "kodi"
  '_zigate-zigbee-gateway._tcp', //  "domain": "zha", "name": "*zigate*"
  '_zwave-js-server._tcp', // "domain": "zwave_js"
  '_axis-video._tcp', // "properties": { "macaddress": "00408c*" } "properties": { "macaddress": "accc8e*" } "properties": { "macaddress": "b8a44f*" }
  '_androidtvremote2._tcp',
  '_ewelink._tcp',
];

List<String> udpSrvRecordsList = [
  '_api._udp', // "domain": "guardian"
  '_hap._udp', // "domain": "homekit_controller"
  '_miio._udp', // [ { "domain": "xiaomi_aqara" }, { "domain": "xiaomi_miio" }, { "domain": "yeelight", "name": "yeelink-*" } ]
  '_sleep-proxy._udp', // "domain": "apple_tv"
  '_system-bridge._udp',
];
