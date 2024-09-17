import 'package:flutter/material.dart';
import 'package:myapp/config/theme/app_theme.dart';
import 'package:myapp/infrastructure/datasources/loca_video_datasource_impl.dart';
import 'package:myapp/infrastructure/respositories/video_posts_repository_impl.dart';
import 'package:myapp/presentation/providers/discover_provider.dart';
import 'package:myapp/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(tiktok());
 
class tiktok extends StatelessWidget {
  const tiktok({
    super.key,
  });
  @override
  Widget build(BuildContext context) {

    final videoPostRepository = VideoPostsRepositoryImpl(
      videosDatasources: LocalVideoDatasource()
    );

    return MultiProvider(
        providers: [ChangeNotifierProvider(
            lazy: false, 
            create: (_) => DiscoverProvider( videoPostsRepository: videoPostRepository )..loadNextPage()
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