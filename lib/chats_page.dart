import 'package:flutter/material.dart';
import 'package:whatsapp_clone/assets/get_colors.dart';
import 'package:whatsapp_clone/assets/get_images.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Image.asset(
            GetImages.imgEmptyChat,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: GetColors.green,
                    borderRadius: BorderRadius.circular(30),
                    // borderRadius: BorderRadius.only(),
                  ),
                  child: const Icon(
                    Icons.check_circle,
                    color: GetColors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 80),
                const Text(
                  'You haven’t chat yet',
                  style: TextStyle(
                    color: GetColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 27),
                MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  height: 55,
                  color: GetColors.green,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    'Start Chatting',
                    style: TextStyle(
                      fontSize: 20,
                      color: GetColors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
