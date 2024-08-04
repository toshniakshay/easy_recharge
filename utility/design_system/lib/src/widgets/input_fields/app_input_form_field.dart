import 'package:design_system/design_system.dart';
import 'package:design_system/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInputFormField extends StatefulWidget {
  const AppInputFormField({
    super.key,
    this.label,
    this.text,
    this.errorText,
    this.helperText,
    this.onChanged,
    this.onFocusChanged,
    this.focusNode,
    required this.autoFocus,
    this.enabled = true,
    this.maxLength,
    this.textController,
    this.textInputAction,
    this.textInputType,
    this.textInputFormatters,
  });

  final String? label;
  final String? text;
  final String? errorText;
  final String? helperText;
  final Function(String)? onChanged;
  final Function(bool)? onFocusChanged;
  final FocusNode? focusNode;
  final bool autoFocus;
  final bool? enabled;
  final int? maxLength;
  final TextEditingController? textController;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatters;

  @override
  State<AppInputFormField> createState() => _AppInputFormFieldState();
}

class _AppInputFormFieldState extends State<AppInputFormField> {
  TextEditingController? _localTextEditingController;
  bool _isFocused = false;
  FocusNode? _localFocusNode;

  @override
  void initState() {
    super.initState();

    _getFocusNode().addListener(() {
      if (mounted) {
        setState(() {
          _isFocused = _getFocusNode().hasFocus;
          widget.onFocusChanged?.call(_isFocused);
        });
      }
    });

    if (widget.textController == null) {
      _localTextEditingController = TextEditingController(text: widget.text);
    } else {
      _localTextEditingController = widget.textController;
    }
  }

  @override
  void didUpdateWidget(covariant AppInputFormField oldWidget) {
    super.didUpdateWidget(oldWidget);

    final controller = (widget.textController ?? _localTextEditingController);
    final currentText = controller?.text;
    final newText = widget.text ?? currentText;

    if (currentText != newText) {
      controller?.value = TextEditingValue(
        text: newText!,
        selection:
            TextSelection.fromPosition(TextPosition(offset: newText.length)),
      );
    }
  }

  @override
  void dispose() {
    _localFocusNode?.dispose();
    _localTextEditingController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...{
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Text(
              widget.label!,
              style: theme.textTheme.labelLarge,
            ),
          )
        },
        if (widget.helperText != null) ...{
          Text(
            widget.helperText!,
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.disabledColor,
            ),
          )
        },
        Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: theme.colorScheme.secondary,
                ),
          ),
          child: SizedBox(
            height: 80,
            child: Center(
              child: Semantics(
                label: widget.label,
                hint: widget.errorText ?? widget.helperText,
                child: TextField(
                  autofocus: widget.autoFocus,
                  enabled: widget.enabled,
                  controller:
                      widget.textController ?? _localTextEditingController,
                  onChanged: widget.onChanged,
                  inputFormatters: widget.textInputFormatters,
                  maxLines: 1,
                  keyboardType: widget.textInputType,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: xs,
                      vertical: xs,
                    ),
                    errorStyle: const TextStyle(height: 0),
                    errorText: widget.errorText != null ? "" : null,
                  ),
                  focusNode: _getFocusNode(),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    decoration: TextDecoration.none,
                    color: widget.enabled ?? false
                        ? Colors.black
                        : theme.disabledColor,
                  ),
                  textInputAction: widget.textInputAction,
                  cursorColor: Colors.black,
                ),
              ),
            ),
          ),
        ),
        if (widget.errorText != null) ...{
          Text(
            widget.errorText!,
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.primaryColor,
            ),
          )
        },
      ],
    );
  }

  FocusNode _getFocusNode() {
    if (widget.focusNode == null) {
      return _localFocusNode ??= FocusNode();
    }
    return widget.focusNode!;
  }
}
