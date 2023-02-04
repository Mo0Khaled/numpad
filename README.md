# Numpad

an numeric Keyboard Layout supports english and arabic digits

## Features

- Documented:** each property has a code documentation
- Languages:** supports English and Arabic Digits
- Flexibility:** smooth and flexible to modify anything

# Usage

| Parameter             |            Default             |                                                Description |
|-----------------------|:------------------------------:|-----------------------------------------------------------:|
| **onType**            |            required            |                             Callback when number pressed . |
| **mainAxisAlignment** | MainAxisAlignment.spaceBetween |                                   for spacing horizontal . |
| **padding**           |        horizontal = 30         |                            padding over the whole layout . |
| **leftWidget**        |              null              |                          the widget at the left of the 0 . |
| **rightWidget**       |              null              |                         the widget at the right of the 0 . |
| **highlightColor**    |       Color(0xFFC9C9C9)        |                               on Holding press any number. |
| **runSpace**          |               40               |                                         spacing vertical . |
| **numberStyle**       |              null              |                                        custom number style |
| **radius**            |               45               |                       radius for the shape of the number . |
| **arabicDigits**      |             false              |                       Displays arabic digits if equal true |
| **returnItAsEnglish** |             false              | it returns the digits as english even it's arabic digits . |

#### Example
```dart
 NumPad(
   arabicDigits: true,
   onType: (value) {
     number += value;
     setState(() {});
   },
   rightWidget: IconButton(
   icon: const Icon(Icons.backspace),
   onPressed: () {
   if (number.isNotEmpty) {
     number = number.substring(0, number.length - 1);
      setState(() {});
   }
   },
  ),
);
```

<img src="https://user-images.githubusercontent.com/55635328/216777871-0480f38b-b3a0-4c24-9b6e-1b119e17a3f2.png" width="400" height="600">

also you can find The sample code can be found under the `example` package.