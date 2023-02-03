import 'package:flutter/material.dart';
import 'dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          const Center(
            child: Image(
              image: AssetImage('image/chef.gif'),
              width: 170.0,
              height: 190.0,
            ),
          ),
          Form(
              child: Theme(
            data: ThemeData(
                primaryColor: Colors.teal,
                inputDecorationTheme: const InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.teal, fontSize: 15.0))),
            child: Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(children: [
                TextField(
                  controller: controller1,
                  decoration: const InputDecoration(labelText: 'Enter "dice"'),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  controller: controller2,
                  decoration:
                      const InputDecoration(labelText: 'Enter password'),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ButtonTheme(
                    minWidth: 100.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orangeAccent),
                      ),
                      onPressed: () {
                        if (controller1.text == 'dice' &&
                            controller2.text == '1234') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Dice()));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              '로그인 정보를 확인하세요',
                              textAlign: TextAlign.center,
                            ),
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.blue,
                          ));
                        }
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ))
              ]),
            ),
          ))
        ]),
      ),
    );
  }
}
