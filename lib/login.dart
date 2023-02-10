
import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      resizeToAvoidBottomInset:false,
        body: Container(
      padding: const EdgeInsets.only(top: 30),
     
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.purple, Colors.teal])),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login', style: Styles.loginStyle),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Welcome Back',
                style: Styles.loginInfo,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
            const SizedBox(height: 50,),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(50, 150, 150, 0.3),
                          blurRadius: 20,
                          offset: Offset(0, 10))
                    ]),
                child: Column(children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Email ',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: const TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          hintText: 'Password ',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                        
                   ),
                    
                    
                  ),
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Styles.forgotPassword,
              const SizedBox(
                height: 40,
              ),
             ButtonStyles.buttonLogin,
              const SizedBox(
                height: 30,
              ),
              Styles.continueWith,
              const SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                  child: ButtonStyles.buttonFacebook,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                  flex:1,
                  child:ButtonStyles.buttonGithub,
                  )
                ],
              )
            ]),
          ),
        ))
      ]),
    ));
  }
}

class Styles {
  static TextStyle loginStyle =
      const TextStyle(fontSize: 40, color: Colors.white);
  static TextStyle loginInfo =
      const TextStyle(fontSize: 20, color: Colors.white);
  static Text forgotPassword = const Text(
    'Forgot Password?',
    style: TextStyle(color: Colors.grey),
  );
  static Text loginButton = const Text(
    'Login',
    style: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  );
  static Text continueWith = const Text(
    'Continue with Social Media',
    style: TextStyle(color: Colors.grey),
  );
  static Text facebookButton = const Text(
    'Facebook  ',
    style: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  );
  static Text githubButton = const Text(
    'Github',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}

class ButtonStyles {
  
  static ElevatedButton buttonLogin = ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      onPressed: () {},
      child: Padding(
          padding:
              const EdgeInsets.only(bottom: 15, top: 15, left: 40, right: 40),
          child: Styles.loginButton));
  
  static ElevatedButton buttonFacebook = ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      onPressed: () {},
      child: Padding(
          padding:
              const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
          child: Row(children: [
              Styles.facebookButton,
            
               const PngItems(name: 'facebook')
           
          ],)));
  
  static ElevatedButton buttonGithub = ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      onPressed: () {},
      child: Padding(
          padding:
              const EdgeInsets.only(bottom: 15, top: 15, left: 20, right: 20),
          child: Styles.githubButton));
}
class PngItems extends StatelessWidget {
  const PngItems({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20,width: 20,
      child: Image.asset('assets/png_logo/$name.png',fit:BoxFit.fill));
  }
}
class PngNames{
  final String facebookImgPath='facebook';
  final String githubImgPath='github-mark-white';
  
}