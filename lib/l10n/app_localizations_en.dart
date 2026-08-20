// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Raffaela Castro — Portfolio';

  @override
  String get languageEnglish => 'English';

  @override
  String get languagePortuguese => 'Português';

  @override
  String errorCouldNotOpenLink(String url) {
    return 'Could not open link: $url';
  }

  @override
  String get splashWelcome => 'Welcome to my portfolio.';

  @override
  String get splashAuthor => 'By Raffaela Castro';

  @override
  String get heroName => 'Raffaela Castro';

  @override
  String get heroTitle => 'Software Engineer';

  @override
  String get heroSubtitle =>
      'Focused on Mobile Engineering with Flutter and Dart, building reliable products with strong architecture, backend integration, and observability.';

  @override
  String get heroChipSoftwareEngineer => 'Software Engineer';

  @override
  String get heroChipMobileEngineering => 'Mobile Engineering';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutDescription =>
      'Computer Engineer and Software Engineer with a focus on Mobile Engineering. I currently work at Serasa Experian as a Software Engineer II, developing and evolving mobile products with Flutter, Clean Architecture, and Cubit.\n\nI joined as a Software Engineer I and progressed to a mid-level role with greater autonomy, technical decision-making, and cross-functional collaboration with backend, QA, and product teams.\n\nMy background spans native integrations, computer vision, and backend-facing mobile work. I aim to grow into a Senior Software Engineer role and expand my impact across architecture, cloud, and distributed systems — while keeping mobile engineering at the core of my practice.';

  @override
  String get experienceTitle => 'Professional Experience';

  @override
  String get experienceSerasaSe2Role =>
      'Software Engineer II / Mobile Engineer';

  @override
  String get experienceSerasaSe2Period => '2025 — Present';

  @override
  String get experienceSerasaSe2Summary =>
      'Mobile Engineer working on the development and evolution of production mobile products using Flutter and Dart.';

  @override
  String get experienceSerasaSe2Highlights =>
      '• Flutter / Dart\n• Clean Architecture\n• Cubit\n• BFF and REST APIs\n• Observability with Datadog\n• Firebase Crashlytics / Analytics\n• Accessibility and Design System\n• Collaboration with Backend, QA and Product\n• Technical discussions and increasing ownership';

  @override
  String get experienceSerasaSe1Role => 'Software Engineer I / Mobile Engineer';

  @override
  String get experienceSerasaSe1Period => 'Previous role at Serasa Experian';

  @override
  String get experienceSerasaSe1Summary =>
      'Started my professional journey at Serasa Experian developing and evolving mobile applications with Flutter.';

  @override
  String get experienceSerasaSe1Highlights =>
      '• Flutter / Dart\n• Mobile UI and user flows\n• API integration\n• Clean Architecture\n• Modularization\n• Accessibility\n• Production-quality mobile development';

  @override
  String get experiencePixForceRole =>
      'Software Application Developer / Mobile Engineer';

  @override
  String get experiencePixForcePeriod =>
      'Advanced mobile & computer vision projects';

  @override
  String get experiencePixForceSummary =>
      'Mobile Engineer on technically advanced projects combining Flutter, native integrations, computer vision, and real-time systems.';

  @override
  String get experiencePixForceHighlights =>
      '• Computer vision integrated into mobile applications\n• OpenCV and ROS\n• Real-time image streaming and processing\n• Native Android/iOS integrations\n• Flutter plugins and Method Channels\n• Smartwatch app integrated with an external/web platform\n• Embedded systems and real-time data monitoring\n• AI-assisted image processing';

  @override
  String get experienceEscolaDeGenteRole =>
      'Software Application Developer / Mobile Engineer';

  @override
  String get experienceEscolaDeGentePeriod => 'Vem Cá · Accessibility';

  @override
  String get experienceEscolaDeGenteSummary =>
      'Mobile Engineer on the Vem Cá app, focused on accessibility and inclusive technology in production.';

  @override
  String get experienceEscolaDeGenteHighlights =>
      '• Migration/redevelopment from Xamarin to Flutter\n• Digital accessibility\n• Accessible UX/UI\n• Inclusive technology\n• Production mobile application\n• Flutter';

  @override
  String get experienceAcconTechRole =>
      'Software Application Developer / Mobile Engineer';

  @override
  String get experienceAcconTechPeriod =>
      'Software house — international client';

  @override
  String get experienceAcconTechSummary =>
      'Mobile Engineer on a Flutter application for an international client, with real-time features and location-based functionality.';

  @override
  String get experienceAcconTechHighlights =>
      '• Flutter\n• REST/API integration\n• Real-time chat using WebSockets\n• Dynamic maps / Google Maps integration\n• Geolocation\n• Distance-based filtering\n• User profiles\n• Authentication\n• Subscription functionality';

  @override
  String get experienceInfogenesesRole =>
      'Software Developer / Mobile Engineer';

  @override
  String get experienceInfogenesesPeriod =>
      'First professional role after graduation';

  @override
  String get experienceInfogenesesSummary =>
      'Mobile Engineer delivering Flutter applications with architecture, integrations, and technical coordination.';

  @override
  String get experienceInfogenesesHighlights =>
      '• Flutter\n• Mobile application development\n• Software architecture\n• CI/CD\n• Database integration\n• Banking integrations\n• Technical leadership / coordination\n• Requirements analysis';

  @override
  String get experienceInternshipCompany => 'Academic experience';

  @override
  String get experienceInternshipRole => 'Software Development Intern';

  @override
  String get experienceInternshipPeriod => 'During undergraduate studies';

  @override
  String get experienceInternshipSummary =>
      'Mandatory software development internship during my Computer Engineering degree.';

  @override
  String get experienceAcademicFrontendCompany => 'Academic startup project';

  @override
  String get experienceAcademicFrontendRole => 'Frontend Engineer';

  @override
  String get experienceAcademicFrontendPeriod => 'Academic project';

  @override
  String get experienceAcademicFrontendSummary =>
      'Frontend development with HTML5, CSS3, JavaScript, Node.js, and Figma.';

  @override
  String get projectsTitle => 'Selected Projects';

  @override
  String get projectChatDescription =>
      'Real-time chat application integrated with Firebase.';

  @override
  String get projectDetectorPyDescription =>
      'Real-time object detection project using the YOLOv8 model.';

  @override
  String get projectPopcornDescription =>
      'Movie app for discovering titles, favoriting, giving feedback, storing preferences locally, and displaying results in cards.';

  @override
  String get projectFaceRecPyDescription =>
      'Facial detection project using Python, OpenCV, MediaPipe, and CVZone.';

  @override
  String get skillsTitle => 'Technical Skills';

  @override
  String get skillsCategoryCoreMobile => 'Core & Mobile';

  @override
  String get skillsCategoryArchitecture => 'Architecture';

  @override
  String get skillsCategoryBackendCloud => 'Backend & Cloud';

  @override
  String get skillsCategoryObservability => 'Observability';

  @override
  String get skillsCategoryAiComputerVision => 'AI & Computer Vision';

  @override
  String get skillsCategoryDevOps => 'Development & DevOps';

  @override
  String get educationTitle => 'Education';

  @override
  String get educationBachelorPeriod => '2016 — 2021';

  @override
  String get educationBachelorTitle =>
      'Bachelor\'s Degree in Computer Engineering';

  @override
  String get educationBachelorDescription => 'Universidade CEUMA';

  @override
  String get educationPostgradPeriod => '2024';

  @override
  String get educationPostgradTitle =>
      'Postgraduate in Neuroscience, Neuroengineering and Neurorobotics';

  @override
  String get educationPostgradDescription => 'Unyleya';

  @override
  String get educationTechnicalPeriod => '2014 — 2016';

  @override
  String get educationTechnicalTitle => 'Technical Degree in Web Development';

  @override
  String get educationTechnicalDescription =>
      'Instituto Federal de Educação, Ciência e Tecnologia do Maranhão (IFMA)';

  @override
  String get contactTitle => 'Contact';

  @override
  String get contactGithub => 'GitHub';

  @override
  String get contactGithubHandle => 'github.com/raffashe';

  @override
  String get contactLinkedin => 'LinkedIn';

  @override
  String get contactLinkedinHandle => 'linkedin.com/in/raffashe/';

  @override
  String get footerBrand => 'Raffaela Castro';
}
