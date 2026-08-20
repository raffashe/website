class ProjectEntry {
  const ProjectEntry({
    required this.title,
    required this.description,
    required this.image,
    required this.url,
    this.isFeatured = true,
  });

  final String title;
  final String description;
  final String image;
  final String url;
  final bool isFeatured;
}
