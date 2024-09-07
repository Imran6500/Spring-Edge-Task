import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    height: MediaQuery.of(context).size.height * 1.2,
                    child: Image.asset(
                      "assets/images/bg_image.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      bottom: 29,
                      left: 40,
                      child: Text(
                        "Explore Demo Limited's Premier Logistics\n and Freight Services",
                        maxLines: 2,
                        style: GoogleFonts.publicSans(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ))
                ]),
                const SizedBox(width: 75),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/images/logo.svg"),
                        const SizedBox(
                          width: 16,
                        ),
                        GradientText('DEMO',
                            gradient: const LinearGradient(
                              colors: [
                                Color(0XFF35A6D6),
                                Color(0xff435B83),
                                Color(0xff425e87),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            style: GoogleFonts.righteous(
                                fontSize: 28, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(
                      height: 82,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 576,
                          height: 612,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 12,
                                    color: Colors.black12,
                                    spreadRadius: -3,
                                    offset: Offset(0, 4))
                              ],
                              borderRadius: BorderRadius.circular(24)),
                          child: Padding(
                            padding: const EdgeInsets.all(48.0),
                            child: Column(
                              children: [
                                Container(
                                    height: 96,
                                    width: 96,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE9F5FE),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child:
                                        Image.asset("assets/images/logo.png")),
                                const SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  "Welcome Back",
                                  style: GoogleFonts.publicSans(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "We are glad to see you",
                                  style: GoogleFonts.publicSans(
                                      color: const Color(0xff666666),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 48,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffe8e8e8)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hintText: "Username",
                                      hintStyle: const TextStyle(
                                          color: Color(0xff666666))),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffe8e8e8)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hintText: "Password",
                                      hintStyle: const TextStyle(
                                          color: Color(0xff666666))),
                                ),
                                const SizedBox(
                                  height: 48,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 48,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xff35A7D7),
                                              Color(0xff445A82)
                                            ]),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Center(
                                          child: Text(
                                            "LOGIN",
                                            style: GoogleFonts.publicSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Color(
                                        0xff445D7F,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/copyright.png",
                              height: 13,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            const Text(
                              "2024 DEMO GROUP. All Rights Reserved",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;

  const GradientText(
    this.text, {
    required this.gradient,
    required this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.left, bounds.right),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
