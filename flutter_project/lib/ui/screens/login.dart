import 'package:flutter/material.dart';
import 'package:flutter_project/utils/constants.dart';
import 'package:flutter_project/ui/Root_page.dart';
import 'package:flutter_project/ui/screens/forgot_password.dart';
import 'package:flutter_project/ui/screens/signup.dart';
import 'package:flutter_project/widgets/custom_textfield.dart';
import 'package:page_transition/page_transition.dart';


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Quay lại trang trước
              },
              child: Icon(Icons.arrow_back, color: Constants.primaryColor, size: 30),
            ),
            SizedBox(width: 10), // Thêm khoảng cách giữa icon và tiêu đề
            Text(
              "Đăng nhập",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey[300]!, // Màu xám nhạt
                Colors.black,      // Màu đen
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        backgroundColor: Colors.transparent, // Đặt background thành trong suốt
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
    child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome back!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "Để giữ kết nối,\nvui lòng đăng nhập bằng thông tin cá nhân của bạn",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Image.asset('assets/images/signin.png'),
              const SizedBox(
                height: 30,
              ),
              const CustomTextfield(
                obscureText: false,
                hintText: 'Nhập email',
                icon: Icons.alternate_email,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextfield(
                obscureText: true,
                hintText: 'Nhập mật khẩu',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const RootPage(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const ForgotPassword(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'Quên mật khẩu? ',
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Nhấn vào đây',
                        style: TextStyle(
                          color: Constants.primaryColor,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('HOẶC'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.primaryColor),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    Text(
                      'Đăng nhập với Google',
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const SignUp(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'Thành viên mới? ',
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Đăng ký',
                        style: TextStyle(
                          color: Constants.primaryColor,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
