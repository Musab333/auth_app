import 'package:flutter/material.dart';

import '../../../../core/styles/colors_app.dart';
import '../../shared/widgets/button_custom.dart';
import '../../shared/widgets/text_custom.dart';
import '../../shared/widgets/text_form_field_custom.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              right: 20.0,
              left: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextCustom(
                      text: 'Reset Password',
                      fontSize: 30,
                      color: primaryColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const TextCustom(
                  text: 'Reset Password to Continue',
                  fontSize: 16,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormFieldCustom(
                  text: 'Email',
                  icon: Icons.email,
                  hintText: 'example@email.com',
                  onSave: (value) {},
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50.0,
                ),
                ButtonCustom(
                  text: 'Reset Password',
                  onPress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
