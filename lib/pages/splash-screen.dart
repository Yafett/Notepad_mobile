// ignore_for_file: file_names

part of '../shared/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Route scaleIn(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, page) {
        var begin = 0.0;
        var end = 1.0;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return ScaleTransition(
          scale: animation.drive(tween),
          child: page,
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      // Navigator.push(context, scaleIn(HomeScreen()));  
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSplashScreen(),
    );
  }

  Widget _buildSplashScreen() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: _buildIcon(),
    );
  }

  Widget _buildIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.note_alt_outlined,
          size: 80.0,
          color: Colors.orangeAccent,
        ),
        Text('NOTEPAD',
            style: GoogleFonts.openSans(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
