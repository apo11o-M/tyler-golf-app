import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      Uri.parse("http://10.0.0.246:5000/upload"),
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
      setState(() {
        _serverResponse = "Failed to get prediction from server";
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a default UI/layout configuration used by flutter
    // sort of like the <div> element in html and web design

    // In flutter we have an "Image" element, and three ways to specify
    // the source of the image
    // 1. from the internet, using a URL
    // 2. from the "assets" folder, where the developer creates himself
    // 3. from the "gallery" of the device
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home Page"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (_image == null) ? (const Text("No image selected")) : (Image.file(_image!)),
              TextButton(
                  onPressed: _pickImage,
                  child: const Text("Select Image")
              ),
              TextButton(
                  onPressed: () {
                    print("upload image button pressed");
                    _uploadImage();
                  },
                  child: const Text("Upload Image")
              ),
              (_serverResponse == null) ? (const Text("No prediction yet")) : (Text(_serverResponse!)),
            ],
          )
      ),
      backgroundColor: Theme.of(context).canvasColor,
    );
  }
}

// if (condition) {
//   print(A)
// } else {
//   print(B)
// }

// ternary operator "?"
// (condition) ? print(A) : print(B)


// setState():
// The set state function tells our app to refresh the screen, that way our
// app will display the latest data.

// async and await
// def main():
//   print("program starts..")
//   selectImage()
//   async uploadImage()
//   print("program ended")
//   await print(server.response)
//




