import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Calculator UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator UI'),
      ),
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
      
      child: SingleChildScrollView(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              
              mainAxisAlignment: MainAxisAlignment.end,  
              children: [
                
                Padding(
                
                    padding: EdgeInsets.all(10.0),
                    
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 100,),
                    ),
                  ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('AC', Colors.grey, Colors.black),
                  calcbutton('+/-', Colors.grey, Colors.black),
                  calcbutton('%', Colors.grey, Colors.black),
                  calcbutton('/', Colors.amber, Colors.white),],
            ),
            SizedBox(
                height: 20,
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('7', Colors.grey.shade800, Colors.white),
                  calcbutton('8', Colors.grey.shade800, Colors.white),
                  calcbutton('9', Colors.grey.shade800, Colors.white),
                  calcbutton('x', Colors.amber.shade700, Colors.white),],
              ),
              SizedBox(
                height: 20,
                
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('4', Colors.grey.shade800, Colors.white),
                  calcbutton('5', Colors.grey.shade800, Colors.white),
                  calcbutton('6', Colors.grey.shade800, Colors.white),
                  calcbutton('-', Colors.amber.shade700, Colors.white),],
              ),
             SizedBox(
              height: 20,
             ) ,
             Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('1', Colors.grey.shade800, Colors.white),
                  calcbutton('2', Colors.grey.shade800, Colors.white),
                  calcbutton('3', Colors.grey.shade800, Colors.white),
                  calcbutton('+', Colors.amber.shade700, Colors.white),],
              ),
             SizedBox(
              height: 20,
             ) ,

             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              ElevatedButton( 
                
                onPressed: (){},
                
                child: Text('0',style: TextStyle(fontSize: 35,color: Colors.black),),
                
                ),
                calcbutton('.', Colors.grey.shade800, Colors.white),
                  calcbutton('=', Colors.amber.shade700, Colors.white),
             ],)
             
          ],
        ),
      ),),

    );
  }
}
