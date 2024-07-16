import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_task/features/recycler/presentation_layer/views/recycler_view.dart';

void main() async{
  runApp(const MyApp());
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        home:  const RecyclerView(),

      ),
    );
  }
}
