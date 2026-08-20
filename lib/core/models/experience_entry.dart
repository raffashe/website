class ExperienceEntry {
  const ExperienceEntry({
    required this.company,
    required this.role,
    required this.period,
    required this.summary,
    this.highlights = '',
  });

  final String company;
  final String role;
  final String period;
  final String summary;
  final String highlights;
}
