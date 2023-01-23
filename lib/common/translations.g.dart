
/*
 * Generated file. Do not edit.
 *
 * Locales: 2
 * Strings: 52 (26.0 per locale)
 *
 * Built on 2023-01-02 at 10:13 UTC
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
	en, // 'en' (base locale, fallback)
	cn, // 'cn'
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of S).
///
/// Usage:
/// String a = S.someKey.anotherKey;
/// String b = S['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn _S = _currLocale.translations;
_TranslationsEn get S => _S;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final S = Translations.of(context); // Get S variable.
/// String a = S.someKey.anotherKey; // Use S variable.
/// String b = S['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget.translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// Uses locale of the device, fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale useDeviceLocale() {
		final locale = AppLocaleUtils.findDeviceLocale();
		return setLocale(locale);
	}

	/// Sets locale
	/// Returns the locale which has been set.
	static AppLocale setLocale(AppLocale locale) {
		_currLocale = locale;
		_S = _currLocale.translations;

		// force rebuild if TranslationProvider is used
		_translationProviderKey.currentState?.setLocale(_currLocale);

		return _currLocale;
	}

	/// Sets locale using string tag (e.g. en_US, de-DE, fr)
	/// Fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale setLocaleRaw(String rawLocale) {
		final locale = AppLocaleUtils.parse(rawLocale);
		return setLocale(locale);
	}

	/// Gets current locale.
	static AppLocale get currentLocale {
		return _currLocale;
	}

	/// Gets base locale.
	static AppLocale get baseLocale {
		return _baseLocale;
	}

	/// Gets supported locales in string format.
	static List<String> get supportedLocalesRaw {
		return AppLocale.values
			.map((locale) => locale.languageTag)
			.toList();
	}

	/// Gets supported locales (as Locale objects) with base locale sorted first.
	static List<Locale> get supportedLocales {
		return AppLocale.values
			.map((locale) => locale.flutterLocale)
			.toList();
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance.window.locale.toLanguageTag();
		if (deviceLocale != null) {
			final typedLocale = _selectLocale(deviceLocale);
			if (typedLocale != null) {
				return typedLocale;
			}
		}
		return _baseLocale;
	}

	/// Returns the enum type of the raw locale.
	/// Fallbacks to base locale.
	static AppLocale parse(String rawLocale) {
		return _selectLocale(rawLocale) ?? _baseLocale;
	}
}

// context enums

// interfaces generated as mixins

// translation instances

late _TranslationsEn _translationsEn = _TranslationsEn.build();
late _TranslationsCn _translationsCn = _TranslationsCn.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {

	/// Gets the translation instance managed by this library.
	/// [TranslationProvider] is using this instance.
	/// The plural resolvers are set via [LocaleSettings].
	_TranslationsEn get translations {
		switch (this) {
			case AppLocale.en: return _translationsEn;
			case AppLocale.cn: return _translationsCn;
		}
	}

	/// Gets a new translation instance.
	/// [LocaleSettings] has no effect here.
	/// Suitable for dependency injection and unit tests.
	///
	/// Usage:
	/// final t = AppLocale.en.build(); // build
	/// String a = t.my.path; // access
	_TranslationsEn build() {
		switch (this) {
			case AppLocale.en: return _TranslationsEn.build();
			case AppLocale.cn: return _TranslationsCn.build();
		}
	}

	String get languageTag {
		switch (this) {
			case AppLocale.en: return 'en';
			case AppLocale.cn: return 'cn';
		}
	}

	Locale get flutterLocale {
		switch (this) {
			case AppLocale.en: return const Locale.fromSubtags(languageCode: 'en');
			case AppLocale.cn: return const Locale.fromSubtags(languageCode: 'cn');
		}
	}
}

extension StringAppLocaleExtensions on String {
	AppLocale? toAppLocale() {
		switch (this) {
			case 'en': return AppLocale.en;
			case 'cn': return AppLocale.cn;
			default: return null;
		}
	}
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
	TranslationProvider({required this.child}) : super(key: _translationProviderKey);

	final Widget child;

	@override
	_TranslationProviderState createState() => _TranslationProviderState();

	static _InheritedLocaleData of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget;
	}
}

class _TranslationProviderState extends State<TranslationProvider> {
	AppLocale locale = _currLocale;

	void setLocale(AppLocale newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			locale: locale,
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final AppLocale locale;
	Locale get flutterLocale => locale.flutterLocale; // shortcut
	final _TranslationsEn translations; // store translations to avoid switch call

	_InheritedLocaleData({required this.locale, required Widget child})
		: translations = locale.translations, super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.locale != locale;
	}
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
	final match = _localeRegex.firstMatch(localeRaw);
	AppLocale? selected;
	if (match != null) {
		final language = match.group(1);
		final country = match.group(5);

		// match exactly
		selected = AppLocale.values
			.cast<AppLocale?>()
			.firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

		if (selected == null && language != null) {
			// match language
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
		}

		if (selected == null && country != null) {
			// match country
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
		}
	}
	return selected;
}

// translations

// Path: <root>
class _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build();

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	String get next => 'Next';
	late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	late final _TranslationsHomePageEn HomePage = _TranslationsHomePageEn._(_root);
	late final _TranslationsLoginPageEn loginPage = _TranslationsLoginPageEn._(_root);
	late final _TranslationsMyPageEn myPage = _TranslationsMyPageEn._(_root);
	late final _TranslationsPlayRecordPageEn playRecordPage = _TranslationsPlayRecordPageEn._(_root);
	late final _TranslationsDailySongPageEn DailySongPage = _TranslationsDailySongPageEn._(_root);
	late final _TranslationsPlaylistDetailPageEn PlaylistDetailPage = _TranslationsPlaylistDetailPageEn._(_root);
	late final _TranslationsPlayingPageEn playingPage = _TranslationsPlayingPageEn._(_root);
	late final _TranslationsMvPageEn mvPage = _TranslationsMvPageEn._(_root);
}

// Path: common
class _TranslationsCommonEn {
	_TranslationsCommonEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get tenThousand => '万';
}

// Path: HomePage
class _TranslationsHomePageEn {
	_TranslationsHomePageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get recommendSongList => '推荐歌单';
	String get userSheet => '用戶歌单';
}

// Path: loginPage
class _TranslationsLoginPageEn {
	_TranslationsLoginPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Login Page';
	String get hintPhone => 'Phone';
	String get hintCaptcha => 'Captcha';
	String get register => 'Register';
	String get btLogin => 'Login';
	String get phoneAppBar => '手机号登录';
	String get phoneTitle => '登录体验更多精彩';
	String get phoneDesc => '未注册手机号登录后将自动创建账号';
	String get phoneHint => '输入手机号';
	String get msgCAPTCHATitle => '输入验证码';
	String msgCAPTCHADesc({required Object phone}) => '已发送至+86 ${phone}';
	String btnRetrySec({required Object time}) => '重新发送 ${time}S';
	String get btnRetry => '重新发送';
}

// Path: myPage
class _TranslationsMyPageEn {
	_TranslationsMyPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get loginBtn => 'Login In';
}

// Path: playRecordPage
class _TranslationsPlayRecordPageEn {
	_TranslationsPlayRecordPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Playback Record';
}

// Path: DailySongPage
class _TranslationsDailySongPageEn {
	_TranslationsDailySongPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Daily song';
}

// Path: PlaylistDetailPage
class _TranslationsPlaylistDetailPageEn {
	_TranslationsPlaylistDetailPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get title => '歌单';
	String get playAll => '播放全部';
	String songNum({required Object count}) => '$count songs';
}

// Path: playingPage
class _TranslationsPlayingPageEn {
	_TranslationsPlayingPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Now Playing';
}

// Path: mvPage
class _TranslationsMvPageEn {
	_TranslationsMvPageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get collection => 'Collection';
	String get commentIntro => 'People who like to comment are lovely';
}

// Path: <root>
class _TranslationsCn implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsCn.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _TranslationsCn _root = this; // ignore: unused_field

	// Translations
	@override String get next => '下一步';
	@override late final _TranslationsCommonCn common = _TranslationsCommonCn._(_root);
	@override late final _TranslationsHomePageCn HomePage = _TranslationsHomePageCn._(_root);
	@override late final _TranslationsLoginPageCn loginPage = _TranslationsLoginPageCn._(_root);
	@override late final _TranslationsMyPageCn myPage = _TranslationsMyPageCn._(_root);
	@override late final _TranslationsPlayRecordPageCn playRecordPage = _TranslationsPlayRecordPageCn._(_root);
	@override late final _TranslationsDailySongPageCn DailySongPage = _TranslationsDailySongPageCn._(_root);
	@override late final _TranslationsPlaylistDetailPageCn PlaylistDetailPage = _TranslationsPlaylistDetailPageCn._(_root);
	@override late final _TranslationsPlayingPageCn playingPage = _TranslationsPlayingPageCn._(_root);
	@override late final _TranslationsMvPageCn mvPage = _TranslationsMvPageCn._(_root);
}

// Path: common
class _TranslationsCommonCn implements _TranslationsCommonEn {
	_TranslationsCommonCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get tenThousand => '万';
}

// Path: HomePage
class _TranslationsHomePageCn implements _TranslationsHomePageEn {
	_TranslationsHomePageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get recommendSongList => '推荐歌单';
	@override String get userSheet => '用戶歌单';
}

// Path: loginPage
class _TranslationsLoginPageCn implements _TranslationsLoginPageEn {
	_TranslationsLoginPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get title => '登录页';
	@override String get hintPhone => '手机号';
	@override String get hintCaptcha => '验证码';
	@override String get register => '注册';
	@override String get btLogin => '登录';
	@override String get phoneAppBar => '手机号登录';
	@override String get phoneTitle => '登录体验更多精彩';
	@override String get phoneDesc => '未注册手机号登录后将自动创建账号';
	@override String get phoneHint => '输入手机号';
	@override String get msgCAPTCHATitle => '输入验证码';
	@override String msgCAPTCHADesc({required Object phone}) => '已发送至+86 ${phone}';
	@override String btnRetrySec({required Object time}) => '重新发送 ${time}S';
	@override String get btnRetry => '重新发送';
}

// Path: myPage
class _TranslationsMyPageCn implements _TranslationsMyPageEn {
	_TranslationsMyPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get loginBtn => '立即登录>';
}

// Path: playRecordPage
class _TranslationsPlayRecordPageCn implements _TranslationsPlayRecordPageEn {
	_TranslationsPlayRecordPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get title => '播放记录';
}

// Path: DailySongPage
class _TranslationsDailySongPageCn implements _TranslationsDailySongPageEn {
	_TranslationsDailySongPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日歌曲';
}

// Path: PlaylistDetailPage
class _TranslationsPlaylistDetailPageCn implements _TranslationsPlaylistDetailPageEn {
	_TranslationsPlaylistDetailPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get title => '歌单';
	@override String get playAll => '播放全部';
	@override String songNum({required Object count}) => '$count 首';
}

// Path: playingPage
class _TranslationsPlayingPageCn implements _TranslationsPlayingPageEn {
	_TranslationsPlayingPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get title => '播放中';
}

// Path: mvPage
class _TranslationsMvPageCn implements _TranslationsMvPageEn {
	_TranslationsMvPageCn._(this._root);

	@override final _TranslationsCn _root; // ignore: unused_field

	// Translations
	@override String get collection => '收藏';
	@override String get commentIntro => '爱评论的人都是可爱的';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'next': 'Next',
			'common.tenThousand': '万',
			'HomePage.recommendSongList': '推荐歌单',
			'HomePage.userSheet': '用戶歌单',
			'loginPage.title': 'Login Page',
			'loginPage.hintPhone': 'Phone',
			'loginPage.hintCaptcha': 'Captcha',
			'loginPage.register': 'Register',
			'loginPage.btLogin': 'Login',
			'loginPage.phoneAppBar': '手机号登录',
			'loginPage.phoneTitle': '登录体验更多精彩',
			'loginPage.phoneDesc': '未注册手机号登录后将自动创建账号',
			'loginPage.phoneHint': '输入手机号',
			'loginPage.msgCAPTCHATitle': '输入验证码',
			'loginPage.msgCAPTCHADesc': ({required Object phone}) => '已发送至+86 ${phone}',
			'loginPage.btnRetrySec': ({required Object time}) => '重新发送 ${time}S',
			'loginPage.btnRetry': '重新发送',
			'myPage.loginBtn': 'Login In',
			'playRecordPage.title': 'Playback Record',
			'DailySongPage.title': 'Daily song',
			'PlaylistDetailPage.title': '歌单',
			'PlaylistDetailPage.playAll': '播放全部',
			'PlaylistDetailPage.songNum': ({required Object count}) => '$count songs',
			'playingPage.title': 'Now Playing',
			'mvPage.collection': 'Collection',
			'mvPage.commentIntro': 'People who like to comment are lovely',
		};
	}
}

extension on _TranslationsCn {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'next': '下一步',
			'common.tenThousand': '万',
			'HomePage.recommendSongList': '推荐歌单',
			'HomePage.userSheet': '用戶歌单',
			'loginPage.title': '登录页',
			'loginPage.hintPhone': '手机号',
			'loginPage.hintCaptcha': '验证码',
			'loginPage.register': '注册',
			'loginPage.btLogin': '登录',
			'loginPage.phoneAppBar': '手机号登录',
			'loginPage.phoneTitle': '登录体验更多精彩',
			'loginPage.phoneDesc': '未注册手机号登录后将自动创建账号',
			'loginPage.phoneHint': '输入手机号',
			'loginPage.msgCAPTCHATitle': '输入验证码',
			'loginPage.msgCAPTCHADesc': ({required Object phone}) => '已发送至+86 ${phone}',
			'loginPage.btnRetrySec': ({required Object time}) => '重新发送 ${time}S',
			'loginPage.btnRetry': '重新发送',
			'myPage.loginBtn': '立即登录>',
			'playRecordPage.title': '播放记录',
			'DailySongPage.title': '每日歌曲',
			'PlaylistDetailPage.title': '歌单',
			'PlaylistDetailPage.playAll': '播放全部',
			'PlaylistDetailPage.songNum': ({required Object count}) => '$count 首',
			'playingPage.title': '播放中',
			'mvPage.collection': '收藏',
			'mvPage.commentIntro': '爱评论的人都是可爱的',
		};
	}
}
