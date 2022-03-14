import 'package:coursius_project/routes/navigator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureTextInput = true;
  Icon changingIcons = const Icon(Icons.visibility);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: LottieBuilder.asset(
                    "assets/images/animations/coursius.json",
                    width: double.infinity,
                    height: 220,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Username",
                        prefixIcon: Icon(Icons.people_alt_outlined),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      obscureText: obscureTextInput,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: InkWell(
                              onTap: () {
                                if (obscureTextInput == true) {
                                  obscureTextInput = false;
                                  changingIcons =
                                      const Icon(Icons.visibility_off_outlined);
                                  //   setState(() {
                                  // });
                                } else {
                                  obscureTextInput = true;
                                  changingIcons = const Icon(Icons.visibility);
                                }
                                setState(() {});
                              },
                              child: changingIcons))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Navi.home);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const SizedBox(
                          height: 40,
                          width: 307,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              )))),
                ),
                RichText(
                    text: TextSpan(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10),
                        children: [
                      const TextSpan(text: "Forgot Your Password?"),
                      TextSpan(
                          text: " Click Here!",
                          style: TextStyle(color: Colors.blueAccent[200]))
                    ]))
              ],
            ),
          )),
    );
  }
}
