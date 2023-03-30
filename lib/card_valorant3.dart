import 'package:flutter/material.dart';

class CardValorant3 extends StatelessWidget {
  const CardValorant3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      // Generate 100 widgets that display their index in the List.
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => print,
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.01)
                  ..rotateY(-0.06)
                  ..rotateX(-0.1),
                alignment: FractionalOffset.bottomLeft,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.black, Colors.redAccent]
                          // colors: [
                          //   AppColors.gradientStartColor,
                          //   AppColors.gradientEndColor,
                          // ],
                          ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      color: Colors.purple),
                ),
              ),
              // _postStore.agentList!.data[index].fullPortrait != null
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/jett.png',
                  // width: 65,
                  // height: 65,
                ),
                // child: SizedBox(
                //   width: 65.0,
                //   height: 65.0,
                //   child: Icon(
                //     Icons.person,
                //     size: 36.0,
                //     color: Colors.white,
                //   ),
              ),
              Positioned(
                left: 10,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Fade",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "Fade",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
