# Flutter Bricks

<a href="https://github.com/congson99/bricks"><img src="https://github.com/congson99/bricks/blob/master/assets/logo.png?raw=true" alt="Icon" width="120"></a>

This repository is where I compile and share **Flutter Packages** that I conceive and develop. (I
refer to these packages as **"Brick"** because they are akin to the bricks that construct a complete
project :smile:)

Some of them will be published on [pub.dev](http://pub.dev/). Others, which need customization inside the package to be usable, will be shared in this repository, and you will need to manually copy and
set them up in your source code for usage. I have provided detailed instructions right below.

<br />

# Packages

| Packages                                                     | Description                                                                                                  | Type |                                              http://pub.dev/                                              | 
|:----------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------|:----:|:---------------------------------------------------------------------------------------------------------:|
| [avatar_brick](https://github.com/congson99/avatar_brick) | Avatar Brick is a custom avatar can automatically display your abbreviation name when no avatar is available |Widget| [![pub package](https://img.shields.io/badge/pub.dev-v0.2.0-blue)](https://pub.dev/packages/avatar_brick) |
<br />

# How to use local packages

### Step 1 
Create a directory named **"local_package"** or any name you prefer within the root directory of your project, similar to this source.(This directory will store all custom local packages for your project)

### Step 2
Copy the package you need from this source code and paste it into the **"local_package"** directory you just created in your own source code.

### Step 3
In [pubspec.yaml](./pubspec.yaml), declare the newly added package below "dependencies:" as shown in the following example:

```yaml
dependencies:
  package_name:
    path: package_path
    
  # Example:
  _avatar:
    path: local_package/_avatar
```

### Step 4
Import the path of that package where you want to use it and start utilizing it. as shown in the following example:

```dart
import 'package:_avatar/_avatar.dart';

Widget avatarBrick() =>
    AvatarBrick.network(
        src: "https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
        size: 56,
    );
```

<br />

# Thank you!

Thank you for using my **bricks**, and I hope you will provide feedback or suggestions for any areas where the package may not be optimal, so that we can collectively enhance them.

Contact me: [congson99vn@gmail.com](mailto:congson99vn@gmail.com) | [linkedin](https://www.linkedin.com/in/congson/) | [github](https://github.com/congson99)