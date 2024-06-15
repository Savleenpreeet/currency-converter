
import 'package:flutter/material.dart';
import 'package:my_app/dollar_to_inr.dart';
import 'package:my_app/inr_to_dollar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: CurrencyConverter(),
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Currency Converter'),
        backgroundColor: Colors.blue,
        
      ),

      body: Center(
      
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
             SizedBox(height: 60,),
          
            Container(height: 150,width: 250, decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 151, 184),borderRadius: BorderRadius.circular(7)),
              child: Column(
                children: [SizedBox(height: 50,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DollarToINR()));
                      
                    
                  }, child: Text('Dollar To INR'),
                  ),
          
            
            // const SizedBox(height: 30,),
            // ElevatedButton(onPressed: (){
            //    Navigator.of(context).push(MaterialPageRoute(builder: (context) => INRToDollar()));
                
            // }, child: Text('INR To Dollar',
            // ),
            // ),
          ]),
            ),


             SizedBox(height: 60,),
          
            Container(height: 150,width: 250, decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 151, 184),borderRadius: BorderRadius.circular(7)),
              child: Column(
                children: [SizedBox(height: 50,),
                  ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => INRToDollar()));
                
            }, child: Text('INR To Dollar',
            ),
            ),
          ],
        ),
        ),
        ])
      ),
    );
  }
}