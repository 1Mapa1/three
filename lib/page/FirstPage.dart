import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Padding (
          padding: const EdgeInsets.only(top: 30),
          child: Column(
          children: <Widget>[
            Container(
              height: sizeHeight / 4.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Expanded(
                      flex: 2,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Привет",
                          )
                      )
                  ),
                  Expanded(
                      flex: 2,
                      child: Container (
                        decoration: const BoxDecoration (
                            color: Color.fromARGB(255, 43, 85, 160),
                        )
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: sizeHeight / 7,
            ),
            Container(
              child: const Text(
                  "Анализы",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22
                  ),
                ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: const Text(
                "Экспресс сбор и получение проб",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16
                ),
              ),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10)
                    ),
                    onPressed: ()
                    {

                    },
                    child: const Text("Далее")
                )
              ],
            ),

            Container(
                alignment: Alignment.center,
                height: sizeHeight / 4.5,
                width: sizeWidth / 1.5,
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration (
                  color: Color.fromARGB(255, 43, 85, 160),
                )
            )
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}