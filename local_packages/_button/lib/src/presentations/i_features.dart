import 'package:flutter/cupertino.dart';

abstract class ButtonPackageInterface {
  Widget primary({
    required VoidCallback onPressed,
    required String title,
    bool isActive,
    String? preIconUrl,
  });
  Widget secondary({
    required VoidCallback onPressed,
    required String title,
    String? preIconUrl,
    bool isActive,
  });
  Widget text({
    required VoidCallback onPressed,
    required String title,
    bool isActive,
    String? preIconUrl,
  });
}
