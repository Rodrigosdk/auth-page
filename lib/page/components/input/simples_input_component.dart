import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'title_input_extensions.dart';

// ignore: must_be_immutable
class SimplesInputComponent extends StatefulWidget {
  final String title;
  final String subTitle;
  
  final TextEditingController controller;
  final TextAlign? textAlign;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool? passwordEnable;

  List<TextInputFormatter>? inputFormatters;
  
  SimplesInputComponent({
    Key? key,
    required this.title,
    required this.controller,
    this.textAlign,
    this.onChanged,
    this.keyboardType,
    this.inputFormatters, required this.subTitle, this.passwordEnable,
  }) : super(key: key);

  @override
  State<SimplesInputComponent> createState() => _SimplesInputComponentState();
  
  Widget titleWidget(BuildContext context){
    var themeTitle = Theme.of(context).extension<TitleInputExtensions>()!;
    
    return Text(title, style: themeTitle.title);
  }
}

class _SimplesInputComponentState extends State<SimplesInputComponent> {

  bool obscureText = true;

  alterObscuretext(){
    setState(() {
      obscureText = !obscureText;
    });
  }

  Widget? suffixIcon(){
    return widget.passwordEnable == true
      ? IconButton(
        icon: Icon(
          obscureText == true
          ? Icons.visibility
          : Icons.visibility_off,
          color: Colors.white60), 
        onPressed: () {alterObscuretext();},)
      : null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.titleWidget(context),
          TextField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters,
            obscureText: widget.passwordEnable == true? obscureText:false,
            keyboardType:widget.keyboardType?? TextInputType.text,
            textAlign: widget.textAlign??TextAlign.left,
            decoration: InputDecoration(
              suffixIcon: suffixIcon(),
              hintText: widget.subTitle,
            ),
          ),
        ]),
    );
  }
}
