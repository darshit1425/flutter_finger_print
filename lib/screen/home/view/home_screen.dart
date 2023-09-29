import 'package:flutter/material.dart';
import 'package:flutter_finger_print/screen/contoller/home_contoller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // LocalAuthServices sec = Get.put(LocalAuthServices());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
              onPressed: () async {
                // sec.authenticate();
                // setState(() {
                //   print("object");
                // });
                bool auth = await HomeContoller.Authentication();
                print('===================   $auth');

                if (auth) {
                  Get.toNamed('/sec');
                }
              },
              child: Icon(Icons.fingerprint, size: 50),
            ))
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_finger_print/helper/biometrics_helper.dart';
//
// class HomeView extends StatefulWidget {
//   const HomeView({super.key});
//
//   @override
//   State<HomeView> createState() => _HomeViewState();
// }
//
// class _HomeViewState extends State<HomeView> {
//   bool showBiometrics = false;
//   bool isAuthntication = false;
//
//   @override
//   void initState() {
//     super.initState();
//
//     isBiometricAvilable();
//   }
//
//   isBiometricAvilable() async {
//     showBiometrics = await BiometricHelper().hasEnrolledBiometrics();
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           appBar: AppBar(),
//       body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         if (showBiometrics)
//           Center(
//             child: ElevatedButton(
//                 onPressed: () async {
//
//                   isAuthntication = await BiometricHelper().authenticate();
//                   setState(()  {
//
//                   });
//                 },
//                 child: Icon(
//                   Icons.fingerprint,
//                   size: 25,
//                 )),
//           ),
//         SizedBox(
//           height: 20,
//         ),
//         if (isAuthntication) Text("well done")
//       ]),
//     ));
//   }
// }
