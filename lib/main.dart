part of 'shared/theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home' : (context) => const HomeScreen(),
      },
    );
  }
}
