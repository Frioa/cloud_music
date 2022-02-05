
/*
 * Generated file. Do not edit.
 *
 * Locales: 2
 * Strings: 20 (10.0 per locale)
 *
 * Built on 2022-02-05 at 02:16 UTC
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

		if (WidgetsBinding.instance != null) {
			// force rebuild if TranslationProvider is used
			_translationProviderKey.currentState?.setLocale(_currLocale);
		}

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

	/// Sets plural resolvers.
	/// See https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/language_plural_rules.html
	/// See https://github.com/Tienisto/flutter-fast-i18n/blob/master/lib/src/model/pluralization_resolvers.dart
	/// Either specify [language], or [locale]. Locale has precedence.
	/// Rendered Resolvers: ['en']
	/// You must set these: ['cn']
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) {
		final List<AppLocale> locales;
		if (locale != null) {
			locales = [locale];
		} else {
			switch (language) {
				case 'en':
					locales = [AppLocale.en];
					break;
				case 'cn':
					locales = [AppLocale.cn];
					break;
				default:
					locales = [];
			}
		}
		locales.forEach((curr) {
			switch(curr) {
				case AppLocale.en:
					_translationsEn = _TranslationsEn.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
					break;
				case AppLocale.cn:
					_translationsCn = _TranslationsCn.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
					break;
			}
		});
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance?.window.locale.toLanguageTag();
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
	_TranslationsEn build({PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) {
		switch (this) {
			case AppLocale.en: return _TranslationsEn.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
			case AppLocale.cn: return _TranslationsCn.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
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

// pluralization resolvers

typedef PluralResolver = String Function(num n, {String? zero, String? one, String? two, String? few, String? many, String? other});

PluralResolver _missingPluralResolver(String language) {
	throw 'Resolver for <lang = $language> not specified';
}

// prepared by fast_i18n

String _pluralCardinalEn(num n, {String? zero, String? one, String? two, String? few, String? many, String? other}) {
	if (n == 0) {
		return zero ?? other!;
	} else if (n == 1) {
		return one ?? other!;
	}
	return other!;
}

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
	_TranslationsEn.build({PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: _cardinalResolver = cardinalResolver,
		  _ordinalResolver = ordinalResolver;

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	// ignore: unused_field
	final PluralResolver? _cardinalResolver;
	// ignore: unused_field
	final PluralResolver? _ordinalResolver;

	// ignore: unused_field
	late final _TranslationsEn _root = this;

	// Translations
	late final _TranslationsMainScreenEn mainScreen = _TranslationsMainScreenEn._(_root);
	late final _TranslationsLocalesEn locales = _TranslationsLocalesEn._(_root);
	late final _TranslationsLoginPageEn loginPage = _TranslationsLoginPageEn._(_root);
}

// Path: mainScreen
class _TranslationsMainScreenEn {
	_TranslationsMainScreenEn._(this._root);

	// ignore: unused_field
	final _TranslationsEn _root;

	// Translations
	String get title => 'An English Title';
	String counter({required num count}) => (_root._cardinalResolver ?? _pluralCardinalEn)(count,
		one: 'You pressed $count time.',
		other: 'You pressed $count times.',
	);
	String get tapMe => 'Tap me';
}

// Path: locales
class _TranslationsLocalesEn {
	_TranslationsLocalesEn._(this._root);

	// ignore: unused_field
	final _TranslationsEn _root;

	// Translations
	String get en => 'English';
	String get de => 'German';
}

// Path: loginPage
class _TranslationsLoginPageEn {
	_TranslationsLoginPageEn._(this._root);

	// ignore: unused_field
	final _TranslationsEn _root;

	// Translations
	String get title => 'Login Page';
	String get hintPhone => 'Phone';
	String get hintCaptcha => 'Captcha';
	String get btLogin => 'Login';
}

// Path: <root>
class _TranslationsCn implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsCn.build({PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: _cardinalResolver = cardinalResolver,
		  _ordinalResolver = ordinalResolver;

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	// ignore: unused_field
	final PluralResolver? _cardinalResolver;
	// ignore: unused_field
	final PluralResolver? _ordinalResolver;

	// ignore: unused_field
	@override late final _TranslationsCn _root = this;

	// Translations
	@override late final _TranslationsMainScreenCn mainScreen = _TranslationsMainScreenCn._(_root);
	@override late final _TranslationsLocalesCn locales = _TranslationsLocalesCn._(_root);
	@override late final _TranslationsLoginPageCn loginPage = _TranslationsLoginPageCn._(_root);
}

// Path: mainScreen
class _TranslationsMainScreenCn implements _TranslationsMainScreenEn {
	_TranslationsMainScreenCn._(this._root);

	// ignore: unused_field
	@override final _TranslationsCn _root;

	// Translations
	@override String get title => 'Ein deutscher Titel';
	@override String counter({required num count}) => (_root._cardinalResolver ?? _missingPluralResolver('cn'))(count,
		one: 'Du hast einmal gedrückt.',
		other: 'Du hast $count mal gedrückt.',
	);
	@override String get tapMe => 'Drück mich';
}

// Path: locales
class _TranslationsLocalesCn implements _TranslationsLocalesEn {
	_TranslationsLocalesCn._(this._root);

	// ignore: unused_field
	@override final _TranslationsCn _root;

	// Translations
	@override String get en => 'Englisch';
	@override String get de => 'Deutsch';
}

// Path: loginPage
class _TranslationsLoginPageCn implements _TranslationsLoginPageEn {
	_TranslationsLoginPageCn._(this._root);

	// ignore: unused_field
	@override final _TranslationsCn _root;

	// Translations
	@override String get title => '登录页';
	@override String get hintPhone => '手机号';
	@override String get hintCaptcha => '验证码';
	@override String get btLogin => '登录';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	Map<String, dynamic> _buildFlatMap() {
		return {
			'mainScreen.title': 'An English Title',
			'mainScreen.counter': ({required num count}) => (_root._cardinalResolver ?? _pluralCardinalEn)(count,
				one: 'You pressed $count time.',
				other: 'You pressed $count times.',
			),
			'mainScreen.tapMe': 'Tap me',
			'locales.en': 'English',
			'locales.de': 'German',
			'loginPage.title': 'Login Page',
			'loginPage.hintPhone': 'Phone',
			'loginPage.hintCaptcha': 'Captcha',
			'loginPage.btLogin': 'Login',
		};
	}
}

extension on _TranslationsCn {
	Map<String, dynamic> _buildFlatMap() {
		return {
			'mainScreen.title': 'Ein deutscher Titel',
			'mainScreen.counter': ({required num count}) => (_root._cardinalResolver ?? _missingPluralResolver('cn'))(count,
				one: 'Du hast einmal gedrückt.',
				other: 'Du hast $count mal gedrückt.',
			),
			'mainScreen.tapMe': 'Drück mich',
			'locales.en': 'Englisch',
			'locales.de': 'Deutsch',
			'loginPage.title': '登录页',
			'loginPage.hintPhone': '手机号',
			'loginPage.hintCaptcha': '验证码',
			'loginPage.btLogin': '登录',
		};
	}
}