
import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/storage/storage_service.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //changed, feb 9 to try for another design
    // final Storage storage = Storage();
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   extendBodyBehindAppBar: true,
    //   appBar: PreferredSize(
    //     preferredSize: const Size.fromHeight(70.0),
    //     child: AppBar(
    //       leadingWidth: 90,
    //       toolbarHeight: 70,
    //       actionsIconTheme: const IconThemeData(color: Colors.white),
    //       backgroundColor: Colors.black,
    //       leading: IconButton(
    //         onPressed: () {},
    //         icon: Image.asset(
    //           'images/thelogo.png',
    //         ),
    //       ),
    //       actions: <Widget>[
    //         Row(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               width: 50,
    //               child: IconButton(
    //                 icon: const Icon(
    //                   Icons.search,
    //                 ),
    //                 iconSize: 30,
    //                 onPressed: () {},
    //               ),
    //             ),
    //             SizedBox(
    //               width: 50,
    //               child: IconButton(
    //                 icon: const Icon(
    //                   Icons.add_chart,
    //                 ),
    //                 iconSize: 30,
    //                 onPressed: () {},
    //               ),
    //             ),
    //             SizedBox(
    //               width: 50,
    //               child: IconButton(
    //                 icon: const Icon(
    //                   Icons.account_circle,
    //                 ),
    //                 iconSize: 30,
    //                 onPressed: () {},
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 10,
    //             ),
    //           ],
    //         ),//Appbar-Components
    //       ],
    //     ),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       color: Colors.black,
    //       child: Padding(
    //         padding: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),//padding insets as define from the parent Scaffold widget
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             SizedBox(
    //               height: 160,
    //               child: Card(
    //                 color: Colors.green[900],
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: const <Widget>[
    //                     ListTile(
    //                       //leading: Icon(Icons.home, size: 45,color: Colors.white,),
    //                       title: Text(
    //                         'MARKETPLACE',
    //                         style: TextStyle(
    //                             color: Colors.white,
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 22),
    //                       ),
    //                       subtitle: Text(
    //                         'NESTFINDER',
    //                         style: TextStyle(color: Colors.white, fontSize: 12),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(height: 20.0,), //space between the cardholder and the title
    //             SizedBox(
    //               height: 20,
    //               width: 300,
    //               child: Row(
    //                 children: const <Widget>[
    //                   Icon(
    //                     Icons.star,
    //                     color: Colors.red,
    //                     size: 18,
    //                   ),
    //                   Text(
    //                     ' Sponsored Ads',
    //                     style: TextStyle(
    //                         color: Colors.white, fontWeight: FontWeight.bold),
    //                   ),
    //                 ],
    //               ),
    //             ),//title-component 'Sponsored Ads'
    //             //TODO: FutureBuilder - to fetch display the data from FireStore Storage to mobile app display
    //             FutureBuilder(
    //
    //               future: storage.downloadURL('photo-1611267254323-4db7b39c732c.jpg'),
    //               builder:
    //                   (BuildContext context, AsyncSnapshot<String> snapshot) {
    //                 if (snapshot.connectionState == ConnectionState.done &&
    //                     snapshot.hasData) {
    //                   return Container(
    //                     margin: const EdgeInsets.symmetric(vertical: 8.0),
    //                     height: 160.0,
    //                     child: ListView(
    //                       scrollDirection: Axis.horizontal,
    //                       children: <Widget>[
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                       ],
    //                     ),
    //                   );
    //                 }
    //                 if (snapshot.connectionState == ConnectionState.waiting ||
    //                     !snapshot.hasData) {
    //                   return const CircularProgressIndicator();
    //                 }
    //                 return Container();
    //               },
    //             ),
    //             SizedBox(
    //               height: 20,
    //               width: 300,
    //               child: Row(
    //                 children: const <Widget>[
    //                   Icon(Icons.whatshot_sharp,color: Colors.yellow, size: 18,),
    //                   Text(
    //                     ' Trending Now',
    //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //                   ),
    //                 ],
    //               ),
    //             ),//layer name second
    //             FutureBuilder(
    //               future: storage.downloadURL('IMG_20220131_170646.jpg'),
    //               builder:
    //                   (BuildContext context, AsyncSnapshot<String> snapshot) {
    //                 if (snapshot.connectionState == ConnectionState.done &&
    //                     snapshot.hasData) {
    //                   return Container(
    //                     margin: const EdgeInsets.symmetric(vertical: 8.0),
    //                     height: 160.0,
    //                     child: ListView(
    //                       scrollDirection: Axis.horizontal,
    //                       children: <Widget>[
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                       ],
    //                     ),
    //                   );
    //                 }
    //                 if (snapshot.connectionState == ConnectionState.waiting ||
    //                     !snapshot.hasData) {
    //                   return const CircularProgressIndicator();
    //                 }
    //                 return Container();
    //               },
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             SizedBox(
    //               height: 20,
    //               width: 300,
    //               child: Row(
    //                 children: const <Widget>[
    //                   Icon(Icons.thumb_up_alt_rounded,color: Colors.green, size: 18,),
    //                   Text(
    //                     ' Near You',
    //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //                   ),
    //                 ],
    //               ),
    //             ),//layer name third
    //             FutureBuilder(
    //               future: storage.downloadURL('IMG_20220131_170646.jpg'),
    //               builder:
    //                   (BuildContext context, AsyncSnapshot<String> snapshot) {
    //                 if (snapshot.connectionState == ConnectionState.done &&
    //                     snapshot.hasData) {
    //                   return Container(
    //                     margin: const EdgeInsets.symmetric(vertical: 8.0),
    //                     height: 160.0,
    //                     child: ListView(
    //                       scrollDirection: Axis.horizontal,
    //                       children: <Widget>[
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                         const SizedBox(width: 10,),
    //                         GestureDetector(
    //                           child: Container(
    //                             width: 150,
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: const BorderRadius.only(
    //                                   topLeft: Radius.circular(15.0),
    //                                   topRight: Radius.circular(15.0),
    //                                   bottomLeft: Radius.circular(15.0),
    //                                   bottomRight: Radius.circular(15.0),
    //                                 ),
    //                                 image: DecorationImage(
    //                                   fit: BoxFit.fill,
    //                                   image: NetworkImage(
    //                                     snapshot.data!,
    //                                   ),
    //                                 )
    //                             ),
    //                           ),
    //                           onTap: () {print('Hello World!');},
    //                         ),
    //                       ],
    //                     ),
    //                   );
    //                 }
    //                 if (snapshot.connectionState == ConnectionState.waiting ||
    //                     !snapshot.hasData) {
    //                   return const CircularProgressIndicator();
    //                 }
    //                 return Container();
    //               },
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             // Center(
    //             //   child: SizedBox(
    //             //     child: TextButton(
    //             //       onPressed: _signOut,
    //             //       child: const Text(
    //             //         'Logout',
    //             //         style: TextStyle(color: Colors.white),
    //             //       ),
    //             //     ),
    //             //   ),
    //             // ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );//febfeb 9 ommit
    final Storage storage = Storage();
    return Scaffold(
      backgroundColor: Colors.black,
      //extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actionsIconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            title: const Text('Marketplace', style: TextStyle(color: Colors.white),),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                ),
                iconSize: 30,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.add_chart,
                ),
                iconSize: 30,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.account_circle,
                ),
                iconSize: 30,
                onPressed: () {},
              ),
              Container(
                color: Colors.green,
                width: 12,
              ),
            ],
          ),
          buildView(context, storage),
        ],
      ),
    );
  }


  Widget buildView(context, storage) =>
      SliverToBoxAdapter(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
            //padding insets as define from the parent Scaffold widget
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                SizedBox(
                  height: 20,
                  width: 300,
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 18,
                      ),
                      Text(
                        ' Sponsored Ads',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                //title-component 'Sponsored Ads'
                //TODO: FutureBuilder - to fetch display the data from FireStore Storage to mobile app display
                FutureBuilder(
                  future: storage.downloadURL(
                      'photo-1611267254323-4db7b39c732c.jpg'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        height: 160.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 300,
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.whatshot_sharp, color: Colors.yellow, size: 18,),
                      Text(
                        ' Trending Now',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                //layer name second
                FutureBuilder(
                  future: storage.downloadURL('IMG_20220131_170646.jpg'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        height: 160.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                  width: 300,
                  child: Row(
                    children: const <Widget>[
                      Icon(Icons.thumb_up_alt_rounded, color: Colors.green,
                        size: 18,),
                      Text(
                        ' Near You',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                //layer name third
                FutureBuilder(
                  future: storage.downloadURL('IMG_20220131_170646.jpg'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        height: 160.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {

                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                  future: storage.downloadURL('IMG_20220131_170646.jpg'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        height: 160.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                  future: storage.downloadURL('IMG_20220131_170646.jpg'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        height: 160.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                  future: storage.downloadURL('IMG_20220131_170646.jpg'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        height: 160.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snapshot.data!,
                                      ),
                                    )
                                ),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      );
}