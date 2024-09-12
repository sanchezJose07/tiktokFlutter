import 'package:flutter/material.dart';
import 'package:myapp/presentation/providers/discover_provider.dart';
import 'package:myapp/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:provider/provider.dart';


// clase que a partir de un cambio muestra los videos o en se defecto el circular progress
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
        ? const Center( child: CircularProgressIndicator( strokeWidth: 2 ))
        : VideoScrollableView(videos: discoverProvider.videos )
    );
  }
}
