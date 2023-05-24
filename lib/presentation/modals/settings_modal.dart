import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/feuters/user/actions/change_photo_action.dart';
import 'package:flutter_application_1/presentation/hooks/dispatcher_hook.dart';
import 'package:flutter_application_1/presentation/hooks/image_picker_hook.dart';
import 'package:flutter_application_1/presentation/login_page.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_application_1/theme/theme_provider.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingsModal extends HookWidget {
  const SettingsModal({super.key});

  @override
  Widget build(BuildContext context) {
    final dispatcher = useDispatcher();
    final userPhoto = useGlobalState((s) => s.user.photo);

    final isPicking = useState(false);
    final selectedImage =
        useState<Image?>(userPhoto == null ? null : Image.file(userPhoto));

    final openImagePickerDialog = useImagePicker(
      (imageFiles) {
        if (imageFiles.isEmpty) {
          return;
        }
        selectedImage.value = Image.file(imageFiles.first);
        dispatcher(ChangePhotoAction(photo: imageFiles.first));

        // onImageChanged.call(imageFiles.first);
      },
      isPicking,
    );

    return Column(
      children: [
        const SizedBox(height: 40),
        DefaultButton(text: 'Изменить фото', onPressed: openImagePickerDialog),
        const SizedBox(height: 40),
        DefaultButton(
            text: 'Удалить фото',
            onPressed: () => dispatcher(ChangePhotoAction(photo: null))),
        const SizedBox(height: 40),
        DefaultButton(
            text: 'Выйти',
            onPressed: () {
              FirebaseAuth.instance
                  .signOut()
                  .then((value) => appRouter.startWith(const LoginPage()));
            }),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Ночная тема'),
            ThemeButton(),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
