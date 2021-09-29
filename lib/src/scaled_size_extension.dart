import 'package:scaled_size/src/scaled_size_util.dart';

extension ScaledSizeExtension on num {
  /// Responsive height(scaled height by 640) [ScaledSizeUtil.height]
  double get rh => ScaledSizeUtil.height(this);

  /// Responsive width(scale widht by 360) [ScaledSizeUtil.width]
  double get rw => ScaledSizeUtil.width(this);

  /// Responsive font size [ScaledSizeUtil.scaledFontSize]
  double get rfs => ScaledSizeUtil.scaledFontSize(this);

  /// Border radius for rounded corners [ScaledSizeUtil.radius]
  double get br => ScaledSizeUtil.radius(this);

  /// Height referenced from device's height [ScaledSizeUtil.viewHeight]
  double get vh => ScaledSizeUtil.viewHeight(this);

  /// Width referenced from device's width [ScaledSizeUtil.viewWidth]
  double get vw => ScaledSizeUtil.viewWidth(this);

  /// Max ViewPort value of the device [ScaledSizeUtil.maxViewPort]
  double get mv => ScaledSizeUtil.maxViewPort(this);

  /// Font size using rem(default font size is 16) [ScaledSizeUtil.rem]
  double get rem => ScaledSizeUtil.rem(this);
}
