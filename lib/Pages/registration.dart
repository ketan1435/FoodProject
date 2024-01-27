import 'package:flutter/material.dart';
class ResistrationScreen extends StatefulWidget {
  const ResistrationScreen({super.key});

  @override
  State<ResistrationScreen> createState() => _FormExampleState();
}

class _FormExampleState extends State<ResistrationScreen> {

  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffa18cd1  ),
                  Color(0xfffbc2eb ),
                ])
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
              ),
              Column(
                children: [
                  Text("New here? Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
                      child: Container(
                        height: screenSize.height * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Form(
                          key: _key,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 35,left: 15,right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Enter your Name ',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.purple,
                                            width: 2,
                                            style: BorderStyle.solid
                                        )
                                    ),
                                  ),
                                  validator:(value){
                                    if(value!.isEmpty){
                                      return "please Enter your Name";
                                    }

                                    else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter your Email ',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.purple,
                                            width: 2,
                                            style: BorderStyle.solid
                                        )
                                    ),
                                  ),
                                  validator:(value){
                                    if(value!.isEmpty){
                                      return "please Enter your Email address";
                                    }
                                    else if(!isValidEmail(value))
                                    {
                                      return "please Enter valid Email";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your Password ',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.purple,
                                            width: 2,
                                            style: BorderStyle.solid
                                        )
                                    ),
                                  ),
                                  validator:(value){
                                    if(value!.isEmpty){
                                      return "please Enter your Password";
                                    }
                                    else if(!isValidPassword(value)){
                                      return "please Enter Valid Password";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              ElevatedButton(
                                  onPressed: (){
                                    if(_key.currentState!.validate()){
                                      showDialog(context: context,
                                          builder: (BuildContext context){
                                            return  Center(
                                              child: Container(
                                                height: 300,
                                                width: 300,
                                                child: AlertDialog(
                                                  title: Center(child: Text('Login Succesful',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                                  content: Center(
                                                    child: Container(
                                                        height: 70,
                                                        width: 70,
                                                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXkKUY4ViRoLQjaWqfmJnRnEmIBlznXdda9Q&usqp=CAU")),
                                                  ),
                                                  actions: [
                                                    Center(
                                                      child: TextButton(onPressed: (){
                                                        Navigator.of(context).pop();
                                                      },
                                                          child: Text("ok",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                                    )
                                                  ],

                                                ),
                                              ),
                                            );
                                          }
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.purple.shade100,
                                      shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(8)
                                      )

                                  ),
                                  child: Text("Sign Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)),
                              SizedBox(
                                height: 25,
                              ),
                              Text("hjkh")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  bool isValidEmail(String email) {
    final emailRegex =
    RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }
  bool isValidPassword(String password){
    final passwordRegex =
    RegExp(r'^12345');
    return passwordRegex.hasMatch(password);
  }
}
