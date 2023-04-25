import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

Future<void> Function() useImagePicker(
  ValueChanged<List<File>> onImageChanged, [
  ValueNotifier<bool>? isPicking,
  bool isMultiselect = false,
  Widget? titleWidget,
]) {
  final context = useContext();

  Future<File?> getImageFromDevice(ImageSource source) async {
    try {
      isPicking?.value = true;
      if (isMultiselect) {
        if (source == ImageSource.camera) {
          final pickedFile = await ImagePicker().pickImage(source: source);
          final imageFile = [File(pickedFile!.path)];
          onImageChanged.call(imageFile);
        } else {
          final pickedFiles = await ImagePicker().pickMultiImage(
            imageQuality: 20,
          );
          final imageFiles =
              pickedFiles.map((xFile) => File(xFile.path)).toList();
          onImageChanged.call(imageFiles);
        }
      } else {
        final pickedFile = await ImagePicker().pickImage(
          source: source,
          imageQuality: 20,
        );
        final imageFile = File(pickedFile!.path);
        onImageChanged.call([imageFile]);
      }
    } finally {
      isPicking?.value = false;
    }

    return null;
  }

  return () async =>
      openImagePickerDialog(context, getImageFromDevice, titleWidget);
}

Future<void> openImagePickerDialog(
  BuildContext context,
  Future<File?> Function(ImageSource source) getImageFromDevice,
  Widget? titleWidget,
) async {
  Future<File?> getImageFrom(ImageSource source) async {
    appRouter.goBack();

    return getImageFromDevice(source);
  }

  return appRouter.openBottomSheet(
    context: context,
    backgroundColor: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (titleWidget != null) titleWidget,
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: ImageSource.values.length,
            itemBuilder: (_, index) {
              final item = ImageSource.values[index];

              return ListTile(
                onTap: () => getImageFrom(item),
                title: Text(
                  item == ImageSource.camera ? 'camera' : 'gallery',
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}




Future<String?> useImageCrop(
  String? filePath,
) async {
  if (filePath == null) {
    return null;
  }
  const maxCroppedWidth = 359;
  const maxCroppedHeight = 190;
  const cropAspectRatioX = 359.0;
  const cropAspectRatioY = 150.0;

  final croppedPhoto = await ImageCropper().cropImage(
    sourcePath: filePath,
    maxWidth: maxCroppedWidth,
    maxHeight: maxCroppedHeight,
    aspectRatio: const CropAspectRatio(
      ratioX: cropAspectRatioX,
      ratioY: cropAspectRatioY,
    ),
    uiSettings: [
      AndroidUiSettings(toolbarTitle: 'title'),
      IOSUiSettings(title: 'title2'),
    ],
  );

  return croppedPhoto?.path;
}
