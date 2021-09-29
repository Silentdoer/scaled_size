# scaled_size

A Simple Responsive Design Approach for your Flutter Apps.

## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  scaled_size: ${latest-version}
  ...
```

## How to use (Initial Works to be done)

Add the following import to your Dart code:

```dart
import 'package:scaled_size/scaled_size.dart';
```

- First you need to Initialize the Helper Widget in your main.dart.

- Call ScaledSize() before using any widgets.

- That's all you're good to go. Just call the parameters, rest will be managed by the package.

```dart
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaledSize(
        builder: () {
            return MaterialApp(
                //Your code goes here
                ...
            );
        },
    );
  }
}
```

> Note: Whenever you use anything related to this package. Don't forget to import the package.

```dart
import 'package:scaled_size/scaled_size.dart';
```

## Designing size

By default designing size will be set to Size(360, 640). You can overwrite it by passing `size` in ScaledSize()

```dart
return ScaledSize(
    ...
    size: Size(480, 600), // For Example
    ...
);
```

## Key Params

- `.rh` - Responsive Height
- `.rw` - Responsive Width
- `.vh` - Height measured in percentage of screen height (As like in css)
- `.vw` - Height measured in percentage of screen width (As like in css)
- `.mv` - Maximum ViewPort size of the device
- `.rem` - Font Size (As like in css). Default base set to 16.0
- `.rfs` - Responsive font size
- `.br` - Radius for curved borders[border radius value]

## Other Params

- `ScaledSizeUtil.orientation` - Gives the orientation of the device.
- `ScaledSizeUtil.deviceType` - Gives the type as Mobile or Tablet.
- `ScaledSizeUtil.screenHeight` - Gives the height of the device.
- `ScaledSizeUtil.screenWidth` - Gives the width of the device.

> Supported deviceTypes = Mobile, Tablet, Web, Windows, Mac, Linux, Fuchsia

---

## Responsive Height and Width

Using `.rh` and `.rw`, let you to create adaptive widgets that suits on every device.

### Example

```dart
...
Container(
    // End result will be similar in every device
    height: 100.rh,
    width: 100.rw,
)
...
```

---

## ViewHeight and ViewWidth

By using `.vh` and `.vw`, you can refer to the size of the screen and create widgets that are certain % of the screen size.

### Example

```dart
...
Container(
    height: 20.vh, // 20% of the screen height
    width: 50.vw, // 50% of the screen width
)
...
```

---

## Max ViewPort

By using `.mv`, you can get the maximum viewport size of the device.
Internally `.mv` is `max(.vh, .vw)`

```dart
...
Container(
    height: 10.mv,
    // If 10.vh is greater than 10.vw,
    // then 10.mv is 10.vh else 10.mv is 10.vw
)
...
```

---

## Font Size

You can create scalable font sizes[scaledFontSize] using `.rfs` and by using `.rem` you can create font size as like in css.

### `.rfs`

`.rfs` will act as a scalable font size[scaledFontSize].

```dart
Text(
    "Your Text",
    style: TextStyle(
        fontSize: 24.rfs, // will scale according to the device
    ),
)
```

You can turn off scaling by setting `allowTextScaling` property in ScaledSize().

```dart
...
return ScaledSize(
    ...
    allowTextScaling: false,
    ...
);
```

### `.rem`

`.rem` will works as like in rem of css. By default the base size is set to 16.0 and can be overwritten.

```dart
Text(
    "Your Text",
    style: TextStyle(
        fontSize: 1.2.rem, // will scale according to base font size(16)
    ),
)
```

You can change the base size property in ScaledSize().

```dart
...
return ScaledSize(
    ...
    baseForREM: <your value>, // will be referrenced when you use rem.
    // If set to 32. 1.25.rem will return 40.
    ...
);
```

---

## `.br`

`.br` will used when you are giving rounded edges[border radius].

### Example

```dart
...
borderRadius: BorderRadius.circular(30.0.br),
...
```

---

## Issue / Feedback

If you have any suggestion or if something doesn't work, feel free to open a Github [issue](https://github.com/silentdoer/scaled_size/issues) to have further discussions.
