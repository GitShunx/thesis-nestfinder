import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/create_post.dart';
import 'package:thesis_nestfinder/storage_service.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: Container(
    //       color: Colors.black,
    //       //TODO: build content for the dashboard page
    //       child: Column(
    //         //crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: <Widget>[
    //           Padding(
    //             padding: const EdgeInsets.only(top: 30.0, bottom: 20),
    //             child: Row(
    //               //crossAxisAlignment: CrossAxisAlignment.stretch,
    //               children: <Widget>[
    //                 Container(
    //                   color: Colors.black,
    //                   height: 20,
    //                   width: 100,
    //                   child: const Text(
    //                     'Business',
    //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    //                   ),
    //                 ),
    //
    //               ],
    //             ),
    //           ),
    //           const Placeholder(
    //           ),
    //           const Placeholder(
    //           ),
    //           const Placeholder(
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   floatingActionButton: Container(
    //     padding: const EdgeInsets.only(
    //         bottom:
    //             25.0), //increase the space between bot-nav-bar and float-nav-bar
    //     child: FloatingActionButton(
    //       backgroundColor: Colors.green,
    //       child: Icon(Icons.add, size: 45, color: Colors.green[900]),
    //       onPressed: () async {
    //         final results = await FilePicker.platform.pickFiles(
    //             allowMultiple: false,
    //             type: FileType.custom,
    //             allowedExtensions: ['png', 'jpg']);
    //
    //         if (results == null) {
    //           ScaffoldMessenger.of(context).showSnackBar(
    //             const SnackBar(
    //               content: Text('No file selected.'),
    //             ),
    //           );
    //           return;
    //         }
    //         final path = results.files.single.path!;
    //         final fileName = results.files.single.name;
    //
    //         storage.uploadFile(path, fileName).then((value) => print('Done'));
    //       },
    //     ),
    //   ),
    // );
    //cut starts here if you want to undo it back
    return Scaffold(
      backgroundColor: Colors.black,
      //extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actionsIconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.green,
            //expandedHeight: 150,
            //backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            // flexibleSpace: FlexibleSpaceBar(
            //   background: Image.network(
            //     'https://source.unsplash.com/random?monochromatic+dark',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            title: const Text(
              'Business',
              style: TextStyle(color: Colors.white),
            ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add_circle_outline, size: 50, color: Colors.green[900]),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePost()),
          );
        },
        // onPressed: () async {
        //   final results = await FilePicker.platform.pickFiles(
        //       allowMultiple: false,
        //       type: FileType.custom,
        //       allowedExtensions: ['png', 'jpg']);
        //
        //   if (results == null) {
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       const SnackBar(
        //         content: Text('No file selected.'),
        //       ),
        //     );
        //     return;
        //   }
        //   final path = results.files.single.path!;
        //   final fileName = results.files.single.name;
        //
        //   storage.uploadFile(path, fileName).then((value) => print('Done'));
        // },
      ),
    );
    //cut ends from here if you want to undo it back
  }

  Widget buildView(context, storage) => SliverToBoxAdapter(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 16.0,
                left: 10.0,
                right:
                    10.0), //padding insets as define from the parent Scaffold widget
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
                ), //title-component 'Sponsored Ads'
                //TODO: FutureBuilder - to fetch display the data from FireStore Storage to mobile app display
                FutureBuilder(
                  future: storage
                      .downloadURL('photo-1611267254323-4db7b39c732c.jpg'),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
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
                        Icons.whatshot_sharp,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Text(
                        ' Trending Now',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), //layer name second
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
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
                      Icon(
                        Icons.thumb_up_alt_rounded,
                        color: Colors.green,
                        size: 18,
                      ),
                      Text(
                        ' Near You',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), //layer name third
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
                              ),
                              onTap: () {
                                print('Hello World!');
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                    )),
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
