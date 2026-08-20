import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
    Locale('pt', 'BR')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Raffaela Castro — Portfolio'**
  String get appTitle;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languagePortuguese.
  ///
  /// In en, this message translates to:
  /// **'Português'**
  String get languagePortuguese;

  /// No description provided for @errorCouldNotOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Could not open link: {url}'**
  String errorCouldNotOpenLink(String url);

  /// No description provided for @splashWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to my portfolio.'**
  String get splashWelcome;

  /// No description provided for @splashAuthor.
  ///
  /// In en, this message translates to:
  /// **'By Raffaela Castro'**
  String get splashAuthor;

  /// No description provided for @heroName.
  ///
  /// In en, this message translates to:
  /// **'Raffaela Castro'**
  String get heroName;

  /// No description provided for @heroTitle.
  ///
  /// In en, this message translates to:
  /// **'Software Engineer'**
  String get heroTitle;

  /// No description provided for @heroSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Focused on Mobile Engineering with Flutter and Dart, building reliable products with strong architecture, backend integration, and observability.'**
  String get heroSubtitle;

  /// No description provided for @heroChipSoftwareEngineer.
  ///
  /// In en, this message translates to:
  /// **'Software Engineer'**
  String get heroChipSoftwareEngineer;

  /// No description provided for @heroChipMobileEngineering.
  ///
  /// In en, this message translates to:
  /// **'Mobile Engineering'**
  String get heroChipMobileEngineering;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'Computer Engineer and Software Engineer with a focus on Mobile Engineering. I currently work at Serasa Experian as a Software Engineer II, developing and evolving mobile products with Flutter, Clean Architecture, and Cubit.\n\nI joined as a Software Engineer I and progressed to a mid-level role with greater autonomy, technical decision-making, and cross-functional collaboration with backend, QA, and product teams.\n\nMy background spans native integrations, computer vision, and backend-facing mobile work. I aim to grow into a Senior Software Engineer role and expand my impact across architecture, cloud, and distributed systems — while keeping mobile engineering at the core of my practice.'**
  String get aboutDescription;

  /// No description provided for @experienceTitle.
  ///
  /// In en, this message translates to:
  /// **'Professional Experience'**
  String get experienceTitle;

  /// No description provided for @experienceSerasaSe2Role.
  ///
  /// In en, this message translates to:
  /// **'Software Engineer II / Mobile Engineer'**
  String get experienceSerasaSe2Role;

  /// No description provided for @experienceSerasaSe2Period.
  ///
  /// In en, this message translates to:
  /// **'2025 — Present'**
  String get experienceSerasaSe2Period;

  /// No description provided for @experienceSerasaSe2Summary.
  ///
  /// In en, this message translates to:
  /// **'Mobile Engineer working on the development and evolution of production mobile products using Flutter and Dart.'**
  String get experienceSerasaSe2Summary;

  /// No description provided for @experienceSerasaSe2Highlights.
  ///
  /// In en, this message translates to:
  /// **'• Flutter / Dart\n• Clean Architecture\n• Cubit\n• BFF and REST APIs\n• Observability with Datadog\n• Firebase Crashlytics / Analytics\n• Accessibility and Design System\n• Collaboration with Backend, QA and Product\n• Technical discussions and increasing ownership'**
  String get experienceSerasaSe2Highlights;

  /// No description provided for @experienceSerasaSe1Role.
  ///
  /// In en, this message translates to:
  /// **'Software Engineer I / Mobile Engineer'**
  String get experienceSerasaSe1Role;

  /// No description provided for @experienceSerasaSe1Period.
  ///
  /// In en, this message translates to:
  /// **'Previous role at Serasa Experian'**
  String get experienceSerasaSe1Period;

  /// No description provided for @experienceSerasaSe1Summary.
  ///
  /// In en, this message translates to:
  /// **'Started my professional journey at Serasa Experian developing and evolving mobile applications with Flutter.'**
  String get experienceSerasaSe1Summary;

  /// No description provided for @experienceSerasaSe1Highlights.
  ///
  /// In en, this message translates to:
  /// **'• Flutter / Dart\n• Mobile UI and user flows\n• API integration\n• Clean Architecture\n• Modularization\n• Accessibility\n• Production-quality mobile development'**
  String get experienceSerasaSe1Highlights;

  /// No description provided for @experiencePixForceRole.
  ///
  /// In en, this message translates to:
  /// **'Software Application Developer / Mobile Engineer'**
  String get experiencePixForceRole;

  /// No description provided for @experiencePixForcePeriod.
  ///
  /// In en, this message translates to:
  /// **'Advanced mobile & computer vision projects'**
  String get experiencePixForcePeriod;

  /// No description provided for @experiencePixForceSummary.
  ///
  /// In en, this message translates to:
  /// **'Mobile Engineer on technically advanced projects combining Flutter, native integrations, computer vision, and real-time systems.'**
  String get experiencePixForceSummary;

  /// No description provided for @experiencePixForceHighlights.
  ///
  /// In en, this message translates to:
  /// **'• Computer vision integrated into mobile applications\n• OpenCV and ROS\n• Real-time image streaming and processing\n• Native Android/iOS integrations\n• Flutter plugins and Method Channels\n• Smartwatch app integrated with an external/web platform\n• Embedded systems and real-time data monitoring\n• AI-assisted image processing'**
  String get experiencePixForceHighlights;

  /// No description provided for @experienceEscolaDeGenteRole.
  ///
  /// In en, this message translates to:
  /// **'Software Application Developer / Mobile Engineer'**
  String get experienceEscolaDeGenteRole;

  /// No description provided for @experienceEscolaDeGentePeriod.
  ///
  /// In en, this message translates to:
  /// **'Vem Cá · Accessibility'**
  String get experienceEscolaDeGentePeriod;

  /// No description provided for @experienceEscolaDeGenteSummary.
  ///
  /// In en, this message translates to:
  /// **'Mobile Engineer on the Vem Cá app, focused on accessibility and inclusive technology in production.'**
  String get experienceEscolaDeGenteSummary;

  /// No description provided for @experienceEscolaDeGenteHighlights.
  ///
  /// In en, this message translates to:
  /// **'• Migration/redevelopment from Xamarin to Flutter\n• Digital accessibility\n• Accessible UX/UI\n• Inclusive technology\n• Production mobile application\n• Flutter'**
  String get experienceEscolaDeGenteHighlights;

  /// No description provided for @experienceAcconTechRole.
  ///
  /// In en, this message translates to:
  /// **'Software Application Developer / Mobile Engineer'**
  String get experienceAcconTechRole;

  /// No description provided for @experienceAcconTechPeriod.
  ///
  /// In en, this message translates to:
  /// **'Software house — international client'**
  String get experienceAcconTechPeriod;

  /// No description provided for @experienceAcconTechSummary.
  ///
  /// In en, this message translates to:
  /// **'Mobile Engineer on a Flutter application for an international client, with real-time features and location-based functionality.'**
  String get experienceAcconTechSummary;

  /// No description provided for @experienceAcconTechHighlights.
  ///
  /// In en, this message translates to:
  /// **'• Flutter\n• REST/API integration\n• Real-time chat using WebSockets\n• Dynamic maps / Google Maps integration\n• Geolocation\n• Distance-based filtering\n• User profiles\n• Authentication\n• Subscription functionality'**
  String get experienceAcconTechHighlights;

  /// No description provided for @experienceInfogenesesRole.
  ///
  /// In en, this message translates to:
  /// **'Software Developer / Mobile Engineer'**
  String get experienceInfogenesesRole;

  /// No description provided for @experienceInfogenesesPeriod.
  ///
  /// In en, this message translates to:
  /// **'First professional role after graduation'**
  String get experienceInfogenesesPeriod;

  /// No description provided for @experienceInfogenesesSummary.
  ///
  /// In en, this message translates to:
  /// **'Mobile Engineer delivering Flutter applications with architecture, integrations, and technical coordination.'**
  String get experienceInfogenesesSummary;

  /// No description provided for @experienceInfogenesesHighlights.
  ///
  /// In en, this message translates to:
  /// **'• Flutter\n• Mobile application development\n• Software architecture\n• CI/CD\n• Database integration\n• Banking integrations\n• Technical leadership / coordination\n• Requirements analysis'**
  String get experienceInfogenesesHighlights;

  /// No description provided for @experienceInternshipCompany.
  ///
  /// In en, this message translates to:
  /// **'Academic experience'**
  String get experienceInternshipCompany;

  /// No description provided for @experienceInternshipRole.
  ///
  /// In en, this message translates to:
  /// **'Software Development Intern'**
  String get experienceInternshipRole;

  /// No description provided for @experienceInternshipPeriod.
  ///
  /// In en, this message translates to:
  /// **'During undergraduate studies'**
  String get experienceInternshipPeriod;

  /// No description provided for @experienceInternshipSummary.
  ///
  /// In en, this message translates to:
  /// **'Mandatory software development internship during my Computer Engineering degree.'**
  String get experienceInternshipSummary;

  /// No description provided for @experienceAcademicFrontendCompany.
  ///
  /// In en, this message translates to:
  /// **'Academic startup project'**
  String get experienceAcademicFrontendCompany;

  /// No description provided for @experienceAcademicFrontendRole.
  ///
  /// In en, this message translates to:
  /// **'Frontend Engineer'**
  String get experienceAcademicFrontendRole;

  /// No description provided for @experienceAcademicFrontendPeriod.
  ///
  /// In en, this message translates to:
  /// **'Academic project'**
  String get experienceAcademicFrontendPeriod;

  /// No description provided for @experienceAcademicFrontendSummary.
  ///
  /// In en, this message translates to:
  /// **'Frontend development with HTML5, CSS3, JavaScript, Node.js, and Figma.'**
  String get experienceAcademicFrontendSummary;

  /// No description provided for @projectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Selected Projects'**
  String get projectsTitle;

  /// No description provided for @projectChatDescription.
  ///
  /// In en, this message translates to:
  /// **'Real-time chat application integrated with Firebase.'**
  String get projectChatDescription;

  /// No description provided for @projectDetectorPyDescription.
  ///
  /// In en, this message translates to:
  /// **'Real-time object detection project using the YOLOv8 model.'**
  String get projectDetectorPyDescription;

  /// No description provided for @projectPopcornDescription.
  ///
  /// In en, this message translates to:
  /// **'Movie app for discovering titles, favoriting, giving feedback, storing preferences locally, and displaying results in cards.'**
  String get projectPopcornDescription;

  /// No description provided for @projectFaceRecPyDescription.
  ///
  /// In en, this message translates to:
  /// **'Facial detection project using Python, OpenCV, MediaPipe, and CVZone.'**
  String get projectFaceRecPyDescription;

  /// No description provided for @skillsTitle.
  ///
  /// In en, this message translates to:
  /// **'Technical Skills'**
  String get skillsTitle;

  /// No description provided for @skillsCategoryCoreMobile.
  ///
  /// In en, this message translates to:
  /// **'Core & Mobile'**
  String get skillsCategoryCoreMobile;

  /// No description provided for @skillsCategoryArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get skillsCategoryArchitecture;

  /// No description provided for @skillsCategoryBackendCloud.
  ///
  /// In en, this message translates to:
  /// **'Backend & Cloud'**
  String get skillsCategoryBackendCloud;

  /// No description provided for @skillsCategoryObservability.
  ///
  /// In en, this message translates to:
  /// **'Observability'**
  String get skillsCategoryObservability;

  /// No description provided for @skillsCategoryAiComputerVision.
  ///
  /// In en, this message translates to:
  /// **'AI & Computer Vision'**
  String get skillsCategoryAiComputerVision;

  /// No description provided for @skillsCategoryDevOps.
  ///
  /// In en, this message translates to:
  /// **'Development & DevOps'**
  String get skillsCategoryDevOps;

  /// No description provided for @educationTitle.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educationTitle;

  /// No description provided for @educationBachelorPeriod.
  ///
  /// In en, this message translates to:
  /// **'2016 — 2021'**
  String get educationBachelorPeriod;

  /// No description provided for @educationBachelorTitle.
  ///
  /// In en, this message translates to:
  /// **'Bachelor\'s Degree in Computer Engineering'**
  String get educationBachelorTitle;

  /// No description provided for @educationBachelorDescription.
  ///
  /// In en, this message translates to:
  /// **'Universidade CEUMA'**
  String get educationBachelorDescription;

  /// No description provided for @educationPostgradPeriod.
  ///
  /// In en, this message translates to:
  /// **'2024'**
  String get educationPostgradPeriod;

  /// No description provided for @educationPostgradTitle.
  ///
  /// In en, this message translates to:
  /// **'Postgraduate in Neuroscience, Neuroengineering and Neurorobotics'**
  String get educationPostgradTitle;

  /// No description provided for @educationPostgradDescription.
  ///
  /// In en, this message translates to:
  /// **'Unyleya'**
  String get educationPostgradDescription;

  /// No description provided for @educationTechnicalPeriod.
  ///
  /// In en, this message translates to:
  /// **'2014 — 2016'**
  String get educationTechnicalPeriod;

  /// No description provided for @educationTechnicalTitle.
  ///
  /// In en, this message translates to:
  /// **'Technical Degree in Web Development'**
  String get educationTechnicalTitle;

  /// No description provided for @educationTechnicalDescription.
  ///
  /// In en, this message translates to:
  /// **'Instituto Federal de Educação, Ciência e Tecnologia do Maranhão (IFMA)'**
  String get educationTechnicalDescription;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contactTitle;

  /// No description provided for @contactGithub.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get contactGithub;

  /// No description provided for @contactGithubHandle.
  ///
  /// In en, this message translates to:
  /// **'github.com/raffashe'**
  String get contactGithubHandle;

  /// No description provided for @contactLinkedin.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get contactLinkedin;

  /// No description provided for @contactLinkedinHandle.
  ///
  /// In en, this message translates to:
  /// **'linkedin.com/in/raffashe/'**
  String get contactLinkedinHandle;

  /// No description provided for @footerBrand.
  ///
  /// In en, this message translates to:
  /// **'Raffaela Castro'**
  String get footerBrand;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
