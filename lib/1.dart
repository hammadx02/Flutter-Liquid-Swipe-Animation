import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        imageUrl: 'https://pin.it/1WvkLMJu3',
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
            'https://plus.unsplash.com/premium_photo-1668485968521-4e182e8093d8?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
            'https://images.unsplash.com/photo-1578979879663-4ba6a968a50a?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
            'https://images.unsplash.com/photo-1521567097888-2c5fc40a8660?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTl8R0UzbVRqanpQRWd8fGVufDB8fHx8fA%3D%3D',
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
            'https://images.unsplash.com/photo-1524626050212-92f72d69a67b?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
        waveType: WaveType.circularReveal,
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
