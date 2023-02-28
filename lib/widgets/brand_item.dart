import 'package:flutter/material.dart';

<<<<<<< HEAD
=======
import '../screens/brand_quiz.dart';

>>>>>>> eb6f7478d6003ca0ef240d60213bc8b54daffecf
class BrandItem extends StatefulWidget {
  const BrandItem({
    super.key,
    required this.idBrand,
    required this.strBrand,
    required this.linkBrand,
    required this.choice1,
    required this.choice2,
    required this.choice3,
    required this.choice4,
    required this.answer,
  });

  final String idBrand;
  final String strBrand;
  final String linkBrand;
  final String choice1;
  final String choice2;
  final String choice3;
  final String choice4;
  final String answer;

  @override
  State<BrandItem> createState() => _BrandItemState();
}

class _BrandItemState extends State<BrandItem> {
  bool pressed1 = false;
  bool pressed2 = false;
  bool pressed3 = false;
  bool pressed4 = false;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final ButtonStyle confirmButtonStyle = ElevatedButton.styleFrom(
      // ignore: deprecated_member_use
      onPrimary: Colors.white,
      // ignore: deprecated_member_use
=======
    final ButtonStyle choiceButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      //primary: pressed1 ? Colors.black : Colors.grey,
      minimumSize: Size(290, 64),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );

    final ButtonStyle confirmButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
>>>>>>> eb6f7478d6003ca0ef240d60213bc8b54daffecf
      primary: Colors.black,
      minimumSize: const Size(150, 70),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
    return Center(
      child: (Column(
        children: [
          const SizedBox(
            height: 25.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: SizedBox(
              width: 360.0,
              height: 240.0,
              child: Stack(
                children: [
                  SizedBox(
                    width: 360.0,
                    height: 240.0,
                    child: Card(
                      elevation: 2,
                      //margin: const EdgeInsets.(top: 10.0),
                      child: Image.network(
                        widget.linkBrand,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //Quiz Band Choide Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
<<<<<<< HEAD
              shadowColor: Colors.grey,
              backgroundColor: pressed1 ? Colors.green : Colors.black,
              minimumSize: const Size(290, 64),
=======
              onPrimary: Colors.white,
              primary: pressed1 ? Colors.green : Colors.black,
              minimumSize: Size(290, 64),
>>>>>>> eb6f7478d6003ca0ef240d60213bc8b54daffecf
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            child: Text(
              widget.choice1,
              style: const TextStyle(fontSize: 25),
            ),
            onPressed: () {
              setState(() {
                pressed1 = !pressed1;
              });
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: pressed2 ? Colors.green : Colors.black,
              minimumSize: Size(290, 64),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            child: Text(
              widget.choice2,
              style: const TextStyle(fontSize: 25),
            ),
            onPressed: () {
              setState(
                () {
                  pressed2 = !pressed2;
                },
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: pressed3 ? Colors.green : Colors.black,
              minimumSize: Size(290, 64),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            child: Text(
              widget.choice3,
              style: const TextStyle(fontSize: 25),
            ),
            onPressed: () {
              setState(
                () {
                  pressed3 = !pressed3;
                },
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: pressed4 ? Colors.green : Colors.black,
              minimumSize: Size(290, 64),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            child: Text(
              widget.choice4,
              style: const TextStyle(fontSize: 25),
            ),
            onPressed: () {
              setState(
                () {
                  pressed4 = !pressed4;
                },
              );
            },
          ),
          const SizedBox(
            height: 50.0,
          ),

          ElevatedButton(
            style: confirmButtonStyle,
            onPressed: () {},
            child: const Icon(
              Icons.done,
              color: Colors.white,
              size: 65.0,
            ),
          ),
        ],
      )),
    );
  }
}
