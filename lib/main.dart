import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisdoms Project',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
 const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Wisdoms'),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('the first widsom'),
            const SizedBox(height: 20,),
            Text('the first widsom'),
            const SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: (){

                },
              
                backgroundColor: Colors.amber,
                  child: const Icon(Icons.arrow_left, color: Colors.black,),
                
                ),
                const SizedBox(width: 20,),
                FloatingActionButton(onPressed: (){
                  
                },
                
                backgroundColor: Colors.amber,
                child: const Icon(Icons.arrow_right, color: Colors.black,),
                
                ),

              ],
            ),

          ],
        ),
    ));
  }
}
