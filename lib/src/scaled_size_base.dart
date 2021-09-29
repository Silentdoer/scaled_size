import 'package:flutter/material.dart';
import 'package:scaled_size/src/scaled_size_util.dart';

/// Helper Widget to initialize [ScaledSizeUtil]
class ScaledSize extends StatelessWidget {
  final Widget Function() builder;

  /// base size for calculating rem [ScaledSizeUtil.rem]
  final double baseForREM;

  /// [Size] of the device
  final Size size;

  /// Boolean to indicate text scaling
  final bool allowTextScaling;

  ScaledSize({
    required this.builder,
    this.size = ScaledSizeUtil.defaultSize,
    this.baseForREM = 16.0,
    this.allowTextScaling = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => OrientationBuilder(
        builder: (_, orientation) {
          if (constraints.maxWidth != 0) {
            ScaledSizeUtil().init(
              constraints,
              orientation,
              base: baseForREM,
              size: size,
              allowTextScaling: allowTextScaling,
            );
            return builder();
          }
          return Container();
        },
      ),
    );
  }
}
