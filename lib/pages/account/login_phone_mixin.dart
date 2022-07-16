import 'dart:async';

import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/utils/utils.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin LoginPhoneMixin<T extends StatefulWidget> on State<T> {
  bool _enableNextBtn = false;
  late bool _isPhonePage = true;
  int _timeSec = 0;
  Timer? _retryTimer;
  late final TextEditingController _phoneController = TextEditingController()
    ..addListener(() {
      if (_phoneController.text.length >= Constants.phoneMaxLength) {
        final match = Constants.phoneReg.hasMatch(_phoneController.text);
        if (match) _enableNextBtn = true;
      } else {
        _enableNextBtn = false;
      }
      setState(() {});
    });
  late final TextEditingController _captchaController = TextEditingController()
    ..addListener(() {
      if (loading) return;
      if (_captchaController.text.length != Constants.captchaLength) return;

      sendVerificationCode();
    });

  ViewModel<VerifyNestCaptchaResponse>? get sentCaptchaVm =>
      context.read<LoginNewBloc>().state.sentCaptchaVm;

  ViewModel<NestLoginResponse>? get nestPhoneLoginVm =>
      context.read<LoginNewBloc>().state.nestPhoneLoginVm;

  bool get loading =>
      (sentCaptchaVm?.requesting ?? false) || (nestPhoneLoginVm?.requesting ?? false);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _retryTimer?.cancel();
    _phoneController.dispose();
    _captchaController.dispose();
    super.dispose();
  }

  void sentCaptcha() {
    void onSuccess() {
      _isPhonePage = false;
      initTimer();
    }

    void onError() {}

    context.read<LoginNewBloc>().add(
          LoginEvent.sendCaptcha(_phoneController.text, onSuccess: onSuccess, onError: onError),
        );
  }

  void sendVerificationCode() {
    void onSuccess() async {
      final sp = await SharedPreferences.getInstance();
      sp.setString(SpKey.phone, _phoneController.text);
      if (!mounted) return;

      context.read<LoginNewBloc>().add(const LoginEvent.loginStatus());
      context.read<TopBloc>().add(RequestTopArtistsEvent());
      context.read<RecommendBloc>().add(RequestRecommendSheetEvent());

      R.of(context).pop();
    }

    void onError() {}

    context.read<LoginNewBloc>().add(
          LoginEvent.cellphone(
            _phoneController.text,
            _captchaController.text,
            onSuccess: onSuccess,
            onError: onError,
          ),
        );
  }

  void initTimer() {
    _timeSec = 60;
    _retryTimer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_isPhonePage) {
        _retryTimer?.cancel();
        return;
      }
      if (_timeSec <= 0) {
        _timeSec = 0;
        _retryTimer?.cancel();
        // _retryTimer.
        return;
      }
      _timeSec--;
      setState(() {});
    });
  }

  Widget _buildInput() {
    return InputWidget(
      textInputType: TextInputType.phone,
      controller: _phoneController,
      hintText: S.loginPage.phoneHint,
      maxLength: Constants.phoneMaxLength,
      inputFormatters: [Constants.digitInputFormatter],
      style: L.tsTitle,
      prefixIcon: SizedBox(
        width: 56.w,
        height: 36.w,
        child: Row(
          children: [
            Text('+86', style: L.tsTitleBold),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.centerLeft,
              child: ArrowWidget(size: 12.w),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCAPTCHAInput() {
    return SizedBox(
      height: 60.w,
      child: PinCodeTextField(
        appContext: context,
        pastedTextStyle: TextStyle(color: Colors.green.shade600, fontWeight: FontWeight.bold),
        length: Constants.captchaLength,
        autoDisposeControllers: false,
        blinkWhenObscuring: true,
        animationType: AnimationType.fade,
        validator: (v) => null,
        pinTheme: PinTheme(
          activeColor: L.black.withOpacity(0.8),
          selectedColor: L.black.withOpacity(0.5),
          inactiveColor: L.black.withOpacity(0.2),
          inactiveFillColor: Colors.transparent,
          selectedFillColor: Colors.transparent,
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 45.w,
          fieldWidth: 45.w,
          activeFillColor: Colors.white,
          borderWidth: 1.w,
        ),
        cursorColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        controller: _captchaController,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          debugPrint(value);
          setState(() {
            // currentText = value;
          });
        },
      ),
    );
  }

  Widget _buildPhone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.w),
        Text(S.loginPage.phoneTitle, style: L.tsHeader),
        SizedBox(height: 10.w),
        Text(S.loginPage.phoneDesc, style: L.tsTitle2),
        SizedBox(height: 16.w),
        _buildInput(),
        SizedBox(height: 30.w),
        ElevateButtonWidget(
          text: S.next,
          loading: loading,
          onPressed: _enableNextBtn
              ? () {
                  sentCaptcha();
                }
              : null,
        ),
      ],
    );
  }

  Widget _buildCAPTCHA() {
    Widget _retryText() {
      if (loading) {
        return SizedBox(
          width: 16.w,
          height: 16.w,
          child: CircularProgressIndicator(color: L.primaryColor, strokeWidth: 2.w),
        );
      }

      return _timeSec == 0
          ? LinkWidget(
              S.loginPage.btnRetry,
              onTap: () => sentCaptcha(),
            )
          : Text(
              S.loginPage.btnRetrySec(time: _timeSec),
              style: L.tsSubtitle2,
            );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.w),
        Text(S.loginPage.msgCAPTCHATitle, style: L.tsHeader),
        SizedBox(height: 10.w),
        Row(
          children: [
            Text(
              S.loginPage.msgCAPTCHADesc(phone: _phoneController.text.phoneDesensitization),
              style: L.tsTitle2,
            ),
            SizedBox(width: 4.w),
            GestureDetector(
              child: ImageWidget(Assets.icLoginModifyPhone, size: 15.w, color: L.black2),
              onTap: () => setState(() => _isPhonePage = true),
            ),
            const Expanded(child: SizedBox()),
            _retryText(),
          ],
        ),
        SizedBox(height: 16.w),
        _buildCAPTCHAInput(),
      ],
    );
  }

  Widget buildPhoneBody() {
    return BlocBuilder<LoginNewBloc, LoginNewState>(
      builder: (context, state) {
        return _isPhonePage ? _buildPhone() : _buildCAPTCHA();
      },
    );
  }
}
