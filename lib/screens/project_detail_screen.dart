import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/models/project.dart';

class ProjectDetailScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Project Detail')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (project.projectImageUrl.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  project.projectImageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text('Failed to load project image.');
                  },
                ),
              ),

            const SizedBox(height: 16),

            Text(
              project.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 12),

            Text('Description', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(project.description),

            const SizedBox(height: 16),

            Text('Tech Stack', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(project.techStack),

            const SizedBox(height: 16),

            Text('Project URL', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            SelectableText(project.projectUrl),
          ],
        ),
      ),
    );
  }
}
