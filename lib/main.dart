import 'package:flutter/material.dart';
import 'package:myapp/config/theme/app_theme.dart';
import 'package:myapp/presentation/providers/discover_provider.dart';
import 'package:myapp/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(tiktok());
 
class tiktok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(
            lazy: false, 
            create: (_) => DiscoverProvider()..loadNextPage()
            ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'tiktok',
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}