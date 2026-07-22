import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Profile Page', style: AppTextStyles.heading1),
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.primary,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),

          // Account Settings
          SizedBox(height: 20),
          Text('Account Settings', style: AppTextStyles.heading1),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.person, color: AppColors.primary),
                  title: Text('Edit Profile', style: AppTextStyles.heading3),
                  subtitle: Text('Update your personal information', style: AppTextStyles.heading3.copyWith(color: AppColors.textSecondary)),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.primary),
                  onTap: () {
                    // Navigate to Edit Profile Screen
                  },
                ),
                Divider(color: AppColors.primary),
                ListTile(
                  leading: Icon(Icons.lock, color: AppColors.primary),
                  title: Text('Change Password', style: AppTextStyles.heading3),
                  subtitle: Text('Update your password', style: AppTextStyles.heading3),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.primary),
                  onTap: () {
                    // Navigate to Change Password Screen
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}