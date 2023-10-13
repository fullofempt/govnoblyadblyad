import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STEAM',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const Center(
        child: MyHomePage(
          title: 'STEAM',
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/steamback.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 70),
                    child: const Text(
                      'Войти',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 55),
                    child: const Text(
                      "ВОЙТИ, ИСПОЛЬЗУЯ ИМЯ АККАУНТА",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 53, 53, 53),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    width: 400,
                    padding: const EdgeInsets.symmetric(
                        vertical: BorderSide.strokeAlignCenter),
                    margin: const EdgeInsets.symmetric(
                        vertical: BorderSide.strokeAlignCenter),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 265, top: 30),
                    child: const Text(
                      "ПАРОЛЬ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 206, 206, 206),
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 53, 53, 53),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    width: 400,
                    padding: const EdgeInsets.symmetric(
                        vertical: BorderSide.strokeAlignCenter),
                    margin: const EdgeInsets.symmetric(
                        vertical: BorderSide.strokeAlignCenter),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.check_box_outline_blank_sharp,
                          color: Color.fromARGB(255, 200, 200, 200),
                          size: 25,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text(
                              "Запомнить меня",
                              style: TextStyle(fontSize: 15),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 55,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 59, 137, 255),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    width: 400,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Войти',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      'Помогите, я не могу, помогите!',
                      style: TextStyle(
                        color: Color.fromARGB(255, 206, 206, 206),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: const Text(
                      'НОВОЕ!',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 53, 53, 53),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Показать QR-код',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
