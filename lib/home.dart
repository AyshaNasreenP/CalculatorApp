import 'package:flutter/material.dart';
import 'BmiCalculator.dart';
import 'Calculator.dart';
import 'GstCalculator.dart';
import 'InterestCalculator.dart';
import 'NormalCalculator.dart';
import 'OddOrEven.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Align(
          alignment: Alignment.center,
          child: Text("Calculator",
            style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
                fontWeight: FontWeight.bold
            ),),
        ),
      ),
      body: Container(
          child: GridView.count(crossAxisCount: 2,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const calculator()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Align(
                      alignment: Alignment.center,
                      child: const Text("Simple Calculator",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                        ),
                      )),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bmicalc()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: Align(
                      alignment: Alignment.center,
                      child: const Text("BMI Calculator",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                        ),
                      )),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const intrest()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: Align(
                      alignment: Alignment.center,
                      child: const Text("Interest Calculator",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                        ),
                      )),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const gst()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: Align(
                      alignment: Alignment.center,
                      child: const Text("GST Calculator",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                        ),
                      )),
                ),
              ),
              ///commenting Extra code.
              ///one is odd or even other is calculator want to edit
              // GestureDetector(
              //   onTap: ()
              //   {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => const oddeven()),
              //     );
              //   },
              //   child: Container(
              //     padding: const EdgeInsets.all(8),
              //     color: Colors.teal[500],
              //     child: Align(
              //         alignment: Alignment.center,
              //         child: const Text("Odd or Even",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w500,
              //               fontSize: 15
              //           ),
              //         )),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: ()
              //   {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => const calculator2()),
              //     );
              //   },
              //   child: Container(
              //     padding: const EdgeInsets.all(8),
              //     color: Colors.teal[600],
              //     child: Align(
              //         alignment: Alignment.center,
              //         child: const Text("Normal Calculator",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w500,
              //               fontSize: 15
              //           ),
              //         )),
              //   ),
              // ),
            ],
          )
      ),
    );
  }
}
