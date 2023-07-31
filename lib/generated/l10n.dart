// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Not Connected`
  String get notConnected {
    return Intl.message(
      'Not Connected',
      name: 'notConnected',
      desc: '',
      args: [],
    );
  }

  /// `Connecting`
  String get connecting {
    return Intl.message(
      'Connecting',
      name: 'connecting',
      desc: '',
      args: [],
    );
  }

  /// `Connected`
  String get connected {
    return Intl.message(
      'Connected',
      name: 'connected',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get start {
    return Intl.message(
      'START',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `STOP`
  String get stop {
    return Intl.message(
      'STOP',
      name: 'stop',
      desc: '',
      args: [],
    );
  }

  /// `WAIT`
  String get wait {
    return Intl.message(
      'WAIT',
      name: 'wait',
      desc: '',
      args: [],
    );
  }

  /// `Select Location`
  String get selectLocation {
    return Intl.message(
      'Select Location',
      name: 'selectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Your Privacy is Important`
  String get yourPrivacy {
    return Intl.message(
      'Your Privacy is Important',
      name: 'yourPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Term of Use`
  String get term {
    return Intl.message(
      'Term of Use',
      name: 'term',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get OK {
    return Intl.message(
      'OK',
      name: 'OK',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Classic Fast VPN - Secure app collects a limited amount of data to offer you a fast and reliable VPN service.\nExamples of information we collect when you use this app:\n• Device-specific information like OS version, hardware model and IP address to optimize our network connection to you and ensure quality of service.\n• Aggregated, anonymized activity data, to perform analytics on our service, share insights about usage, and to ensure you can reliably access certain websites or apps.\n• Total bandwidth consumed and time connected to our VPN service \n• Payment information and optional email, when you purchase a paid plan.\nFull details about the data we collect and how we process it are available in our Privacy Policy.\n`
  String get privacy {
    return Intl.message(
      'Classic Fast VPN - Secure app collects a limited amount of data to offer you a fast and reliable VPN service.\nExamples of information we collect when you use this app:\n• Device-specific information like OS version, hardware model and IP address to optimize our network connection to you and ensure quality of service.\n• Aggregated, anonymized activity data, to perform analytics on our service, share insights about usage, and to ensure you can reliably access certain websites or apps.\n• Total bandwidth consumed and time connected to our VPN service \n• Payment information and optional email, when you purchase a paid plan.\nFull details about the data we collect and how we process it are available in our Privacy Policy.\n',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `View Profile`
  String get viewProfile {
    return Intl.message(
      'View Profile',
      name: 'viewProfile',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get profile {
    return Intl.message(
      'profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `BYTES IN`
  String get bIn {
    return Intl.message(
      'BYTES IN',
      name: 'bIn',
      desc: '',
      args: [],
    );
  }

  /// `BYTES OUT`
  String get bOut {
    return Intl.message(
      'BYTES OUT',
      name: 'bOut',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `PACKET RECEIVED`
  String get packetReceivied {
    return Intl.message(
      'PACKET RECEIVED',
      name: 'packetReceivied',
      desc: '',
      args: [],
    );
  }

  /// `YOUR PRIVATE IP`
  String get yourPrivateId {
    return Intl.message(
      'YOUR PRIVATE IP',
      name: 'yourPrivateId',
      desc: '',
      args: [],
    );
  }

  /// `SERVER`
  String get sever {
    return Intl.message(
      'SERVER',
      name: 'sever',
      desc: '',
      args: [],
    );
  }

  /// `SERVER PUBLIC IP`
  String get serverPublic {
    return Intl.message(
      'SERVER PUBLIC IP',
      name: 'serverPublic',
      desc: '',
      args: [],
    );
  }

  /// `GO`
  String get go {
    return Intl.message(
      'GO',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `Classic Fast`
  String get hello {
    return Intl.message(
      'Classic Fast',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Classic Fast VPN`
  String get helloVpn {
    return Intl.message(
      'Classic Fast VPN',
      name: 'helloVpn',
      desc: '',
      args: [],
    );
  }

  /// `Speed Test`
  String get speedTest {
    return Intl.message(
      'Speed Test',
      name: 'speedTest',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Disconnect VPN`
  String get disconnectVPN {
    return Intl.message(
      'Disconnect VPN',
      name: 'disconnectVPN',
      desc: '',
      args: [],
    );
  }

  /// `Please register premium`
  String get pleasePremium {
    return Intl.message(
      'Please register premium',
      name: 'pleasePremium',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `SPEED`
  String get speed {
    return Intl.message(
      'SPEED',
      name: 'speed',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, disconnect with test server`
  String get sorrydis {
    return Intl.message(
      'Sorry, disconnect with test server',
      name: 'sorrydis',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Connections`
  String get connection {
    return Intl.message(
      'Connections',
      name: 'connection',
      desc: '',
      args: [],
    );
  }

  /// `Get premium`
  String get getPremium {
    return Intl.message(
      'Get premium',
      name: 'getPremium',
      desc: '',
      args: [],
    );
  }

  /// `Unlimited & fast connection`
  String get unlimited {
    return Intl.message(
      'Unlimited & fast connection',
      name: 'unlimited',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get language {
    return Intl.message(
      'Languages',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Rate us on App Store`
  String get rate {
    return Intl.message(
      'Rate us on App Store',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Share app`
  String get shareApp {
    return Intl.message(
      'Share app',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `Terms of service`
  String get termsOfService {
    return Intl.message(
      'Terms of service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Japanese`
  String get japanese {
    return Intl.message(
      'Japanese',
      name: 'japanese',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Change to English `
  String get changeE {
    return Intl.message(
      'Change to English ',
      name: 'changeE',
      desc: '',
      args: [],
    );
  }

  /// `Change to Japanese`
  String get changeJ {
    return Intl.message(
      'Change to Japanese',
      name: 'changeJ',
      desc: '',
      args: [],
    );
  }

  /// `Sorry can't purchase now`
  String get sorryCant {
    return Intl.message(
      'Sorry can\'t purchase now',
      name: 'sorryCant',
      desc: '',
      args: [],
    );
  }

  /// `Can't purchase`
  String get cantPur {
    return Intl.message(
      'Can\'t purchase',
      name: 'cantPur',
      desc: '',
      args: [],
    );
  }

  /// `No past purchase`
  String get noPast {
    return Intl.message(
      'No past purchase',
      name: 'noPast',
      desc: '',
      args: [],
    );
  }

  /// `You are Premium`
  String get yourAreP {
    return Intl.message(
      'You are Premium',
      name: 'yourAreP',
      desc: '',
      args: [],
    );
  }

  /// `Restored your plan`
  String get restoreYouPlan {
    return Intl.message(
      'Restored your plan',
      name: 'restoreYouPlan',
      desc: '',
      args: [],
    );
  }

  /// `Something wrong`
  String get smthw {
    return Intl.message(
      'Something wrong',
      name: 'smthw',
      desc: '',
      args: [],
    );
  }

  /// `Join Premium Plan`
  String get joinP {
    return Intl.message(
      'Join Premium Plan',
      name: 'joinP',
      desc: '',
      args: [],
    );
  }

  /// `Unlock VPN Location`
  String get unlock {
    return Intl.message(
      'Unlock VPN Location',
      name: 'unlock',
      desc: '',
      args: [],
    );
  }

  /// `No ads`
  String get noAds {
    return Intl.message(
      'No ads',
      name: 'noAds',
      desc: '',
      args: [],
    );
  }

  /// `3 days free trial, renews at`
  String get days {
    return Intl.message(
      '3 days free trial, renews at',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `week`
  String get week {
    return Intl.message(
      'week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `month`
  String get month {
    return Intl.message(
      'month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `year`
  String get year {
    return Intl.message(
      'year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `You are Premium. Can't purchase`
  String get prePur {
    return Intl.message(
      'You are Premium. Can\'t purchase',
      name: 'prePur',
      desc: '',
      args: [],
    );
  }

  /// `Restore`
  String get restore {
    return Intl.message(
      'Restore',
      name: 'restore',
      desc: '',
      args: [],
    );
  }

  /// `Something error`
  String get smthe {
    return Intl.message(
      'Something error',
      name: 'smthe',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get ctn {
    return Intl.message(
      'Continue',
      name: 'ctn',
      desc: '',
      args: [],
    );
  }

  /// `after trial period`
  String get after {
    return Intl.message(
      'after trial period',
      name: 'after',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get french {
    return Intl.message(
      'French',
      name: 'french',
      desc: '',
      args: [],
    );
  }

  /// `Change to French`
  String get changeToFr {
    return Intl.message(
      'Change to French',
      name: 'changeToFr',
      desc: '',
      args: [],
    );
  }

  /// `Payment will be charged to iTunes Account at confirmation of purchase. To ensure uninterrupted service, all subscriptions are renewed automatically unless auto-renew is turned off at least 24-hours before the end of the current period. The account is charged for renewal within 24-hours before the end of the current period. Users can manage and cancel subscriptions in their account settings on the App Store. Please note that when your purchase a subscription, the sale is final, and we will not provide a refund. Your purchase will be subject to Apple's applicable payment policy, which also may not provide for refunds.`
  String get paymentWill {
    return Intl.message(
      'Payment will be charged to iTunes Account at confirmation of purchase. To ensure uninterrupted service, all subscriptions are renewed automatically unless auto-renew is turned off at least 24-hours before the end of the current period. The account is charged for renewal within 24-hours before the end of the current period. Users can manage and cancel subscriptions in their account settings on the App Store. Please note that when your purchase a subscription, the sale is final, and we will not provide a refund. Your purchase will be subject to Apple\'s applicable payment policy, which also may not provide for refunds.',
      name: 'paymentWill',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
