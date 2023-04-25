import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/hooks/image_picker_hook.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProfilePicture extends HookWidget {
  const ProfilePicture({
    this.onImageChanged,
    this.image,
    this.radius = 50,
    this.buttonIcon,
    this.backgroundColor = Colors.black,
    this.isOnline = false,
    this.selectFile,
    this.isSchoolLogo = false,
    Key? key,
  }) : super(key: key);

  final ValueChanged<File>? onImageChanged;
  final String? image;
  final double radius;
  final String? buttonIcon;
  final Color backgroundColor;
  final bool isOnline;
  final File? selectFile;
  final bool isSchoolLogo;

  @override
  Widget build(BuildContext context) {
    final isPicking = useState(false);
    final selectedImage =
        useState<Image?>(selectFile == null ? null : Image.file(selectFile!));

    final openImagePickerDialog = useImagePicker(
      (imageFiles) {
        if (imageFiles.isEmpty) {
          return;
        }
        selectedImage.value = Image.file(imageFiles.first);
        onImageChanged?.call(imageFiles.first);
      },
      isPicking,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        isSchoolLogo && image == null
            ? SizedBox.square(dimension: radius * 2)
            : SizedBox.square(
                dimension: radius * 2,
                child: selectedImage.value == null
                    ? const CircleAvatar(
                        radius: 70,
                        child: Text('Photo'),
                      )
                    : CircleAvatar(
                        backgroundImage: selectedImage.value!.image,
                        maxRadius: radius,
                        backgroundColor: backgroundColor,
                      ),
              ),
        if (onImageChanged != null)
          Positioned(
            right: 0,
            bottom: 0,
            child: TakePictureButton(
              onTakePicture: openImagePickerDialog,
              buttonIcon: buttonIcon,
            ),
          ),
      ],
    );
  }
}

class TakePictureButton extends HookWidget {
  const TakePictureButton({
    required this.onTakePicture,
    this.buttonIcon,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTakePicture;
  final String? buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: RawMaterialButton(
        onPressed: onTakePicture,
        elevation: 2,
        shape: const CircleBorder(),
        child: const Icon(Icons.photo),
      ),
    );
  }
}
