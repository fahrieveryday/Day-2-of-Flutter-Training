import 'package:flutter/material.dart';
import 'package:practice1/models/call.dart';
import 'package:practice1/styles/theme.dart';

class TabCalls extends StatelessWidget {
  const TabCalls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: callList.length,
        itemBuilder: (context, index) {
          final call = callList[index];
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
                        const Icon(
                          Icons.account_circle,
                          size: 50,
                          color: Colors.black45,
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(call.name, style: customTextStyle),
                            const SizedBox(width: 5),
                            Text(call.callDate, style: customTextStyleLight),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.call,
                        color: whatsAppLightGreen,
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
