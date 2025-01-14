import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

import 'custom_theme.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? _image;
  String? _serverResponse;

  // open the phone's photo album so the user can select an image
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? _pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (_pickedFile != null) {
      setState(() {
        _image = File(_pickedFile.path);
      });
    }
  }

  // upload the picked image to our server
  Future<void> _uploadImage() async {
    final request = http.MultipartRequest(
      "POST",
      // Uri.parse("http://10.0.0.246:5000/upload"),
      // Uri.parse("https://rickwang577.pythonanywhere.com/upload"),
      Uri.parse("https://tylikespie.pythonanywhere.com/upload"),
    );

    request.files.add(
      await http.MultipartFile.fromPath(
        "image",
        _image!.path,
        filename: basename(_image!.path),
        // _image!.path = C:/Users/username/Downloads/image.jpg
        // basename(_image!.path) = image.jpg
      ),
    );

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      // decode the response from a json string into a flutter object
      final responseData = jsonDecode(response.body);
      print(responseData["prediction"]);
      setState(() {
        _serverResponse = responseData["prediction"][0];
      });

    } else {
      print("Failed to upload image");
      print(response.statusCode);
      print(response.body);
      setState(() {
        _serverResponse = "Failed to get prediction from server";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  print("image picker button pressed");
                  _pickImage();
                },
                child: (_image != null)
                  // ? Image.file(_image!)
                  ? Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        _image!.path,
                        fit: BoxFit.contain,
                      )
                    )
                  : CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).colorScheme.secondaryBackground,
                      child: Icon(Icons.add, color: Colors.white, size: 50),
                    ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondaryBackground,
                  hintText: 'Your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondaryBackground,
                  hintText: 'Your Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondaryBackground,
                  hintText: 'Your Position',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () {
                  print("upload button pressed");
                  if (_image != null) {
                    _uploadImage();
                  }
                },
                child: Text('Upload'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Skip for Now', style: TextStyle(color: Colors.grey)),
              ),

              SizedBox(height: 40),
              (_serverResponse == null)
                ? const Text(
                    "",
                    style: TextStyle(color: Colors.grey))
                : Text(
                    _serverResponse!,
                    style: TextStyle(color: Colors.grey)),


            ],
          ),
        )
      ),
    );
  }
}






















