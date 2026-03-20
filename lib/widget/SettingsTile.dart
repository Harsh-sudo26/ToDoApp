import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key, required this.title, required this.ontap, required this.icon, required this.color, required this.trailing, required this.textColor, });
  final String title;
  final VoidCallback ontap;
  final IconData icon;
 final Color color;     
  final Widget trailing;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color:Theme.of(context).textTheme.bodyLarge?.color,),
      title: Text(title,style: TextStyle(color:Theme.of(context).textTheme.bodyLarge?.color,)),
     trailing: trailing,
      onTap: ontap,
    );
  }
}



// sction tile code 

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}