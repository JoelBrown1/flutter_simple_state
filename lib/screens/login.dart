import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    return Consumer<User>(
      builder: (context, user, child) {
        return Scaffold(
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(80.0),
              child: user.status
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('User status is...'),
                        Text("signed in: ${user.status}"),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Username',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            user.loginStatus(true);
                            // context.pushReplacement('/catalog');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                          ),
                          child: const Text('ENTER'),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('user status: ${user.status}'),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
