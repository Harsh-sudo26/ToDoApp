import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/themeprovider.dart';
import 'package:todoapp/widget/SettingsTile.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cardColor = Theme.of(context).cardColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        iconTheme: IconThemeData(
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      body: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          final textColor = Theme.of(context).textTheme.bodyLarge?.color;

          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 10),
            children: [
             const SectionTitle("User Profile"),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                color: cardColor,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: cardColor.withOpacity(0.5),
                    child: Icon(Icons.person, color: textColor),
                  ),
                  title: Text(
                    "Alex Thompson",
                    style: TextStyle(color: textColor),
                  ),
                  subtitle: Text(
                    "alex.thompson@example.com",
                    style: TextStyle(color: textColor?.withOpacity(0.7)),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: textColor),
                ),
              ),

             const SectionTitle("App Settings"),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                color: cardColor,
                child: Column(
                  children: [
                    SettingsTile(
                      icon: Icons.notifications,
                      title: "Push Notifications",
                      trailing: Switch(
                        value: false,
                        onChanged: (_) {},
                      ),
                      ontap: () {},
                      color: cardColor,
                      textColor: textColor ?? Colors.blue,
                    ),
                    SettingsTile(
                      icon: Icons.dark_mode,
                      title: "Dark Mode",
                      trailing: Switch(
                        value: themeProvider.isDarkMode,
                        onChanged: themeProvider.toggleTheme,
                      ),
                      ontap: () {},
                      color: cardColor,
                      textColor: textColor ?? Colors.blue,
                    ),
                  ],
                ),
              ),

             const SectionTitle("Account"),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                color: cardColor,
                child: Column(
                  children: [
                    SettingsTile(
                      icon: Icons.lock,
                      title: "Change Password",
                      ontap: () {},
                      color: cardColor,
                      trailing: Icon(Icons.lock, color: textColor),
                      textColor: textColor ?? Colors.blue,
                    ),
                    const Divider(),
                    SettingsTile(
                      icon: Icons.logout,
                      title: "Log out",
                      ontap: () {},
                      color: cardColor,
                      trailing: Icon(Icons.logout, color: Colors.red),
                      textColor: Colors.red,
                    ),
                  ],
                ),
              ),

             const  SectionTitle("Support"),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                color: cardColor,
                child: Column(
                  children: [
                    SettingsTile(
                      icon: Icons.help,
                      title: "Help Center",
                      ontap: () {},
                      color: cardColor,
                      trailing: Icon(Icons.arrow_forward_ios, color: textColor),
                      textColor: textColor ?? Colors.blue,
                    ),
                    SettingsTile(
                      icon: Icons.privacy_tip,
                      title: "Privacy Policy",
                      ontap: () {},
                      color: cardColor,
                      trailing: Icon(Icons.arrow_forward_ios, color: textColor),
                      textColor: textColor ?? Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}