import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/app/5_business_page/5.1_create_post/create_post_form.dart';
import 'package:thesis_nestfinder/common_widgets/custom_elevated_button.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  void _navPopOf(context) {
    Navigator.of(context).pop();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    bool showFab = MediaQuery.of(context).viewInsets.bottom != 0;

    ///this function makes the FAB hidden/visible whenever the keyboard pops up
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),

      ///this tap will hides the keyboard whenever the users taps on any field
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('NESTFINDER'),
                  content: const Text(
                    'Pressing OK, means exiting from creating a Post.',
                    textAlign: TextAlign.justify,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => _navPopOf(context),
                      child: const Text('Ok'),
                    ),
                  ],
                );
              },
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text('Create Post'),
        ),
        body: const BuildBody(),
        floatingActionButton: Visibility(
          visible: !showFab,
          child: buildFloatingActionButton(context),
        ),
      ),
    );
  }

  //extract method of the floating action button
  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.cancel_outlined, size: 50, color: Colors.green[900]),
      backgroundColor: Colors.green,
      onPressed: () => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('NESTFINDER'),
            content: const Text(
              'Pressing OK, means exiting from creating a Post.',
              textAlign: TextAlign.justify,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => _navPopOf(context),
                child: const Text('Ok'),
              ),
            ],
          );
        },
      ),
    );
  }
}

//extracted class build that extends statefull widget
class BuildBody extends StatefulWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

        ///this too will hides the keyboard whenever the screen is drag both upward and downward.
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      width: 150,
                      height: 30,
                      color: Colors.grey,
                      borderColor: Colors.grey,
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles(
                          allowMultiple: true,
                          type: FileType.custom,
                          allowedExtensions: ['png', 'jpg'],
                        );
                        if (result == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('No File Selected.'),
                            ),
                          );
                          if (result == null) {
                            _incrementCounter();
                          }
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          ),
                          Text(
                            'Add Photos',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Photos: '),
                    Text('$_counter/10'),
                  ],
                ),
              ),
              Card(
                color: Colors.indigo,
                child: CreatePostForm(),
              ),
              const SizedBox(
                height: 22.0,
              ),
              CustomElevatedButton(
                width: 150,
                height: 50,
                color: Colors.green,
                borderColor: Colors.green,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(
                      Icons.cloud_upload,
                      color: Colors.white,
                    ),
                    Text(
                      'Submit Post',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
