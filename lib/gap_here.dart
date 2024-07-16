import 'package:flutter/material.dart';

/// A widget that adds responsive spacing between its child and neighboring widgets.
///
/// The `GapHere` widget creates a space of a specified percentage of the screen size
/// between its child widget and its neighboring widgets. It automatically adjusts
/// the spacing direction based on the layout context in which it's used, making it
/// easy to add responsive spacing in both horizontal and vertical layouts.
class GapHere extends StatelessWidget {
  /// The percentage of the screen size to use as spacing.
  ///
  /// This value specifies the percentage (from 1 to 100) of the screen size to be
  /// used as spacing between the child widget and its neighboring widgets.
  final double percentage;

  /// Creates a GapHere widget.
  ///
  /// The [percentage] parameter specifies the percentage of the screen size to be
  /// used as spacing. Valid values range from 1 to 100.
  const GapHere(this.percentage, {super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the size of the screen
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate the actual size based on the percentage
    final double size = percentage / 100.0;

    // Check if the parent widget is a Row or Column
    final bool isRow = context.findAncestorWidgetOfExactType<Row>() != null;
    final bool isColumn =
        context.findAncestorWidgetOfExactType<Column>() != null;

    // Return a SizedBox with adjusted width or height based on the layout direction
    return SizedBox(
      width: isRow ? screenSize.width * size : null,
      height: isColumn ? screenSize.height * size : null,
    );
  }
}
