//
//
//
//
//
//
//
//
//
//
// import 'package:local_auth/local_auth.dart';
// import 'package:get/get.dart';
//
// class LocalAuthServices extends GetxController {
//   final LocalAuthentication auth = LocalAuthentication();
//
//   String authorized = 'Not Authorized';
//   bool isAuthenticating = false;
//
//
//   Future<void> authenticate() async {
//     bool authenticated = false;
//     try {
//       isAuthenticating = true;
//       authorized = 'Authenticating';
//
//       authenticated = await auth.authenticate(
//         localizedReason: 'Perform Biometrics',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//
// // There are also other options.
//
//         ),
//       );
//       if (authenticated == true) {
//
// // Perform your code here when authenticated
//
//       }
//     } on Exception catch (e) {
//       isAuthenticating = false;
//       authorized = 'Error - ${e.toString()}';
//       return;
//     }
//     authorized = (authenticated ? 'Authorized' : 'Not Authorized');
//     isAuthenticating = false;
//
//   }
//
// }
//
// enum SupportState {
//   unknown,
//   supported,
//   unsupported,
// }

import 'package:local_auth/local_auth.dart';

class HomeContoller {
  static final auth = LocalAuthentication();

  static Future<bool> canAuthinticate() async =>
      await auth.canCheckBiometrics || await auth.isDeviceSupported();

  static Future<bool> Authentication() async {
    try {
      if (!await canAuthinticate()) return false;
      return await auth.authenticate(localizedReason: "get in to app");
    } catch (e) {
      print('error $e');
      return false;
    }
  }

// BuildContext? ctx;
//
// HomeContoller({this.ctx});
//
// LocalAuthentication localAuth = LocalAuthentication();
//
//
// Future<void> authenticationUser({String ? path, bool? value }) async {
//   bool canCheBiometrics = await localAuth.canCheckBiometrics;
//   if (canCheBiometrics == true) {
//     List<BiometricType> availableBiometrics();
//
//     if (Platform.isAndroid) {
//       if (availableBiometrics.contains(BiometricType.face)) {
//
//       }
//       else if (
//       availableBiometrics.contains(BiometricType.fingerprint)
//       ) {
//         localiReason:
//         'please access blocker';
//         if (didAuthintication == true) {
//
//         }
//         else {
//           SystemNavigator.pop();
//         }
//       }
//     }
//     else {}
//   }
// }
}
