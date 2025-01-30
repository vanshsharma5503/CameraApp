# CameraApp
# Overview

This project is a simple camera application built using SwiftUI and AVFoundation. It allows users to take a photo, review it, and either save or retake the picture. The app supports both landscape and portrait orientations.

# Features

- Full-screen camera view using AVCaptureSession.

- Capture and preview photos.

- Retake or use the captured photo.

- Smooth UI with SwiftUI animations.

- Orientation-based control bar layout.

- Flash toggle support.

- Front and back camera switching.

- Photo saving to the gallery.

# Files & Components

1. CameraViewModel.swift

- Manages the camera session and photo capture.

- Handles user permissions for the camera.

- Processes captured images and updates state accordingly.

- Supports flash control and camera switching.

- Saves photos to the gallery.

2. CameraPreview.swift

- A UIViewRepresentable component to integrate AVCaptureVideoPreviewLayer with SwiftUI.

- Updates preview layer orientation based on device rotation.

3. ControlButtonView.swift

- A reusable button component for UI controls (capture, cancel, retake, etc.).

- Includes buttons for flash toggle and camera switching.

4. CameraView.swift

- The main camera interface.

- Displays the camera preview and control buttons.

- Adjusts button layout dynamically based on device orientation.

- Integrates new flash toggle and camera switch buttons.

5. ContentView.swift

- The main entry point of the app.

- Displays a preview of the captured image.

- Allows users to open the camera interface.

6. UIDeviceOrientation+Extensions.swift

- Converts device orientation to video rotation angles and UIImage orientations.

# How It Works

1. User taps the "Take Photo" button.

2. The camera interface opens in full-screen.

3. User taps the capture button to take a photo.

4. After capturing:

     - User can use the photo.

     - Or retake the photo if needed.

5. If the photo is accepted, it appears in the ContentView.

6. User can toggle flash, switch cameras, and save photos to the gallery.

# Dependencies

- SwiftUI for UI development.

- AVFoundation for camera functionality.

# How to Run

1. Open the project in Xcode.

2. Run the app on a real iOS device (Camera access is required).

3. Grant camera permissions when prompted.

4. Start capturing photos!etake the picture
