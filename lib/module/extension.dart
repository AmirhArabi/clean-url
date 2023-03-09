
import 'package:flutter/material.dart';
import 'package:clean_ui/module/widgets.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  void showForm(Widget child)=> Navigator.of(this).push(
      MaterialPageRoute(builder: (_)=> child)
  );
}


extension StringExtension on String {
  Widget toLabel({double? fontsize, Color? color, bool bold = false})=> Label(this, fontSize: fontsize, color: color, bold: bold);
}

extension WidgetExtension on Widget {
  Widget get vMargin3 => Container(margin: const EdgeInsets.symmetric(vertical: 3), child: this);
  Widget get vMargin6 => Container(margin: const EdgeInsets.symmetric(vertical: 6), child: this);
  Widget get vMargin10 => Container(margin: const EdgeInsets.symmetric(vertical: 10), child: this);
  Widget get vMargin70 => Container(padding:  const EdgeInsets.symmetric(vertical: 80), child: this);
  Widget get hMargin3 => Container(margin: const EdgeInsets.symmetric(horizontal: 3), child: this);
  Widget get hMargin6 => Container(margin: const EdgeInsets.symmetric(horizontal: 6), child: this);
  Widget get hMargin10 => Container(margin: const EdgeInsets.symmetric(horizontal: 10), child: this);
  Widget get margin3 => Container(margin: const EdgeInsets.all(3), child: this);
  Widget get margin6 => Container(margin: const EdgeInsets.all(6), child: this);
  Widget get margin10 => Container(margin: const EdgeInsets.all(50), child: this);

  Widget get vPadding3 => Container(padding: const EdgeInsets.symmetric(vertical: 3), child: this);
  Widget get vPadding6 => Container(padding: const EdgeInsets.symmetric(vertical: 6), child: this);
  Widget get vPadding15 => Container(padding:  const EdgeInsets.symmetric(vertical: 15), child: this);
  Widget get hPadding3 => Container(padding: const EdgeInsets.symmetric(horizontal: 3), child: this);
  Widget get hPadding6 => Container(padding: const EdgeInsets.symmetric(horizontal: 6), child: this);
  Widget get hPadding10 => Container(padding:  const EdgeInsets.symmetric(horizontal: 10), child: this);
  Widget get padding3 => Container(padding: const EdgeInsets.all(3), child: this);
  Widget get padding10 => Container(padding: const EdgeInsets.all(10), child: this);
  Widget get padding30 => Container(padding: const EdgeInsets.all(30), child: this);
  Widget get padding50 => Container(padding: const EdgeInsets.all(50), child: this);

  Widget get card => Card(child: this);
  Widget get center => Center(child: this);
  Widget get expand => Expanded(child: this);

}