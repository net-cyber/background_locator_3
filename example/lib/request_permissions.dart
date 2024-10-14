import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermissions() async {
  var status = await Permission.location.request();
  if (status.isGranted) {
    // Permission is granted
  } else if (status.isDenied) {
    // Permission is denied
  } else if (status.isPermanentlyDenied) {
    // Open app settings to manually grant permission
    await openAppSettings();
  }
}
