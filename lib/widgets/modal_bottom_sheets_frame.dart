import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ModalBottomSheetsFrame extends HookWidget {
  const ModalBottomSheetsFrame({
    required this.child,
    required this.withTop,
    required this.enableDrag,
    required this.top,
    this.color = Colors.blueGrey,
    this.height,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool withTop;
  final bool enableDrag;
  final Widget? top;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final formKey = useState(GlobalKey());
    final formHeight = useState(64.0);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final renderBox =
              formKey.value.currentContext?.findRenderObject() as RenderBox;
          final size = renderBox.size;
          formHeight.value = size.height;
        });

        return null;
      },
      [],
    );

    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              key: formKey.value,
              padding: withTop
                  ? const EdgeInsets.only(top: 50)
                  : const EdgeInsets.all(0),
              child: child,
            ),
            if (withTop)
              Container(
                constraints: const BoxConstraints(maxHeight: 50),
                // child: top ?? const DefaultDecorator(),
              ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 16,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
