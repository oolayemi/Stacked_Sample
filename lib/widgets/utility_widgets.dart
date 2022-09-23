import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/size_config.dart';
import '../styles/brand_color.dart';
import 'bottom_pad.dart';


flusher(String? message, BuildContext context,
    {int sec = 3, Color? color, String? title}) {
  return Flushbar(
    backgroundColor: color ?? BrandColors.primary,
    duration: Duration(seconds: sec),
    title: title,
    message: message,
    icon: const Icon(Icons.info_outline, size: 28.0, color: Colors.white),
    leftBarIndicatorColor: Colors.black,
  ).show(context);
}


MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch as Map<int, Color>);
}

Widget customTextField(
    {String? label,
    String? hintText,
    String? prefixImage,
    String? suffixImage,
    int? minLines,
    int? maxLines,
    TextEditingController? controller,
    bool? obscure,
    TextInputAction? action,
    TextInputType? inputType,
    Function? onChanged,
    Function? suffixFunc,
    String? errorText,
    bool? enabled,
    String? helperText,
    TextStyle? helperStyle,
    int? maxLength,
    List<String>? hints,
    required BuildContext context}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      label == null
          ? const SizedBox()
          : Container(
              margin: EdgeInsets.only(bottom: SizeConfig.yMargin(context, .5)),
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontSize: SizeConfig.textSize(context, 1.8)),
              ),
            ),
      Row(
        children: [
          Expanded(
            child: TextField(
              autofillHints: hints,
              enableInteractiveSelection: true,
              enabled: enabled ?? true,
              controller: controller,
              maxLines: maxLines ?? 1,
              minLines: minLines,
              obscureText: obscure ?? false,
              style: TextStyle(
                fontSize: SizeConfig.textSize(context, 2),
              ),
              textInputAction: TextInputAction.done,
              keyboardType: inputType ?? TextInputType.text,
              onChanged: onChanged as void Function(String)?,
              maxLength: maxLength,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                hintText: hintText ?? '',
                hintStyle: TextStyle(fontSize: SizeConfig.textSize(context, 2)),
                helperText: helperText,
                helperStyle: helperStyle,


                enabledBorder: const OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderSide: BorderSide(color: BrandColors.outlineText, width: 0.0),
                ),

                border: OutlineInputBorder(
                    // borderSide: BorderSide.none,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.yMargin(context, 1))),

                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius:
                        BorderRadius.circular(SizeConfig.yMargin(context, 1))),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: BrandColors.secondary),
                    borderRadius:
                        BorderRadius.circular(SizeConfig.yMargin(context, 1))),
                errorText: errorText,
                contentPadding: EdgeInsets.symmetric(
                    vertical: SizeConfig.yMargin(context, 2),
                    horizontal: SizeConfig.xMargin(context, 4)),
                prefixIcon: prefixImage == null
                    ? null
                    : Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.xMargin(context, 4)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(prefixImage),
                          ],
                        ),
                      ),
              ),
            ),
          ),
          suffixImage == null
              ? const SizedBox()
              : Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.xMargin(context, 1)),
                  child: InkWell(
                    enableFeedback: true,
                    // excludeFromSemantics: true,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.yMargin(context, 1)),

                    onTap: suffixFunc as void Function()?,
                    child: Container(
                      height: SizeConfig.yMargin(context, 6),
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.yMargin(context, 0.5),
                          horizontal: SizeConfig.xMargin(context, 3.8)),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                        border: Border.all(
                          color: BrandColors.outlineText,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                          borderRadius: BorderRadius.circular(
                              SizeConfig.yMargin(context, 1),
                          ),

                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            suffixImage,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
        ],
      ),
    ],
  );
}

Widget customDropdown<T>(
    {String? label,
    T? value,
    List<DropdownMenuItem<T>>? items,
    Function? onChanged,
    required BuildContext context}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      label == null
          ? const SizedBox()
          : Container(
              margin: EdgeInsets.only(bottom: SizeConfig.yMargin(context, .5)),
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontSize: SizeConfig.textSize(context, 2)),
              ),
            ),
      Container(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.yMargin(context, 2.2),
            horizontal: SizeConfig.xMargin(context, 4)),
        decoration: BoxDecoration(
            color: const Color(0xFFB9B9B9).withOpacity(0.12),
            borderRadius:
                BorderRadius.circular(SizeConfig.yMargin(context, 1))),
        child: DropdownButton(
            // focusColor: Color(0xFFB9B9B9).withOpacity(0.12),
            dropdownColor: Colors.white,
            elevation: 0,
            underline: const SizedBox(),
            isDense: true,
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: BrandColors.secondary,
            ),
            value: value,
            items: items,
            onChanged: onChanged!()),
      ),
    ],
  );
}

Widget serviceMode(
    {required BuildContext context, required String title, required bool isSelected, Function? onClick, required String icon}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.xMargin(context, 2)),
    child: InkWell(
      borderRadius: BorderRadius.circular(SizeConfig.yMargin(context, 1.4)),
      onTap: onClick as void Function()?,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.yMargin(context, 1),
            horizontal: SizeConfig.xMargin(context, 2)),
        width: SizeConfig.xMargin(context, 40),
        height: SizeConfig.yMargin(context, 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: isSelected ? BrandColors.mainBlack : Colors.grey[500]!),
            borderRadius:
                BorderRadius.circular(SizeConfig.yMargin(context, 1.4)),
            color: isSelected
                ? BrandColors.mainBlack
                : Colors.transparent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                    child: SvgPicture.asset(icon, color: isSelected
                        ? BrandColors.secondary
                        : Colors.grey[500],),
                  ),

                  Expanded(
                    child: Container(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(title, style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : Colors.black, fontSize: 14
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // s
          ],
        ),
      ),
    ),
  );
}

void pinPad({required BuildContext ctx, Function? function}) {
  showModalBottomSheet(
      enableDrag: false,
      isDismissible: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(SizeConfig.yMargin(ctx, 1.5)),
        topLeft: Radius.circular(SizeConfig.yMargin(ctx, 1.5)),
      )),
      backgroundColor: Colors.white,
      context: ctx,
      builder: (context) {
        return BottomPad(
          function: (String pin) => function!(pin),
        );
      });
}

Widget walletDetailItem(
    BuildContext context, String item, String? value, bool showBorder) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: SizeConfig.yMargin(context, 2)),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: showBorder
                    ? const Color(0xFF8A8A8A).withOpacity(0.26)
                    : Colors.transparent))),
    child: Row(
      children: [
        Text('$item',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: SizeConfig.textSize(context, 2))),
        Flexible(
          child: SelectableText(
            '$value',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontSize: SizeConfig.textSize(context, 2)),
          ),
        ),
      ],
    ),
  );
}
