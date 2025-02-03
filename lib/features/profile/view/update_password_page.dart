import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/profile/controller/update_password_controller.dart';



class UpdatePasswordForm extends ConsumerStatefulWidget {
  const UpdatePasswordForm({super.key});

  @override
  _UpdatePasswordFormState createState() => _UpdatePasswordFormState();
}

class _UpdatePasswordFormState extends ConsumerState<UpdatePasswordForm> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(updatePasswordProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide;
          }
        },
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Something went wrong',
              description: '',
              id: '1212',
              error: true,
            );
          });
        },
        success: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Password Updated Successfully',
              description: '',
              id: '1212',
              error: false,
            );
          });
          ref.pop();
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Update Password"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter New Password",
              style: context.titleLarge,
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                isDense: true,
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: !_isConfirmPasswordVisible,
              decoration: InputDecoration(
                isDense: true,
                labelText: "Confirm Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _updatePassword,
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                child: const Text(
                  "Update Password",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updatePassword() {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password.isEmpty || confirmPassword.isEmpty) {
      _showSnackBar("Please fill in all fields");
      return;
    }

    if (password != confirmPassword) {
      _showSnackBar("Passwords do not match");
      return;
    }
    FocusManager.instance.primaryFocus?.unfocus();

    ref.read(updatePasswordProvider.notifier).updatePassword(params: {
      'password': password,
      'confirm_password': confirmPassword,
    });
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
