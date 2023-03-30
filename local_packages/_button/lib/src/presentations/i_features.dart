import 'package:flutter/cupertino.dart';

abstract class ButtonPackageInterface {
  Widget primary({
    required VoidCallback onPressed,
    required String title,
    String? preIconUrl,
    String? afterIconUrl,
  });
  Widget secondary({
    required VoidCallback onPressed,
    required String title,
    String? preIconUrl,
    String? afterIconUrl,
  });
  Widget text({
    required VoidCallback onPressed,
    required String title,
    String? preIconUrl,
    String? afterIconUrl,
  });
}
