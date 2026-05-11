import 'package:flutter/material.dart';
import 'package:tech_review/styles.dart';

class ScrollEffect extends StatelessWidget {
  const ScrollEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            expandedHeight: 100,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://512pixels.net/wp-content/uploads/2025/08/26-Tahoe-Beach-Dawn-thumb.jpeg",
                fit: BoxFit.cover,
              ),
              title: Text("hello"),
            ),
          ),
          SliverAppBar(
            toolbarHeight: 100,
            expandedHeight: 300,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "5,240.00",
                    style: context.text2xl.bold.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Balance",
                    style: context.textSm.copyWith(color: Colors.white),
                  ),
                ],
              ),
              title: Text(
                "Wallet",
                style: context.textXl.copyWith(color: Colors.white),
              ),
            ),
          ),

          SliverAppBar(
            toolbarHeight: 140,
            expandedHeight: 140,
            backgroundColor: Colors.grey,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 8,
                  children: [Text("asdasd"), Text("asdasd"), Text("asdasd")],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: Text("This is text Widget")),

          SliverFillRemaining(),
        ],
      ),
    );
  }
}
