import 'package:block_pratice/imports.dart';

extension PaddingExtension on Widget {
  // Creating the Extensions for widget the child must need to be assigned
  // if the child is missing it will show empty widget on the screen,
  // child must me assign to (this) key word so that it work fine

  //Padding Left
  Padding paddingLeft(double val) => Padding(
        padding: EdgeInsets.only(left: val),
        child: this,
      );

  //Padding Right
  Padding paddingRight(double val) => Padding(
        padding: EdgeInsets.only(right: val),
        child: this,
      );

  //Padding Bottom
  Padding paddingBottom(double val) => Padding(
        padding: EdgeInsets.only(bottom: val),
        child: this,
      );
//Padding Top
  Padding paddingTop(double val) => Padding(
        padding: EdgeInsets.only(top: val),
        child: this,
      );

  //Padding All Sides
  Padding paddingAll(double val) => Padding(
        padding: EdgeInsets.all(val),
        child: this,
      );

  // Padding only to Left and Right or Horizontal
  Padding paddingHorizontal(double val) => Padding(
        padding: EdgeInsets.symmetric(horizontal: val),
        child: this,
      );

  //Padding to Top and Bottom or Vertical
  Padding paddingVertical(double val) => Padding(
        padding: EdgeInsets.symmetric(vertical: val),
        child: this,
      );
}
