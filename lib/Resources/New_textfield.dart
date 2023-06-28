import 'package:flutter/material.dart';
import '../Resources/fontstyle.dart';

// ignore: must_be_immutable
class NewTextField extends StatefulWidget {
  NewTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.textEditingController,
    this.textInputType,
    this.validator,
    this.maxLength,
    this.textCapitalization = TextCapitalization.words,
    this.autoFocus = false,
    //  this.inputFormatters,
  });

  String? labelText;
  String? hintText;
  TextEditingController? textEditingController;
  final TextInputType? textInputType;
  String? Function(String?)? validator;
  int? maxLength;
  bool autoFocus;
  final TextCapitalization textCapitalization;

  // dynamic inputFormatters;

  @override
  State<NewTextField> createState() => _NewTextFieldState();
}

class _NewTextFieldState extends State<NewTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength ?? 50,
      autofocus: widget.autoFocus,
      cursorColor: Colors.red,
      // textCapitalization: widget.TextCapitalization.characters,
      textCapitalization: widget.textCapitalization,
      validator: widget.validator,
      controller: widget.textEditingController,
      keyboardType: widget.textInputType,
      inputFormatters: const [],
      style: AppFontStyle.headerStyle1().copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        fontFamily: AppFontStyle.regularFont,
      ),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),

        errorStyle: const TextStyle(color: Colors.red),
        counterText: '',
        focusColor: Colors.transparent,
        hoverColor: Colors.white,
        fillColor: Theme.of(context).cardColor,

        labelText: widget.labelText,
        // 'label',
        // widget.isSearchTextField ? null : widget.placeholder,
        border: InputBorder.none,
        labelStyle: AppFontStyle.secondaryText().copyWith(
          color: Colors.black45,
        ),
        hintStyle: AppFontStyle.secondaryText(),
        hintText: widget.hintText,
        // prefix: Text(
        //   widget.prefix!,
        //   style: AppFontStyle.headerStyle1().copyWith(
        //     fontWeight: FontWeight.normal,
        //     fontSize: 18,
        //     fontFamily: AppFontStyle.regularFont,
        //   ),
        // ),
        // prefixIcon: widget.prefixIcon,
        // prefixStyle: widget.style,
        // suffixIcon: widget.isSearchTextField
        // ? Visibility(
        //     visible: true, child: clearAndSearchBarButtton())
        // : widget.isPasswordField
        //     ? Visibility(visible: true, child: passwordFiled())
        //     : null,
      ),
    );
  }
}
