import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/presentation/providers/discover_provider.dart';
import 'package:tiktok/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    //final myProvider = Provider.of<DiscoverProvider>(context);

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator())
          : VideoScrollableView(videos: discoverProvider.videos),
    );
  } //
}
