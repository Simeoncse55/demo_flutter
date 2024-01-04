import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  
  @override
  Widget build(BuildContext context) {
    ScrollController sc = ScrollController();
    return MaterialApp(

      home: Scaffold(
        body: CustomScrollView(
          controller: sc,
          slivers: [

            SliverAppBar(

              expandedHeight: 250.0,
              pinned: true,
              title: Text('Tittle of the app bar'),
              flexibleSpace: SafeArea(
                child: FlexibleSpaceBar(

                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(

                        child: Text("Slivar App Bar" , style: TextStyle(color: Colors.white, fontSize: 30),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(

              [
                SizedBox(
                  height: 900,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      itemCount: 45,
                      itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60, width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300
                        ),
                      ),
                    );
                  }),
                )
              ]
            ))

          ],
        ),
      ),
    );
  }
}
