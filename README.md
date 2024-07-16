# Gap Here 👉🏻 For Responsive Spacing

![Version Badge](https://img.shields.io/pub/v/gap_here?color=green)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![GitHub repo](https://img.shields.io/badge/GitHub-purple?logo=github)](https://github.com/Ruban-07/gap_here)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/ruban-raghavendar-k/)
[![Gmail](https://img.shields.io/badge/Gmail-Send%20Email-red?style=flat-square&logo=gmail)](mailto:rubanraghavendar@gmail.com)

[![Android](https://img.shields.io/badge/Android-Supported-brightgreen)](https://developer.android.com/)
[![iOS](https://img.shields.io/badge/iOS-Supported-brightgreen)](https://developer.apple.com/ios/)

A Flutter package for add spacing between widgets in row and column layouts, promoting responsive design practices.

This package simplifies the process of creating spacing between widgets in Flutter apps.

## Features ⭐

- Easily add spacing between widgets in both horizontal (row) and vertical (column) layouts.

- Automatically adjust spacing direction based on the layout context.

- Utilizes MediaQuery to provide percentage-based spacing, making it easy for users to specify spacing relative to the screen size. By default, the package uses MediaQuery to calculate spacing based on percentages, so users only need to provide a value like 10 (for 10%) or 50 (for 50%), eliminating the need for manual pixel calculations.

## Screenshots 📸

<div>
  <img src="https://ruban-07.github.io/gap_here/assets/images/samp1.jpg" width="300" />
  <img src="https://ruban-07.github.io/gap_here/assets/images/samp2.jpg" width="300" />
  <img src="https://ruban-07.github.io/gap_here/assets/images/samp3.jpg" width="300" />
</div>

## Installation 📦

To use this package, add `gap_here` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  gap_here: ^1.0.0
```

Then, import the package into your Dart code:

```dart
import 'package:gap_here/gap_here.dart';
```

## Usage 🛠️

Wrap your widgets with `GapHere` and specify the desired spacing percent number as a percentage of the screen size.

```dart
Column(
  children: [
    Container(color: Colors.blue, width: 100, height: 100),
    GapHere(10), // Adding vertical spacing of 10% of screen height
    Container(color: Colors.green, width: 100, height: 100),
  ],
)
```

```dart
Row(
  children: [
    Container(color: Colors.blue, width: 100, height: 100),
    GapHere(20), // Adding horizontal spacing of 20% of screen width
    Container(color: Colors.green, width: 100, height: 100),
  ],
)
```

## Example 🫣

Here's a simple example that shows how to use the `GapHere` widget:

```dart
import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('GapHere Example'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                const GapHere(20), // Adding vertical spacing of 20% of screen height
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      );
}
```

## Properties Usage ⚙️

`percentage` Specifies the percentage of the spacing to be added between widgets. The value should be provided as a percent numbers representing a percentage of the screen size.

By default, the package internally uses MediaQuery to calculate spacing based on percentages, ensuring consistency across different screen sizes and resolutions.

## Support 🤝🏻

- Android: Supported on SDK 16 and above.
- iOS: Supported on iOS 11.0 and above.
- Linux: Any Linux distribution.
- macOS: Supported on macOS 10.14 and above.
- Web: Supported on all web browsers.
- Windows: Supported on all Windows versions.

---
