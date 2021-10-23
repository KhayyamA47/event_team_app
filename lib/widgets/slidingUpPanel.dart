import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:sizer/sizer.dart';

class SlidingPanel extends StatelessWidget {
  final double maxHeight, minHeight;
  final bool isDraggable;
  final Widget widget;
  final PanelController panelController;
  final Function onClose;

  const SlidingPanel({Key key, this.maxHeight, this.minHeight, this.isDraggable, this.widget, this.panelController, this.onClose})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: panelController,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(2.w),topRight: Radius.circular(2.w)),
        maxHeight: maxHeight,
        minHeight: minHeight,
        onPanelClosed:  onClose,
        isDraggable: isDraggable,
        backdropColor: Colors.black,
        backdropEnabled: true,
        backdropOpacity: 0.7,
        backdropTapClosesPanel: true,
        panel: widget);
  }
}
