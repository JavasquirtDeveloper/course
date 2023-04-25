import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.props,
    Key? key,
  }) : super(key: key);

  final InputFieldProps props;

  @override
  State<StatefulWidget> createState() {
    return _InputFieldState();
  }
}

class _InputFieldState extends State<InputField> {
  final key = GlobalKey<FormFieldState<String>>();
  bool isObscure = false;

  bool get _hasFocus => widget.props.focusNode?.hasFocus ?? false;

  void onChanged(state, value) {
    state.didChange(value);
    widget.props.onChanged?.call(value);
  }

  @override
  void initState() {
    super.initState();
    widget.props.focusNode?.addListener(_changeFieldFocus);

    isObscure = widget.props.obscureText;
  }

  @override
  void dispose() {
    widget.props.focusNode?.removeListener(_changeFieldFocus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      key: key,
      enabled: widget.props.isEnabled,
      onSaved: _saveField,
      autovalidateMode: widget.props.autovalidateMode,
      builder: (state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            minLines: widget.props.minLines,
            onTap: widget.props.onTap,
            maxLines: widget.props.maxLines,
            enableSuggestions: widget.props.enableSuggestions,
            autocorrect: widget.props.autocorrect,
            controller: widget.props.controller,
            focusNode: widget.props.focusNode,
            readOnly: widget.props.readOnly,
            textInputAction: widget.props.textInputAction,
            textAlign: widget.props.textAlign,
            textCapitalization: widget.props.textCapitalization,
            onSubmitted: _submitField,
            onChanged: (value) => onChanged(state, value),
            obscureText: isObscure,
            maxLength: widget.props.maxLength,
            keyboardType: widget.props.keyboardType,
            scrollPadding: widget.props.scrollPadding,
            buildCounter: (
              context, {
              required currentLength,
              required isFocused,
              maxLength,
            }) =>
                null,
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.props.fillColor,
              border: widget.props.inputBorder,
              contentPadding: widget.props.contentPadding,
              hintText: widget.props.hint,
              hintStyle: widget.props.hintStyle,
              floatingLabelBehavior: widget.props.floatingLabelBehavior,
              suffixIcon: widget.props.obscureToggle
                  ? ObscurementButton(
                      toggleTextObscurement: _toggleTextObscurement,
                      isObscure: isObscure,
                    )
                  : widget.props.suffixIcon != null
                      ? _InputIcon(suffixIcon: widget.props.suffixIcon)
                      : null,
              prefixIcon: widget.props.prefixIcon != null
                  ? _InputIcon(prefixIcon: widget.props.prefixIcon)
                  : null,
            ),
            textAlignVertical: widget.props.textAlignVertical,
          ),
          if (state.hasError && !_hasFocus) ...[
            const SizedBox(height: 6),
            Text(
              state.errorText!,
            ),
          ],
        ],
      ),
    );
  }

  void _saveField(String? value) {
    widget.props.focusNode?.unfocus();

    widget.props.onSaved?.call(value);
  }

  void _submitField(String value) {
    widget.props.focusNode?.unfocus();

    if (widget.props.nextFocusNode != null) {
      FocusScope.of(context).requestFocus(widget.props.nextFocusNode);
    }

    widget.props.onSubmitted?.call(value);
  }

  void _changeFieldFocus() {
    key.currentState?.didChange(widget.props.controller?.text);
    widget.props.onChangeFocus?.call();
    key.currentState?.validate();
  }

  void _toggleTextObscurement() {
    setState(() => isObscure = !isObscure);
  }
}

class ObscurementButton extends StatelessWidget {
  const ObscurementButton({
    required this.toggleTextObscurement,
    required this.isObscure,
    Key? key,
  }) : super(key: key);

  final VoidCallback toggleTextObscurement;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleTextObscurement,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 10),
        child: Icon(
          isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          size: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _InputIcon extends StatelessWidget {
  const _InputIcon({
    Key? key,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    if (prefixIcon != null) {
      return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: prefixIcon,
      );
    }

    if (suffixIcon != null) {
      return suffixIcon!;
    }

    return const SizedBox.shrink();
  }
}

class InputFieldProps {
  const InputFieldProps({
    this.isEnabled = true,
    this.hint,
    this.hintStyle,
    this.label,
    this.onSubmitted,
    this.onSaved,
    this.controller,
    this.contentPadding,
    this.scrollPadding = EdgeInsets.zero,
    this.textAlign = TextAlign.start,
    this.focusNode,
    this.nextFocusNode,
    this.textInputAction = TextInputAction.done,
    this.obscureText = false,
    this.obscureToggle = false,
    this.readOnly = false,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType = TextInputType.text,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.loosingFocusValidation = true,
    this.maxLines = 1,
    this.lines = 1,
    this.maxLength = 64,
    this.onChanged,
    this.prefixIcon,
    this.labelColor = Colors.black,
    this.textColor = Colors.black,
    this.hintColor = Colors.black,
    this.fillColor = Colors.black,
    this.suffixIcon,
    this.customValidator,
    this.inputBorder,
    this.floatingLabelBehavior,
    this.enableSuggestions = true,
    this.autocorrect = false,
    this.onChangeFocus,
    this.modalContent,
    this.onTap,
    this.labelStyle,
    this.minLines,
    this.textAlignVertical = TextAlignVertical.center,
    this.inputTextStyle,
  });

  final bool isEnabled;
  final String? hint;
  final TextStyle? hintStyle;
  final String? label;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String?>? onSaved;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsets scrollPadding;
  final TextAlign textAlign;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool obscureToggle;
  final bool readOnly;
  final TextCapitalization textCapitalization;
  final TextInputType keyboardType;
  final AutovalidateMode autovalidateMode;
  final bool loosingFocusValidation;
  final int? maxLines;
  final int lines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final Color labelColor;
  final Color textColor;
  final Color hintColor;
  final Color? fillColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final InputBorder? inputBorder;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool enableSuggestions;
  final bool autocorrect;
  final VoidCallback? onChangeFocus;
  final FormFieldValidator<String>? customValidator;
  final Widget? modalContent;
  final VoidCallback? onTap;
  final TextStyle? labelStyle;
  final int? minLines;
  final TextAlignVertical textAlignVertical;
  final TextStyle? inputTextStyle;
}

class SearchInputField extends StatelessWidget {
  const SearchInputField({
    this.hint,
    this.hintFirstLetterUpperCased,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.onSaved,
    this.obscureText = false,
    this.obscureToggle = false,
    this.keyboardType = TextInputType.text,
    this.enableSuggestions = true,
    this.focusNode,
    this.label,
    this.nextFocusNode,
    this.textInputAction = TextInputAction.done,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.onChangeFocus,
    this.customValidator,
    this.modalContent,
    this.onTap,
    this.height,
    this.minLines = 1,
    this.maxLines = 1,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.isEnabled = true,
    this.isRequired = false,
    this.textColor,
    this.contentPadding,
    Key? key,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hint;
  final String? hintFirstLetterUpperCased;
  final String? label;
  final bool obscureText;
  final bool obscureToggle;
  final TextInputType keyboardType;
  final bool enableSuggestions;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String?>? onSaved;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final VoidCallback? onChangeFocus;
  final String? Function(String?)? customValidator;
  final Widget? modalContent;
  final VoidCallback? onTap;
  final double? height;
  final int? minLines;
  final int maxLines;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final int? maxLength;
  final bool isEnabled;
  final bool isRequired;
  final Color? textColor;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return InputField(
      props: InputFieldProps(
        hint: hint,
        customValidator: customValidator,
        textCapitalization: textCapitalization,
        onChanged: onChanged,
        label: label,
        onSubmitted: onSubmitted,
        onSaved: onSaved,
        enableSuggestions: enableSuggestions,
        controller: controller,
        textColor: textColor ??
            (readOnly
                ? Theme.of(context).unselectedWidgetColor
                : Theme.of(context).colorScheme.secondary),
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        hintColor: Theme.of(context).unselectedWidgetColor,
        prefixIcon: prefixIcon,
        fillColor: Theme.of(context).colorScheme.onBackground,
        focusNode: focusNode,
        nextFocusNode: null,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              bottom: 16.0,
              right: suffixIcon != null ? 8.0 : 16.0,
            ),
        scrollPadding: const EdgeInsets.symmetric(vertical: 90),
        obscureText: obscureText,
        obscureToggle: obscureToggle,
        inputBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
        readOnly: readOnly,
        onChangeFocus: onChangeFocus,
        modalContent: modalContent,
        onTap: onTap,
        minLines: minLines,
        maxLines: maxLines,
        textAlign: textAlign,
        maxLength: maxLength,
        isEnabled: isEnabled,
      ),
    );
  }
}
