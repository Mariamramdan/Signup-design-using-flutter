import 'package:flutter/material.dart';
import 'homeScreen1.dart';
final _formKey = GlobalKey<FormState>();

class SecondScreen extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller = TextEditingController();
  SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 550,
          width: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft : Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage("assets/8.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 0, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                    child: ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen[200],
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        elevation: 1, //elevation of button
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90)
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: const Icon(Icons.arrow_back_ios,size: 30, color: Colors.white,),

                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Row(
                  children: [
                    Text("Welcome Back",style: TextStyle(
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    const Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(Icons.waving_hand_rounded),
                    ),

                  ],
                ),

              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 290,
                        child:
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))  {
                              return "Enter Correct Email Address";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold
                            ),
                            suffixIcon: const Icon(Icons.person,color: Colors.grey,),
                            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.5,
                              ))
                          ),
                          controller: controller1,
                          onFieldSubmitted: (value) {
                            controller1.clear();
                          },

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 290,
                        child:
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty || !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold
                            ),
                            suffixIcon: const Icon(Icons.lock,color: Colors.grey,),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.5,
                              ),
                            )
                          ),
                          controller: controller,
                          onFieldSubmitted: (value) {
                            controller.clear();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: Text("forget Password ?",style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Logged in successfully')),
                          );
                        }
                      },
                      child: const Text("Log in"),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
