import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ScrollController sc  = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: sc,
        slivers: [

          SliverAppBar(
            backgroundColor: Colors.brown.shade900,
            expandedHeight: 400.0,
            pinned: true,
            title: Text('Tittle of the App Bar'),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade900,
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  // child: Image.asset("asset/ss.png",
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Sliver App Bar" ,style: TextStyle(color: Colors.white,fontSize: 50) ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverList(delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:50,
                    itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(6.0),
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.brown
                    ),
                  );
                }),
              )
            ]
          ))


        ],
      ),
    );
  }
}
