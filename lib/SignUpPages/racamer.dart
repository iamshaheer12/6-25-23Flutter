import 'package:flutter/material.dart';
import 'package:camera/camera.dart';



class CameraScreen34 extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen34> {
  CameraController? controller;
  List<CameraDescription> cameras = [];

  @override
  void initState() {
    super.initState();
    // Initialize camera controller
    controller = CameraController(cameras[0], ResolutionPreset.high);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Dispose of the camera controller when not needed
    controller?.dispose();
    super.dispose();
  }

  void _captureImage() async {
 if (!controller!.value.isInitialized) {
      return;
    }

    try {
      // Capture image and save it to a file
      XFile imageFile = await controller!.takePicture();
      // Do something with the captured image file
      // e.g., display it, save it, or send it to an API
      print('Image captured: ${imageFile.path}');
    } catch (e) {
      print('Error capturing image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Container();
    }

    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(controller!), // Live camera view
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 150,
              height: 150,
decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                'Hi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: ElevatedButton(
            onPressed: _captureImage,
            child: Text('Capture'),
          ),
        ),
      ),
);
 }
}
