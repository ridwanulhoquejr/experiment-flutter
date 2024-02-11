import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Back'),
          ),
          //
          TextButton(
            onPressed: () => throw Exception(),
            child: const Text("Throw Test Exception in page 2"),
          ),

          ElevatedButton(
            // navigateTo(23.810331, 90.412521);
            onPressed: () async {
              Uri googleUrl = Uri.parse(
                  'https://www.google.com/maps/search/?api=1&query=Chattogram');

              if (await canLaunchUrl(googleUrl)) {
                await launchUrl(googleUrl,
                    mode: LaunchMode.externalApplication);
              }
            },
            child: const Text('Go To Google Map App'),
          )
        ],
      )),
    );
  }

  Future<void> openMap(double latitude, double longitude,
      {LaunchMode linkLaunchMode = LaunchMode.externalApplication}) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    bool a = await canLaunchUrl(Uri.parse(googleUrl));

    try {
      if (a) {
        await launchUrl(Uri.parse(googleUrl),
            mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
