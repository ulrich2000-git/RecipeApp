import 'package:flutter/material.dart';

class AppDetails extends StatelessWidget {
  const AppDetails ({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
    ),
      home: const DetailScreen(),
    );
    details: const DetailScreen();
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              // Insertion de image de fond
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6UlAEoa-eijh9xajSq1bizf_bQoLVKmjhBg&s/400",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        // Bottoms
                        SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  _buildBottomIcon(
                                      Icons.arrow_back, Colors.white),
                                  _buildBottomIcon(
                                      Icons.bookmark_border, () {}),
                                ],
                              ),
                            )
                        )
                      ]
                  )
              )
            ]
        )
    );
  }
