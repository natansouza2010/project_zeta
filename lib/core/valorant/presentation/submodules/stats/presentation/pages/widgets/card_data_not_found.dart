import 'package:flutter/material.dart';
import 'package:project_zeta/core/constants/app_theme.dart';

class CardDataNotFound extends StatelessWidget {
  const CardDataNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 64, bottom: 110, left: 8, right: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFF0F1923),
      child: InkWell(
          onTap: () {},
          child: Ink(
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: Text("Nenhum dado encontrado :'C:  ",
                          style: TextStyle(
                            color: white2,
                            fontSize: 36,
                          )),
                    )
                  ]))),
    );
  }
}
