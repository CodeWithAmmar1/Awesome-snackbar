import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class AweseomSnackBarExample extends StatelessWidget {
  const AweseomSnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialBanner = MaterialBanner(
                  elevation: 0,
                  backgroundColor: Colors.green.shade200,
                  forceActionsBelow: true,
                  content: AwesomeSnackbarContent(
                    title: 'SUCCEED!!',
                    message: 'Write massage of SUCCESS',

                    contentType: ContentType.success,
                    inMaterialBanner: true,
                  ),
                  actions: const [SizedBox.shrink()],
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentMaterialBanner()
                  ..showMaterialBanner(materialBanner);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shadowColor: Colors.purpleAccent,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.notifications_active, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Show Awesome SnackBar Banner',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'ERROR!',
                    message: 'Write massage of FAILURE',

                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shadowColor: Colors.purpleAccent,
                elevation: 8, // Raised effect
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.notifications_active, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Show Awesome SnackBar',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
