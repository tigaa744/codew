import 'package:flutter/material.dart';
import 'package:code/mdm.dart';
class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    Text? error , hasMDM , nohasMDM;
    // initState(){
    //   FutureBuilder<bool>(
    //     future:hasMdm() ,
    //     builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return CircularProgressIndicator();
    //       }
    //       if (snapshot.hasError) {
    //         return error = Text('Error: ${snapshot.error}');
    //       }
    //       if (snapshot.data == true) {
    //         return hasMDM = Text('This Mac is managed by MDM.');
    //       } else {
    //         return nohasMDM = Text('This Mac is not managed by MDM.');
    //       }
    //     },
    //   );
    //
    // }

    return  Scaffold(

        appBar: AppBar(
          title: Text('MDM Checker'),
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
               Text( 'Erro :$error'),
             SizedBox(height: 10,),
                Text('Managed : $hasMDM'),
                SizedBox(height: 10,),
                Text('Not Managed : $nohasMDM'),
                SizedBox(height: 10,),

                MaterialButton(
                  color: Colors.blue,
                  child: Text("Click to check MDM"),
                  onPressed: () {
                  setState(() {
                    FutureBuilder<bool>(
                      future:hasMdm() ,
                      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        }
                        if (snapshot.hasError) {
                          return error = Text('Error: ${snapshot.error}');
                        }
                        if (snapshot.data == true) {
                          return hasMDM = Text('This Mac is managed by MDM.');
                        } else {
                          return nohasMDM = Text('This Mac is not managed by MDM.');
                        }
                      },
                    );

                  });
                },),
                SizedBox(height: 10,),
           //------------------------------------------------------------
            FutureBuilder<bool>(
              future:hasMdm() ,
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return error = Text('Error: ${snapshot.error}');
                }
                if (snapshot.data == true) {
                  return hasMDM = Text('This Mac is managed by MDM.');
                } else {
                  return nohasMDM = Text('This Mac is not managed by MDM.');
                }
              },
            ),

              ]
          ),
        ),
      );
  }

}