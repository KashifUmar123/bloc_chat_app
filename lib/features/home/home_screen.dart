import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/num_extension.dart';
import 'package:bloc_chat_app/core/extensions/size_extension.dart';
import 'package:bloc_chat_app/core/extensions/style_extension.dart';
import 'package:bloc_chat_app/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.heightSpace,
          Text("Users", style: context.title26700),
          20.heightSpace,
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              _buildUserTile(context),
              _buildUserTile(context),
              _buildUserTile(context),
            ],
          ),
          50.heightSpace,
        ],
      ),
    );
  }

  Widget _buildUserTile(BuildContext context) {
    return Container(
      height: 75,
      width: context.width,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: greyColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(.2),
            spreadRadius: 3,
            blurRadius: 100,
            offset: const Offset(-5, -5),
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(55 / 2),
            child: Image.network(
              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              height: 55,
              width: 55,
              fit: BoxFit.cover,
            ),
          ),
          15.widthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Amila Williams", style: context.body18400),
                    Text(
                      "03:33 PM",
                      style: context.body12400.copyWith(
                        color: blackColor.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Thank you for reaching me out. I highly appreciate your patience while responding to your queries.",
                  style: context.body14400,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
