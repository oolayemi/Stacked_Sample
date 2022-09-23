import 'package:flutter/material.dart';

import '../../widgets/loading_animation.dart';
import '../utils/size_config.dart';

class LoadingDialog extends StatelessWidget {
  final String title;

  const LoadingDialog(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        // The background color
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              // The loading indicator
              Container(
                color: Colors.transparent,
                height: SizeConfig.yMargin(context, 18),
                child: LoadingAnimation(),
              ),
              SizedBox(height: SizeConfig.yMargin(context, .2)),

              DefaultTextStyle(
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    backgroundColor: Colors.transparent,
                    fontSize: SizeConfig.textSize(context, 2)
                ),
                child: Text(
                  title,
                  softWrap: true,
                  textAlign: TextAlign.center,

                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}