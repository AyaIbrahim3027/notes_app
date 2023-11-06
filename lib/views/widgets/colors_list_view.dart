import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
          radius: 38,
          backgroundColor: Colors.white,
          child: CircleAvatar(
              radius: 32,
              backgroundColor: color,
            ),
        )
        :  CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const[
    Color(0xff9F0D7F),
    Color(0xffF1B4BB),
    Color(0xffE75A7C),
    Color(0xffDFCCFB),
    Color(0xffBC7AF9),
    Color(0xffF4E869),
    Color(0xff3085C3),
    Color(0xff5CD2E6),
    Color(0xff45FFCA),
    Color(0xffD6DBD2),
    Color(0xff75C2F6),
    Color(0xff00A9FF),
    Color(0xff5272F2),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
