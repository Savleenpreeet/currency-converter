import 'package:flutter/material.dart';

class DollarToINR extends StatefulWidget {
  const DollarToINR({super.key});

  @override
  State<DollarToINR> createState() => _DollarToINRState();
}

class _DollarToINRState extends State<DollarToINR> {
  TextEditingController dollarController =  TextEditingController();
  double inr = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 182, 217, 246),
      appBar: AppBar(backgroundColor: Colors.blueGrey,
        title: Text('Dollar To INR',style: TextStyle(color: Colors.white),),
    ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child:  Column(
          children: [SizedBox(height: 20,),
            TextField(
              controller: dollarController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter amount in Dollar',
                  
              ),
            ),
            SizedBox(height: 30,),
ElevatedButton(style: ElevatedButton.styleFrom(foregroundColor: Colors.amber,
backgroundColor: Colors.black
),onPressed: (){
  setState(() {
    inr = double.parse(dollarController.text)*83.51;
  });
}, child: const Text("convert"),
),
SizedBox(height: 30,),
Text("INR : "+inr.toString(),style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),

        ],
        ),
      ),
    );
  }
}