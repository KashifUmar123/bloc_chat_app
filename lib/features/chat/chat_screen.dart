import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/size_extension.dart';
import 'package:bloc_chat_app/core/widgets/custom_scaffold.dart';
import 'package:bloc_chat_app/core/widgets/custom_textfield.dart';
import 'package:bloc_chat_app/features/chat/widgets/chat_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: const Text(
          "Chat Bot",
          style: TextStyle(
            color: whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: whiteColor,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.logout,
                  color: whiteColor,
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          BuildChatWidget(
            messages: const [],
            scrollController: ScrollController(),
          ),
          _buildTextFieldArea(context),
        ],
      ),
    );
  }

  Widget _buildTextFieldArea(BuildContext context) {
    return Container(
      height: context.height * 0.1,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomTextfield(
              controller: TextEditingController(),
              hinText: "Type here...",
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          _buildSendWidget()
        ],
      ),
    );
  }

  Widget _buildSendWidget() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: blueColor,
        ),
        child: const Center(
          child: Icon(
            Icons.send,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
