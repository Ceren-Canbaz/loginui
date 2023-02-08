import 'package:flutter/material.dart';
class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        padding: const EdgeInsets.symmetric(vertical:30),
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.purple,Colors.teal
              ]
              )
        ) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const SizedBox(height: 40,),
             Padding(
              padding:const EdgeInsets.all(20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    'Login',
                    style:Styles.loginStyle),
                    const SizedBox(height: 10,),
                    Text('Welcome Back',style: Styles.loginInfo,),
                      const SizedBox(height: 20,)
                  
              ],),
              
              ),
              Expanded(
                
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
                  ),
                 
                  child:  Padding(
                    padding:const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                    const SizedBox(height:90,),
                    Container(
                        padding:const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          
                          boxShadow:const [BoxShadow(
                            color: Color.fromRGBO(50, 150, 150, 0.3),
                            blurRadius: 20,
                            offset: Offset(0,10)
                         
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color:Colors.grey))
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Email ',
                                hintStyle: TextStyle(color:Colors.grey),
                                border: InputBorder.none
                              ),
                              
                            ),
                            
                          ),
                                Container(
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color:Colors.grey))
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Password ',
                                hintStyle: TextStyle(color:Colors.grey),
                                border: InputBorder.none
                              ),
                              
                            ),
                            
                          ),
                          
                        ]),
                    ),
                    const SizedBox(height: 40,),
                    Styles.forgotPassword,
                    const SizedBox(height: 40,),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal:50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple
                      ),
                      child: Center(child: Styles.loginButton),
                     
                    ),
                      const SizedBox(height: 30,),
                      Styles.continueWith,
                      const SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                                
                              ),
                              child:Center( child:Styles.facebookButton),
                            ),
                            
                          ),
                          const SizedBox(width: 30,),
                           Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.deepPurple
                              ),
                              child: Center(child: Styles.githubButton),
                            ),
                            
                          )
                        ],
                      )
                  ]),),

                )
              )
        
        ]),
      
    )
    );
  }
}

class Styles{
  static TextStyle loginStyle=const TextStyle(
    fontSize: 40,
    color: Colors.white

  );
  static TextStyle loginInfo=const TextStyle(
      fontSize: 20,
      color: Colors.white
  );
  static Text forgotPassword=const Text('Forgot Password?',style: TextStyle(color: Colors.grey),);
  static Text loginButton=const Text('Login',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),);
  static Text continueWith=const Text('Continue with Social Media',style: TextStyle(color: Colors.grey),);
  static Text facebookButton=const Text('Facebook',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),);
  static Text githubButton=const Text('Github',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400,),);
}