// ignore_for_file: prefer_const_constructors

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    Color colorGray = Color.fromRGBO(40, 40, 40, 1);

    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.mPlus1Code().fontFamily,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBarWidget(colorGray: colorGray),
                CoverWidget(colorGray: colorGray),
                DisplayWidget(colorGray: colorGray),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  color: colorGray,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        height: MediaQuery.sizeOf(context).width * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Column(
                        children: [
                          GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0,
                              childAspectRatio: 1,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(36.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(90)),
                                  child: Icon(
                                    Icons.more_horiz_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(36.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(90)),
                                  child: Icon(
                                    Icons.format_list_bulleted,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.fast_rewind_rounded,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: colorGray,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 56,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.fast_forward_rounded,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(36.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(90)),
                                  child: Icon(
                                    Icons.repeat_rounded,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Icon(
                                  Icons.volume_up_rounded,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(36.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(90)),
                                  child: Icon(
                                    Icons.music_note_rounded,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({
    super.key,
    required this.colorGray,
  });

  final Color colorGray;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 2),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorGray,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        "https://img.discogs.com/eG6HFMmhrAaFdm3zjQua1WUQgms=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-744813-1174133616.jpeg.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Artist",
                          style: TextStyle(color: Colors.white60, fontSize: 18),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 200),
                          child: TextScroll(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            'This is the sample text for Flutter TextScroll widget.',
                            intervalSpaces: 10,
                            velocity: Velocity(
                              pixelsPerSecond: Offset(50, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.grey),
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ProgressBar(
                progress: Duration(milliseconds: 112000),
                total: Duration(milliseconds: 195000),
                barCapShape: BarCapShape.square,
                thumbRadius: 0,
                baseBarColor: Colors.black,
                thumbColor: Colors.white,
                progressBarColor: Colors.white70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoverWidget extends StatelessWidget {
  const CoverWidget({
    super.key,
    required this.colorGray,
  });

  final Color colorGray;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, -1),
      children: [
        Container(
          height: 30,
          color: colorGray,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              "https://i.scdn.co/image/ab67616d0000b27387051ad9a9cc964cc064fec1",
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.colorGray,
  });

  final Color colorGray;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: colorGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 4,
              bottom: 4,
              left: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
          Text(
            "Now playing",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 4,
              bottom: 4,
              left: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
