[Tiếng Việt](https://github.com/congson99/bricks/blob/son/refactor/README_Vie.md)
| [English](https://github.com/congson99/bricks/blob/son/refactor/README.md)

# Tổng quan

<a href="https://github.com/congson99/bricks"><img src="https://github.com/congson99/bricks/blob/son/refactor/assets/icons/app_icon.png" alt="Icon" width="120"></a>

Brick là thư viện cung cấp các package cho dự án Flutter.

# Hướng dẫn sử dụng

**• Bước 1:** Tạo thư mục tên "bricks" ở thư mục dự án (Tương tự source code này).

**• Bước 2:** Copy thư mục brick mà bạn muốn dùng từ source code này và paste vào thư mục "bricks"
mà bạn vừa tạo.

**• Bước 3:** Ở pubspec.yaml của thư mục dự án, khai báo brick vừa copy và paste vào phía dưới "
dependencies:" như sau:

```yaml
dependencies:
  _brick_name:
    path: bricks_path

  # Examples
  _avatar:
    path: bricks/_avatar
```

**• Bước 4:** Import brick vừa khai báo ở file bạn cần dùng và gọi nó để sử dụng.

Ví dụ:

```dart
import 'package:_avatar/_avatar.dart';

Widget avatarBrick() =>
    AvatarBrick.circle(
        networkPath:
        "https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
        size: 56);
```

# Danh sách Brick

[Xem ở cuối bản Tiếng Anh](https://github.com/congson99/bricks/blob/son/refactor/README.md)