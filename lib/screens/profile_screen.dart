import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary.withValues(alpha: 0.05),
      appBar: AppBar(
        leading: IconButton(
          tooltip: 'Profile',
          icon: const Icon(Icons.person),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            tooltip: 'Settings',
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            children: [
              // Header Section
              _buildProfileHeader(),
              const SizedBox(height: 28),

              // Account Settings Section
              _buildSectionTitle('Account Settings'),
              const SizedBox(height: 12),
              _buildCardContainer(
                children: [
                  _buildListTile(
                    icon: Icons.person_outline,
                    title: 'Edit Profile',
                    subtitle: 'Update your personal information',
                    onTap: () {},
                  ),
                  const Divider(height: 1, indent: 16, endIndent: 16),
                  _buildListTile(
                    icon: Icons.lock_outline,
                    title: 'Change Password',
                    subtitle: 'Update and secure your password',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),

              _buildSectionTitle('Preferences'),
              const SizedBox(height: 12),
              _buildCardContainer(
                children: [
                  _buildListTile(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notifications',
                    subtitle: 'Manage your alerts and news',
                    onTap: () {},
                  ),
                  const Divider(height: 1, indent: 16, endIndent: 16),
                  _buildListTile(
                    icon: Icons.language_outlined,
                    title: 'Language',
                    subtitle: 'English (US)',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // 4. Logout Button
              _buildLogoutButton(
                onPressed: () {
                  // Handle Logout logic
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// ส่วนแสดงรูปโปรไฟล์
  Widget _buildProfileHeader() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.primary, width: 3),
              ),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.primary,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text('Chaiwat', style: AppTextStyles.heading1),
        const SizedBox(height: 4),
        Text(
          'Chaiwat@gmail.com',
          style: AppTextStyles.heading3.copyWith(
            color: AppColors.textSecondary,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  /// หัวข้อกลุ่มเมนู
  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(title, style: AppTextStyles.heading1.copyWith(fontSize: 18)),
    );
  }

  /// กล่องการ์ดครอบเมนูย่อย
  Widget _buildCardContainer({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }

  /// สร้างรายการเมนูแบบมาตรฐาน
  Widget _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppColors.primary, size: 22),
      ),
      title: Text(title, style: AppTextStyles.heading3),
      subtitle: Text(
        subtitle,
        style: AppTextStyles.heading3.copyWith(
          color: AppColors.textSecondary,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 16,
      ),
      onTap: onTap,
    );
  }

  /// ปุ่มออกจากระบบ
  Widget _buildLogoutButton({required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.redAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        icon: const Icon(Icons.logout, color: Colors.redAccent),
        label: const Text(
          'Log Out',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
