import 'package:flutter/material.dart';
import 'package:livetest7app/secondScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainActivity(),
    );
  }
}

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  myAlertMessage(message,context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Counter Alert"),
                content: Text(message),
                actions: [
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("OK")),
                ],
              )
          );
        }
    );
  }

  int countValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

        elevation: 6,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            Text("$countValue", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [

                  Flexible(

                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      child: IconButton(onPressed: () {
                        countValue++;
                        
                        if(countValue==5){
                          myAlertMessage("Counter Value is $countValue!", context);
                        }
                        else if(countValue ==  10){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen(countValue)));
                        }
                        setState(() {

                        });
                      }, icon: Icon(Icons.add)),
                      color: Colors.green,
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      child: IconButton(onPressed: () {
                        countValue--;

                        if(countValue==5){
                          myAlertMessage("Counter Value is $countValue!", context);
                        }
                        else if(countValue ==  10){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen(countValue)));
                        }
                        setState(() {

                        });
                      }, icon: Icon(Icons.remove)),
                      color: Colors.red,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}

