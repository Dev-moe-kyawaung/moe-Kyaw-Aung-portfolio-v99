import '../models/profile_model.dart';
import '../models/project_model.dart';
import '../models/achievement_model.dart';
import '../models/social_link_model.dart';
import '../models/service_model.dart';
import '../models/profile_model.dart';

class PortfolioDataSource {
  Future<ProfileModel> getProfile() async {
    // In real app, fetch from Firebase or JSON
    return ProfileModel(
      name: 'Moe Kyaw Aung',
      tagline: 'Senior Android Developer',
      yearsExperience: 12,
      location: 'Tachileik, Myanmar ↔ Bangkok, Thailand',
      languages: 'Burmese 🇲🇲, English 🌐, Kotlin ☕',
      profileImage: 'assets/profile.png',
    );
  }

  Future<List<ProjectModel>> getProjects() async {
    // Return from assets/projects.json or Firebase
    return [
      ProjectModel(id: 1, title: 'Social Dashboard', image: 'assets/projects/social_dashboard.jpg', github: 'https://github.com/moekyawaung-tech/social-dashboard', tech: 'Flutter • Firebase', description: 'Modern analytics dashboard with real-time data.'),
    ];
  }

  Future<List<AchievementModel>> getAchievements() async {
    return [
      AchievementModel(id: 1, title: '500K+ Downloads', value: '500K', unit: 'downloads'),
      // ... (add more from achievements.json)
    ];
  }

  Future<List<ServiceModel>> getServices() async {
    return [
      ServiceModel(id: 1, title: 'Code Review', price: '$299', description: 'Architecture analysis & performance audit'),
    ];
  }

  Future<List<SocialLinkModel>> getSocialLinks() async {
    return [
      SocialLinkModel(name: 'GitHub', url: 'https://github.com/Dev-moe-kyawaung/', icon: 'github'),
    ];
  }
}
