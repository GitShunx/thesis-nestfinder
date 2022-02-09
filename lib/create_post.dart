import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/common_widgets/create_post_button.dart';
import 'package:thesis_nestfinder/common_widgets/custom_elevated_button.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Create Post'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  color: Colors.grey,
                  width: 300,
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('pressed');
                        },
                        child: Row(
                          children: [
                            CustomElevatedButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const <Widget>[
                                    Text('Upload Images ', style: TextStyle(color: Colors.white),),
                                    Icon(Icons.cloud_upload, color: Colors.white,),
                                  ],
                                ),
                                color: Colors.blue,
                                onPressed: () {},
                                borderColor: Colors.blue,
                                width: 170,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                child: Container(
                  color: Colors.grey,
                  width: 300,
                  height: 300,
                  child: const Center(child: Text('check')),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                child: Container(
                  color: Colors.grey,
                  width: 300,
                  height: 300,
                  child: const Center(child: Text('check')),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cancel_outlined, size: 50, color: Colors.green[900]),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
