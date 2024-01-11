import 'package:flutter/material.dart';
import 'package:weatherapp/Home/Components/custom_text.dart';

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,

        // shrinkWrap: true,
        //   physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 2,
                        blurRadius: 2),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 18),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Txt(
                            text: "Monday",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                            ),
                          ),
                          Txt(text: "23oC / 22oC")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Txt(
                            text: "jan 02,2024",
                            color: Colors.grey,
                          ),
                          Txt(
                            text: "clear sky",
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 70,
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
