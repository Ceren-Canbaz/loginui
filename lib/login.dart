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
                 
                  child:  Padding(padding:const EdgeInsets.only(top: 40,left: 20,right: 20),
                  child: Column(children: <Widget>[
                    const SizedBox(height: 40,),
                    Container(
                        padding:const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          
                          boxShadow:const [BoxShadow(
                            color: Color.fromRGBO(50, 150, 150, 0.3),
                            blurRadius: 20,
                            offset: Offset(0,10)
                         
                          )]
                        ),
                        child: Column(children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10),
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
                            
                          )
                        ]),
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
}