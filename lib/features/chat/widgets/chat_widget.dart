import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/num_extension.dart';
import 'package:bloc_chat_app/core/extensions/size_extension.dart';
import 'package:bloc_chat_app/core/models/message_model.dart';
import 'package:flutter/material.dart';

class BuildChatWidget extends StatelessWidget {
  const BuildChatWidget(
      {super.key, required this.messages, required this.scrollController});
  final ScrollController scrollController;
  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          if (messages.isEmpty)
            Padding(
              padding: EdgeInsets.only(top: context.height * .4),
              child: const Text(
                "Initate messages with the user",
                style: TextStyle(
                  color: blueColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          10.heightSpace,
          ...messages
              .map((e) => _buildMessage(
                    context,
                    isBotMessage: "123" == e.senderId,
                    message: e.message,
                    timeStamp: e.timestamp,
                    messageModel: e,
                  ))
              .toList(),
        ],
      ),
    );
  }

  Widget _buildMessage(
    BuildContext context, {
    required bool isBotMessage,
    required String message,
    required DateTime timeStamp,
    required Message messageModel,
  }) {
    return Align(
      alignment: isBotMessage ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        constraints: BoxConstraints(
          minWidth: context.width * .2,
          maxWidth: context.width * .7,
        ),
        decoration: BoxDecoration(
          color: isBotMessage ? greyColor.withOpacity(.2) : blueColor,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          messageModel.message,
          style: TextStyle(
            color: isBotMessage ? blackColor : whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
