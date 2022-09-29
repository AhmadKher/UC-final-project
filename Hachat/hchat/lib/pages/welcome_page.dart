import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hchat/home_page.dart';
import 'package:hchat/screens/welcome_screen.dart';
import 'package:hchat/widgets/app_larg_text.dart';
import 'package:hchat/widgets/app_text.dart';
import 'package:hchat/widgets/my_button.dart';

class WelcomePage extends StatefulWidget {
  static const String screenRoute = 'welcome_page';

  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["home1.jpg", "Add a heading.png", "home3.jpeg"];
  List fett1 = ["Chat for Hackers ", "Secure place for Hackers ", "ALL in ONE"];
  List fett2 = [
    'COMUNICATE, ATTACK, NULL',
    'Cloud saving,encrypted chat,away from eyes',
    'Chat hack swap tools add attack summary'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLArgeText(
                            text: fett1[index],
                            size: 25,
                          ),
                          AppText(
                            text: fett2[index],
                            size: 15,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Container(
                          //   width: 250,
                          //   child: AppText(
                          //     text: fett2[index],
                          //     color: Colors.black,
                          //   ),
                          // ),
                          SizedBox(
                            height: 40,
                          ),
                          MyButton(
                            color: Colors.grey,
                            title: "start",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WelcomeScreen()),
                              );
                            },
                          )
                        ],
                      ),
                      Column(
                          children: List.generate(
                        3,
                        (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? Colors.grey
                                    : Colors.white),
                          );
                        },
                      ))
                    ],
                  )),
            );
          }),
    );
  }
}




// Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => YourScreen()),
//           );