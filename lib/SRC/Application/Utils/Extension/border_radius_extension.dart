import 'package:block_pratice/imports.dart';

extension BorderRadiusExtension on Widget {
  static BorderRadius radiusTopLeft(double val) => BorderRadius.only(
        topLeft: Radius.circular(val),
      );
  static BorderRadius radiusTopRight(double val, Color? color) =>
      BorderRadius.only(topRight: Radius.circular(val));
  static BorderRadius radiusBottomRight(double val) =>
      BorderRadius.only(bottomRight: Radius.circular(val));
  static BorderRadius radiusBottomLeft(double val) =>
      BorderRadius.only(bottomLeft: Radius.circular(val));
  static BorderRadius radiusAll(double val) =>
      BorderRadius.all(Radius.circular(val));

  ///usage
  ///decoration: BoxDecoration(
  ///borderRadius: BorderRadiusExtension.radiusAll(20),
  ///border: Border.all(color: Colors.black)),
}

///Or we can define it like this

extension BorderRadiusExt on num {
  BorderRadius get topLeftCircular =>
      BorderRadius.only(topLeft: Radius.circular(toDouble()));
  BorderRadius get radiusAllCircular =>
      BorderRadius.all(Radius.circular(toDouble()));

  ///usage
  ///decoration: BoxDecoration(
  ///borderRadius: 20.topLeftCircular,
  ///border: Border.all(color: Colors.black)),
}
