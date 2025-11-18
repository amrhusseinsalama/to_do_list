import 'package:flutter/material.dart';
import 'api_service.dart'; // ده الملف اللي فيه كلاس User والدالة fetchUsers


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UsersPage(),
    );
  }
}

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('قائمة المستخدمين')),
      body: FutureBuilder<List<User>>(
        future: fetchUsers(), // دي الدالة اللي بتجيب البيانات من الإنترنت
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator()); // لودينج
          } else if (snapshot.hasError) {
            return Center(child: Text('حصل خطأ: ${snapshot.error}')); // لو فيه مشكلة
          } else {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    trailing: Text(user.phone),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}