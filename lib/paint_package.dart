library paint_package;

import 'package:flutter/material.dart';
import 'package:paint_package/view/drawing_canvas/models/drawing_mode.dart';
import 'package:paint_package/view/drawing_canvas/models/sketch.dart';

const Color kCanvasColor = Color(0xfff2f3f7);
SketchType mapSketchType(DrawingMode drawingMode) {
  switch (drawingMode) {
    case DrawingMode.eraser:
    case DrawingMode.pencil:
      return SketchType.scribble;
    case DrawingMode.line:
      return SketchType.line;
    case DrawingMode.square:
      return SketchType.square;
    case DrawingMode.circle:
      return SketchType.circle;
    case DrawingMode.polygon:
      return SketchType.polygon;
    default:
      return SketchType.scribble;
  }
}
