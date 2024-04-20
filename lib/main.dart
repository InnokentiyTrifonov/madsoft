import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_soft/data/table_contract_impl.dart';
import 'package:mad_soft/domain/blocs/extract_point/extract_point_bloc.dart';
import 'package:mad_soft/domain/blocs/remote_repository/remote_repository_bloc.dart';
import 'package:mad_soft/presentation/home_page.dart';

Future<void> main() async {
  final repository = RemoteRepositoryBloc(TableContractImpl());
  final extractPoint = ExtractPointBloc();
  repository.add(RemoteRepositoryLoadData());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: repository,
        ),
        BlocProvider.value(
          value: extractPoint,
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Color(0xff4A6FF4)),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: const HomePage(),
    );
  }
}
