// import 'package:flutter/material.dart';

// class INRToDollar extends StatefulWidget {
//   const INRToDollar({super.key});

//   @override
//   State<INRToDollar> createState() => _INRToDollarState();
// }

// class _INRToDollarState extends State<INRToDollar> {
//   TextEditingController inrController =  TextEditingController();
//   double dollar = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Color.fromARGB(255, 73, 59, 157),
//         title: const Text('INR To Dollar Converter',
//         style: TextStyle(color: Colors.white,),
//       ),),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child:  Column(
//           children: [
//             TextField(
//               controller: inrController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Enter amount in INR',
//               ),
//             ),
//             SizedBox(height: 30,),
// ElevatedButton(ElevatedButton.styleFrom(backgroundColor: Colors.red),,
// onPressed: (){
//   setState(() {
//     dollar = double.parse(inrController.text)*0.012;
//   });
// }, child: const Text("convert"),
// ),
// Text("Dollar : "+dollar.toString()),

//         ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class INRToDollar extends StatefulWidget {
  const INRToDollar({Key? key}) : super(key: key);

  @override
  State<INRToDollar> createState() => _INRToDollarState();
}

class _INRToDollarState extends State<INRToDollar> {
  TextEditingController inrController = TextEditingController();
  double dollar = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 206, 222, 236),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'INR To Dollar Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [SizedBox(height: 20,),
            TextField(
              controller: inrController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter amount in INR',
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              onPressed: () {
                setState(() {
                  dollar = double.parse(inrController.text) * 0.012;
                });
              },
              child: const Text("Convert",style: TextStyle(color: Colors.amber),),
            ),
            SizedBox(height: 30,),
            Text("Dollar : " + dollar.toString(),style: TextStyle(fontSize: 20,
            fontStyle: FontStyle.italic
            ),),
          ],
        ),
      ),
    );
  }
}
