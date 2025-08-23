import 'package:flutter/material.dart';
import 'login_page.dart';
import '../widgets/background_widget.dart';
import '../widgets/social_login_buttons.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;

  void _handleGoogleSignIn() {
    print("تسجيل الدخول عبر جوجل");
  }

  void _handleFacebookSignIn() {
    print("تسجيل الدخول عبر الفيسبوك");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(
            includeTopWave: true,
            includeBottomCircle: true,
          ),
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60, bottom: 20), // قلل المسافة
                    child: Text(
                      "إنشاء حساب",
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 28, // قلل حجم الخط
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20), // قلل المسافة
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  blurRadius: 15, // قلل التمويه
                                  offset: Offset(0, 8), // قلل الإزاحة
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8), // قلل المسافة
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200]!, width: 1),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "الاسم الكامل",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14), // قلل حجم الخط
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.person,
                                          color: Colors.blue[700], size: 20), // قلل حجم الأيقونة
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8), // قلل المسافة
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200]!, width: 1),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "البريد الإلكتروني",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14), // قلل حجم الخط
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.email,
                                          color: Colors.blue[700], size: 20), // قلل حجم الأيقونة
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8), // قلل المسافة
                                  child: TextField(
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      hintText: "كلمة المرور",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14), // قلل حجم الخط
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.lock,
                                          color: Colors.blue[700], size: 20), // قلل حجم الأيقونة
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.blue[700],
                                          size: 20, // قلل حجم الأيقونة
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20), // قلل المسافة
                          Container(
                            height: 45, // قلل الارتفاع
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              
                              // ignore: sort_child_properties_last
                              child: Text(
                                "إنشاء حساب",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14, // قلل حجم الخط
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[700],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25), // قلل نصف القطر
                                ),
                              ),
                            ),
                          ),
                          // إضافة أزرار تسجيل الدخول الاجتماعية
                          SocialLoginButtons(
                            onGoogleSignIn: _handleGoogleSignIn,
                            onFacebookSignIn: _handleFacebookSignIn,
                          ),
                          SizedBox(height: 15), // قلل المسافة
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("لديك حساب بالفعل؟", style: TextStyle(fontSize: 14)), // قلل حجم الخط
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                child: Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontSize: 14, // قلل حجم الخط
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20), // أضف مسافة في الأسفل
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}