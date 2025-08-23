import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  final VoidCallback onGoogleSignIn;
  final VoidCallback onFacebookSignIn;

  const SocialLoginButtons({
    Key? key,
    required this.onGoogleSignIn,
    required this.onFacebookSignIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15), // قلل المسافة
        Text(
          "أو تسجيل الدخول باستخدام",
          style: TextStyle(color: Colors.grey[700], fontSize: 14), // قلل حجم الخط
        ),
        SizedBox(height: 15), // قلل المسافة
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: OutlinedButton.icon(
                icon: Icon(Icons.g_mobiledata, size: 22, color: Colors.red), // استخدم أيقونة بديلة
                label: Text(
                  "جوجل",
                  style: TextStyle(color: Colors.grey[800], fontSize: 12), // قلل حجم الخط
                ),
                onPressed: onGoogleSignIn,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10), // قلل المسافة
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // قلل نصف القطر
                  ),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(width: 10), // قلل المسافة
            Expanded(
              child: OutlinedButton.icon(
                icon: Icon(Icons.facebook, size: 22, color: Colors.blue), // استخدم أيقونة بديلة
                label: Text(
                  "فيسبوك",
                  style: TextStyle(color: Colors.grey[800], fontSize: 12), // قلل حجم الخط
                ),
                onPressed: onFacebookSignIn,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10), // قلل المسافة
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // قلل نصف القطر
                  ),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}