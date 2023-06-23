[English](./README.md)
| [Tiếng Việt](./README_Vie.md)

# Overview

<a href="https://github.com/congson99/bricks"><img src="https://github.com/congson99/bricks/blob/son/refactor/assets/icons/app_icon.png" alt="Icon" width="120"></a>

Brick is a library that provides Packages for the Flutter Project.

# Usage

**• Step 1:** Create a folder named "bricks" in the root of the project like this source.

**• Step 2:** Copy the brick (package) you need from this source and paste it in your added "bricks"
folder.

**• Step 3:** In [pubspec.yaml](./pubspec.yaml), declare the newly added brick below "dependencies:"
as follows

```yaml
dependencies:
  _brick_name:
    path: bricks_path

  # Example:
  _avatar:
    path: bricks/_avatar
```

**• Step 4:** Import the newly added brick path and use

```dart

/// Example:

import 'package:_avatar/_avatar.dart';

Widget avatarBrick() =>
    AvatarBrick.circle(
        networkPath:
        "https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
        size: 56);
```

# Bricks

| Brick                            | Description                                           | Type     | Version | 
|:---------------------------------|:------------------------------------------------------|:---------|:--------|
| [Avatar](./bricks/_avatar)       | Custom Avatar Widget                                  | Widget   | 1.0     |
| [Button](./bricks/_button)       | Custom Button Widget                                  | Widget   | 1.0     |
| [Textfield](./bricks/_textfield) | Custom Textfield Widget                               | Widget   | 1.0     |

[//]: # (| [File]&#40;./bricks/_file&#41;           | Functions to help handle file                         | Function | beta    |)

[//]: # (| [Photo]&#40;./bricks/_file&#41;          | Functions to help handle photo from camera or gallery | Function | beta    |)