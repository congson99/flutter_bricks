[Tiếng Việt](./README_Vie.md)
| [English](./README.md)

# Tổng quan

<a href="https://github.com/congson99/bricks"><img src="https://github.com/congson99/bricks/blob/master/assets/icons/app_icon.png?raw=true" alt="Icon" width="120"></a>

Repo này là nơi tôi tổng hợp và chia sẻ các Flutter Packages mà tôi và nhóm của mình sáng tạo và phát triển. (Tôi gọi các packages này là "Brick" vì chúng giống như những viên gạch xây nên một dự án hoàn chỉnh)

Những có thể được sử dụng phổ biến sẽ được xuất bản trên pub.dev. Phần còn lại, với các chức năng cụ thể hơn, sẽ được chia sẻ trong repo này và bạn sẽ cần sao chép thủ công và thiết lập chúng trong dự án của mình để sử dụng. Tôi sẽ hướng dẫn chi tiết ngay bên dưới.

Cảm ơn bạn đã ghé thăm repo của tôi và tôi hy vọng bạn sẽ phản hồi hoặc đề xuất cho bất kỳ lỗi nào hoặc điều gì chưa tối ưu để chúng ta có thể cùng nhau cải thiện.

# Hướng dẫn sử dụng

**• Bước 1:** Tạo thư mục tên "bricks" hoặc bất cứ tên gì ở thư mục root của dự án tương tự source code này. (Đây là thư mục lưu trữ các packages tự phát triển của dự án)

**• Bước 2:** Sao chép packages mà bạn muốn dùng từ source code này và dán vào thư mục vừa tạo.

**• Bước 3:** Ở tệp [pubspec.yaml](./pubspec.yaml) của dự án, khai báo packages vừa thêm ngay dưới dòng "dependencies:". Tương tự ví dụ phía dưới đây:

```yaml
dependencies:
  _brick_name:
    path: bricks_path

  # Ví dụ:
  _avatar:
    path: bricks/_avatar
```

**• Bước 4:** Thêm đường dẫn cảu package vừa khai báo ở nơi bạn cần dùng và gọi nó để sử dụng. Tương tự ví dụ phía dưới đây:

```dart
import 'package:_avatar/_avatar.dart';

Widget avatarBrick() =>
    AvatarBrick.circle(
        networkPath:
        "https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
        size: 56);
```

# Bricks
Danh sách các Bricks (Packages) chúng tôi đang phát triển sẽ được liệt kê ở cuối [bản tài liệu Tiếng Anh](./README.md)
