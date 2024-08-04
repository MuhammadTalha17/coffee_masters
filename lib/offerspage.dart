import 'package:coffee_masters/paddedtextcontainer.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Offer(
          title: "Great Offer!",
          description: "Refills Free!",
        ),
        Offer(
          title: "Great Offer!",
          description: "Refills Free!",
        ),
        Offer(
          title: "Great Offer!",
          description: "Refills Free!",
        ),
        Offer(
          title: "Great Offer!",
          description: "Refills Free!",
        ),
        Offer(
          title: "Great Offer!",
          description: "Refills Free!",
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;

  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.amber.shade100,
          elevation: 7,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/background.png",
                    ))),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: PaddedTextContainer(
                        text: title,
                        color: Colors.amber.shade50,
                        padding: const EdgeInsets.all(8.0),
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: PaddedTextContainer(
                    text: description,
                    color: Colors.amber.shade50,
                    padding: const EdgeInsets.all(8.0),
                    textStyle: Theme.of(context).textTheme.headlineSmall,
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
