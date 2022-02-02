import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    required this.icon, required this.label, required this.onPressed,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: InkWell(
            onTap: onPressed,
            child: Row(
              children: [
                Icon(icon, size: 28,),
                const SizedBox(
                  width: 8,
                ),
                Text(label, style: const TextStyle(fontSize: 16),),
                const Expanded(child: 
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_forward_ios)),
                )
              ],
            ),
          ),
        ),
        const Divider(
          thickness:2,
        ),
      ],
    );
  }
}