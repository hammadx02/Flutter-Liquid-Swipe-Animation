import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LiquidController liquidController = LiquidController();

  final pages = [
    SizedBox(
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl:
            'https://images.unsplash.com/photo-1649973400827-2ad24b87a933?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXR0cmFjdGl2ZSUyMGdpcmx8ZW58MHwxfDB8fHww',
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    ),
    SizedBox(
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl:
            'https://images.unsplash.com/photo-1649051069812-b9aa9296358b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGF0dHJhY3RpdmUlMjBnaXJsfGVufDB8MXwwfHx8MA%3D%3D',
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    ),
    SizedBox(
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl:
            'https://images.unsplash.com/photo-1649051008380-fdc8697d1bf5?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fGF0dHJhY3RpdmUlMjBnaXJsfGVufDB8MXwwfHx8MA%3D%3D',
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    ),
    SizedBox(
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl:
            'https://images.unsplash.com/photo-1695208316151-8d46279953a2?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fGF0dHJhY3RpdmUlMjBnaXJsfGVufDB8MXwwfHx8MA%3D%3D',
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        waveType: WaveType.liquidReveal,
        slideIconWidget: const Icon(Icons.arrow_back_ios, color: Colors.white),
        positionSlideIcon: 0.8,
        onPageChangeCallback: (page) {
          print(page);
        },
        liquidController: liquidController,
      ),
    );
  }
}
