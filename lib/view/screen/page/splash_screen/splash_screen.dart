import 'package:produuct_detail_app/headers.dart';
import 'package:produuct_detail_app/route/app_route/app_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, AppRoute.intropage1);
      },
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/564x/fc/05/4d/fc054da3a8f2d896bdc5f280e9eee839.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const CupertinoActivityIndicator(),
      ),
    );
  }
}
