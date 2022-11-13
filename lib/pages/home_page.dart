import 'package:flutter/material.dart';
import 'package:pdp_ui6/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';


  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
             fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter,
                colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(

                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),

                    FadeAnimation(
                        1,
                        Text(
                          "Find the best parties near you.",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 40,

                              height: 1.1),
                        )),
                    const SizedBox(
                      height: 30,
                    ),

                    FadeAnimation(
                        1.2,
                        Text(
                          "Let us find you a party for your interest",
                          style: TextStyle(
                              color: Colors.greenAccent.withOpacity(.99),
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        )),

                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    _isLogin?
                    Container(

                      height: 55,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[900]
                      ),
                      child: const Center(
                          child: Text(
                            "Start",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    )
                        :
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(child:   Container(

                              height: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                              child: const Center(
                                  child: Text(
                                    "Google",
                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                  )),
                            )
                            ),
                            SizedBox(
                              width: 15,
                            ),

                            Expanded(child: Container(

                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: const Center(
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                  )),
                            ))
                            ,
                          ],
                        ),
                    const SizedBox(
                      height: 8,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}