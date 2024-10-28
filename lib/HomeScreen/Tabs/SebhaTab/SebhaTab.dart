import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: 0.1 * height),
        Expanded(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0.09 * width),
                child: Image.asset(
                  "assets/images/head of seb7a.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.04 * height),
                child: Transform.rotate(
                    angle: 0.21 * 5,
                    child: Image.asset("assets/images/body of seb7a.png")),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          color: Colors.transparent,
        ),
        Expanded(
          child: Column(
            children: [
              const Text(
                "Tasbeh Count",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 0.02 * height,
              ),
              SizedBox(
                  width: 69,
                  height: 81,
                  child: Card(
                    color: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Text(
                      "30",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    )),
                  )),
              SizedBox(height: 0.02 * height),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    fixedSize: const Size(200, 51),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Theme.of(context).colorScheme.primary),
                child: Text(
                  "Subhan allah",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
