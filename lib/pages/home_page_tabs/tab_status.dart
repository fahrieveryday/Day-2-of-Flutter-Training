import 'package:flutter/material.dart';
import 'package:practice1/models/status.dart';
import 'package:practice1/styles/theme.dart';

class TabStatus extends StatelessWidget {
  const TabStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: statusList.length,
        itemBuilder: (context, index) {
          final status = statusList[index];
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: ListTile(
                leading: const Icon(
                  Icons.account_circle,
                  size: 50,
                  color: Colors.black45,
                ),
                title: Text(
                  status.name,
                  style: customTextStyle,
                ),
                subtitle: Text(
                  status.statusDate,
                  style: customTextStyleLight,
                ),
              ),
            ),
          );
        });
  }
}
