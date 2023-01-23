import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/material.dart';

class ElevateButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool loading;
  final Color loadingColor;

  const ElevateButtonWidget(
      {Key? key,
      this.text = '',
      this.onPressed,
      this.loading = false,
      this.loadingColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.w),
      child: SizedBox(
        width: double.infinity,
        height: 40.w,
        child: ElevatedButton(
          onPressed: loading ? null : onPressed,
          child: loading
              ? SizedBox(
                  width: 16.w,
                  height: 16.w,
                  child: CircularProgressIndicator(strokeWidth: 2.w, color: loadingColor),
                )
              : Text(text),
        ),
      ),
    );
  }
}
