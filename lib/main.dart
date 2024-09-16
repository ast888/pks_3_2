import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ЭФБО-02-22',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 234)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 50,
          ),
          Center(
            child: Container(width: 300,
            child: const Center(child:
             Text("Авторизация", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
            ),
            ),
            ),
          ),

          const SizedBox(height: 100,
          ),

          const Padding(
            padding:  EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration( hintText: 'Логин',
                filled: true,
                fillColor: Color.fromARGB(255, 234, 234, 234),
                hintStyle: const TextStyle(color: Color.fromARGB(255, 106, 106, 106)),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),


          const Padding(
            padding:  EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration( hintText: 'Пароль',
                filled: true,
                fillColor: Color.fromARGB(255, 234, 234, 234),
                hintStyle: const TextStyle(color: Color.fromARGB(255, 106, 106, 106)),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: false, onChanged: (value){},),
                const Text("Запомнить меня", style: TextStyle(fontSize: 16),),
              ],
            ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(fontSize: 16,),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Войти'),
                ),
              ),
            ),
          ),
          
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(fontSize: 16,),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Регистрация'),
                ),
              ),
            ),
          ),

          TextButton(onPressed: (){}, 
          child: Text('Восстановить пароль', style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 158, 158, 158))))

        ],
      ),
    );
  }
}