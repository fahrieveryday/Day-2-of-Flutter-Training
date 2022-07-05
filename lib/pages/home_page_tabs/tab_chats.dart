import 'package:flutter/material.dart';
import 'package:practice1/models/chat.dart';
import 'package:practice1/styles/theme.dart';

class TabChats extends StatelessWidget {
  const TabChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          chat.image,
                          width: 50,
                        ),
                        const SizedBox(width: 15),
                        SizedBox(
                          width: size.width * .45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(chat.name, style: customTextStyle),
                              const SizedBox(height: 5),
                              Text(chat.mostRecentMessage,
                                  style: customTextStyleLight),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: size.width * 0.25,
                      height: 50,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        chat.messageDate,
                        style: customTextStyleLight,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
