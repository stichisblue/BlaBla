import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  final int value;
  final int parts;
  const ProgressWidget({
    Key? key,
    required this.value,
    required this.parts,
  }) : super(key: key);

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      lowerBound: 1,
      upperBound: 3,
      duration: const Duration(milliseconds: 1000),
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.animateTo(widget.value.toDouble());
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 45,
          width: 45,
          child: CircularProgressIndicator(
            valueColor: const AlwaysStoppedAnimation<Color>(kDarkBlue),
            strokeWidth: 3,
            value: controller.value / 3,
            backgroundColor: kGrey,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${widget.value}',
              style: const TextStyle(
                color: kDarkBlue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '/${widget.parts}',
              style: TextStyle(
                color: widget.value == widget.parts ? kDarkBlue : kGrey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ],
    );
  }
}
