import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import '../widgets/new_service_application_screen/details_photo/detector_view.dart';

class NewServiceApplicationDetailsPhotoScreen extends StatefulWidget {
  const NewServiceApplicationDetailsPhotoScreen({super.key});

  @override
  State<NewServiceApplicationDetailsPhotoScreen> createState() =>
      _NewServiceApplicationDetailsPhotoScreenState();
}

class _NewServiceApplicationDetailsPhotoScreenState
    extends State<NewServiceApplicationDetailsPhotoScreen> {
  final FaceDetector _faceDetector = FaceDetector(
    options: FaceDetectorOptions(
        enableContours: true,
        enableLandmarks: true,
        enableClassification: true),
  );
  bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;
  var _cameraLensDirection = CameraLensDirection.front;
  String _message = "Position your face in the frame";

  @override
  void dispose() {
    _canProcess = false;
    _faceDetector.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DetectorView(
      title: 'Face Detector',
      customPaint: _customPaint,
      text: _text,
      onImage: _processImage,
      initialCameraLensDirection: _cameraLensDirection,
      onCameraLensDirectionChanged: (value) => _cameraLensDirection = value,
      message: _message,
    );
  }

  Future<void> _processImage(InputImage inputImage, CameraImage? image) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {
      _text = '';
    });
    final faces = await _faceDetector.processImage(inputImage);
    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      if (faces.isEmpty) {
        setState(() {
          _message = "No face detected";
        });
      } else if (faces.length > 1) {
        setState(() {
          _message = "Multiple faces detected";
        });
      } else {
        final face = faces[0];
        // Calculate proximity based on face size relative to frame
        final double faceSize = face.boundingBox.width / image!.width;
        final bool isCorrectDistance = faceSize > 0.4 && faceSize < 0.6;

        // Check if eyes are open (if probability is available)
        final bool eyesOpen = face.leftEyeOpenProbability != null &&
            face.rightEyeOpenProbability != null &&
            face.leftEyeOpenProbability! > 0.5 &&
            face.rightEyeOpenProbability! > 0.5;

        if (!isCorrectDistance) {
          _message = faceSize < 0.4
              ? "Move closer to the camera"
              : "Move farther from the camera";
        } else if (!eyesOpen) {
          _message = "Please keep your eyes open";
        } else if (face.headEulerAngleY! > 10 || face.headEulerAngleY! < -10) {
          _message = "Please look straight at the camera";
        } else {
          _message = "Perfect! Face verified";
        }
      }
    } else {
      String text = 'Faces found: ${faces.length}\n\n';
      for (final face in faces) {
        text += 'face: ${face.boundingBox}\n\n';
      }
      _text = text;
      // TODO: set _customPaint to draw boundingRect on top of image
      _customPaint = null;
    }
    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }
}
