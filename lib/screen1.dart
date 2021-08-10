import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_assignment/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  VideoPlayerController _controller;
  VideoPlayerController _controller1;
  VideoPlayerController _controller2;
  VideoPlayerController _controller3;
  VideoPlayerController _controller4;
  VideoPlayerController _controller5;
  VideoPlayerController _controller6;
  VideoPlayerController _controller7;
  
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/video5.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    _controller.setLooping(true);
    _controller.pause();
    /////////////////////////////////////
    _controller1 = VideoPlayerController.asset("videos/video1.mp4");
    _initializeVideoPlayerFuture = _controller1.initialize();
    _controller1.setVolume(1.0);
    _controller1.setLooping(true);
    _controller1.pause();
    super.initState();
    /////////////////////////////////////
    _controller2 = VideoPlayerController.asset("videos/video2.mp4");
    _initializeVideoPlayerFuture = _controller2.initialize();
    _controller2.setVolume(1.0);
    _controller2.setLooping(true);
    _controller2.pause();
    super.initState();
    /////////////////////////////////////
    _controller3 = VideoPlayerController.asset("videos/video3.mp4");
    _initializeVideoPlayerFuture = _controller3.initialize();
    _controller3.setVolume(1.0);
    _controller3.setLooping(true);
    _controller3.pause();
    super.initState();
    /////////////////////////////////////
    _controller4 = VideoPlayerController.asset("videos/video4.mp4");
    _initializeVideoPlayerFuture = _controller4.initialize();
    _controller4.setVolume(1.0);
    _controller4.setLooping(true);
    _controller4.pause();
    super.initState();
    /////////////////////////////////////
    _controller5 = VideoPlayerController.asset("videos/video6.mp4");
    _initializeVideoPlayerFuture = _controller5.initialize();
    _controller5.setVolume(1.0);
    _controller5.setLooping(true);
    _controller5.pause();
    super.initState();
    /////////////////////////////////////
    _controller6 = VideoPlayerController.asset("videos/video7.mp4");
    _initializeVideoPlayerFuture = _controller6.initialize();
    _controller6.setVolume(1.0);
    _controller6.setLooping(true);
    _controller6.pause();
    super.initState();
    /////////////////////////////////////
    _controller7 = VideoPlayerController.asset("videos/video8.mp4");
    _initializeVideoPlayerFuture = _controller7.initialize();
    _controller7.setVolume(1.0);
    _controller7.setLooping(true);
    _controller7.pause();
    super.initState();
  }

  @override
  void dispose() {
     _controller.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                                                                                   // Appbar
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_outlined), onPressed: (){}),
                    Text("Back", style: TextStyle(fontSize: 20.0,color: Kbtn_color),),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(radius: 5, backgroundColor: Color(0xFFF8C4C4),),
                              SizedBox(width: 2.0,),
                              CircleAvatar(radius: 5, backgroundColor: Color(0xFFEB5757),)
                            ],
                          ),
                          SizedBox(height: 2.0,),
                          Row(
                            children: [
                              CircleAvatar(radius: 5, backgroundColor: Color(0xFFEB5757),),
                              SizedBox(width: 2.0,),
                              CircleAvatar(radius: 5, backgroundColor: Color(0xFFF8C4C4),),
                            ],
                          )
                        ],
                      ),
                    )

                  ],
                ),
                SizedBox(height: 5.0,),
                                                                                   // Row of profile and details
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0),
                        ]
                      ),
                      child: CircleAvatar(
                        radius: 48.0,
                        backgroundImage: AssetImage("images/profile.jpg"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text("10", style: TextStyle(fontSize: 15.0,color: Ktext_color),),
                                Text("videos", style: TextStyle(fontSize: 15.0,color: Ksmall_text_color),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text("155", style: TextStyle(fontSize: 15.0,color: Ktext_color),),
                                Text("followers", style: TextStyle(fontSize: 15.0,color: Ksmall_text_color),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text("122", style: TextStyle(fontSize: 15.0,color: Ktext_color),),
                                Text("following", style: TextStyle(fontSize: 15.0,color: Ksmall_text_color),)
                              ],
                            ),
                          )
                        ],
                        ),
                      ),
                    ),
                  ],
                ),

                Text("Shantanu", style: GoogleFonts.poppins(fontSize: 20.0,),),
                SizedBox(height: 1.0,),
                Text("Be Yourself, Everyone Else is already Taken.", style: GoogleFonts.poppins(fontSize: 10.0,color: Colors.grey),),
                Text("shan.07dpu@gmail.com", style: GoogleFonts.poppins(fontSize: 10.0,color: Colors.grey),),
                SizedBox(height: 20.0,),

                                                                                  // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Kbtn_color),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                            ))
                          ),
                          onPressed: (){
                            print("follow button pressed");
                          },
                          child: Text("Follow",
                            style: TextStyle(color: Colors.white,
                                                  fontSize: 20.0
                                                   ),)),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Kbtn_color),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                            ))
                          ),
                          onPressed: (){ print("Message button pressed");},
                          child: Text("Message",
                            style: TextStyle(color: Colors.white,
                                                  fontSize: 20.0
                                                   ),)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                                                                                 // Grid View
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if (_controller1.value.isPlaying) {
                                _controller1.pause();
                                print("paused");
                              } else {
                                _controller1.play();
                                print("play");
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 200.0,
                              width: 120.0,
                              decoration: Kcontainer_decoration,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: FutureBuilder(
                                    future: _initializeVideoPlayerFuture,
                                    builder: (context, snapshot){
                                      if (snapshot.connectionState == ConnectionState.done){
                                        return AspectRatio(
                                              aspectRatio: _controller1.value.aspectRatio,
                                              child: VideoPlayer(_controller1),
                                              );
                                       }else{
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      }
                                  ),
                                ),
                            ),
                              view_status(),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if (_controller2.value.isPlaying) {
                                _controller2.pause();
                                print("paused");
                              } else {
                                _controller2.play();
                                print("play");
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 200.0,
                              width: 120.0,
                              decoration: Kcontainer_decoration,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: FutureBuilder(
                                    future: _initializeVideoPlayerFuture,
                                    builder: (context, snapshot){
                                      if (snapshot.connectionState == ConnectionState.done){
                                        return AspectRatio(
                                              aspectRatio: _controller2.value.aspectRatio,
                                              child: VideoPlayer(_controller2),
                                              );
                                       }else{
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      }
                                  ),
                                ),
                            ),
                              view_status(),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if (_controller3.value.isPlaying) {
                                _controller3.pause();
                                print("paused");
                              } else {
                                _controller3.play();
                                print("play");
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 100.0,
                              width: 120.0,
                              decoration: Kcontainer_decoration,
                              child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: FutureBuilder(
                                      future: _initializeVideoPlayerFuture,
                                      builder: (context, snapshot){
                                        if (snapshot.connectionState == ConnectionState.done){
                                          return AspectRatio(
                                                aspectRatio: _controller3.value.aspectRatio,
                                                child: VideoPlayer(_controller3),
                                                );
                                         }else{
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                        }
                                    ),
                                  ),
                            ),
                              view_status(),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if (_controller4.value.isPlaying) {
                                _controller4.pause();
                                print("paused");
                              } else {
                                _controller4.play();
                                print("play");
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 100.0,
                              width: 120.0,
                              decoration: Kcontainer_decoration,
                              child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: FutureBuilder(
                                      future: _initializeVideoPlayerFuture,
                                      builder: (context, snapshot){
                                        if (snapshot.connectionState == ConnectionState.done){
                                          return AspectRatio(
                                                aspectRatio: _controller4.value.aspectRatio,
                                                child: VideoPlayer(_controller4),
                                                );
                                         }else{
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                        }
                                    ),
                                  ),
                            ),
                              view_status(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                                print("paused");
                              } else {
                                _controller.play();
                                print("play");
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 330.0,
                              width: 180.0,
                              decoration: Kcontainer_decoration,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: FutureBuilder(
                                  future: _initializeVideoPlayerFuture,
                                  builder: (context, snapshot){
                                    if (snapshot.connectionState == ConnectionState.done){
                                      return AspectRatio(
                                            aspectRatio: _controller.value.aspectRatio,
                                            child: VideoPlayer(_controller),
                                            );
                                     }else{
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                    }

                                ),
                              ),
                            ),
                              view_status(),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if (_controller5.value.isPlaying) {
                                _controller5.pause();
                                print("paused");
                              } else {
                                _controller5.play();
                                print("play");
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 100.0,
                              width: 180.0,
                              decoration: Kcontainer_decoration,
                              child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: FutureBuilder(
                                      future: _initializeVideoPlayerFuture,
                                      builder: (context, snapshot){
                                        if (snapshot.connectionState == ConnectionState.done){
                                          return AspectRatio(
                                                aspectRatio: _controller5.value.aspectRatio,
                                                child: VideoPlayer(_controller5),
                                                );
                                         }else{
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                        }
                                    ),
                                  ),
                            ),
                              view_status(),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                              if (_controller6.value.isPlaying) {
                                _controller6.pause();
                                print("paused");
                              } else {
                                _controller6.play();
                                print("play");
                              }
                            });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  height: 100.0,
                                  width: 100.0,
                                  decoration: Kcontainer_decoration,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: FutureBuilder(
                                        future: _initializeVideoPlayerFuture,
                                        builder: (context, snapshot){
                                          if (snapshot.connectionState == ConnectionState.done){
                                            return AspectRatio(
                                                  aspectRatio: _controller6.value.aspectRatio,
                                                  child: VideoPlayer(_controller6),
                                                  );
                                           }else{
                                            return Center(
                                              child: CircularProgressIndicator(),
                                            );
                                          }
                                          }
                                      ),
                                    ),
                                ),
                                  view_status(),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                              if (_controller7.value.isPlaying) {
                                _controller7.pause();
                                print("paused");
                              } else {
                                _controller7.play();
                                print("play");
                              }
                            });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  height: 100.0,
                                  width: 70.0,
                                  decoration: Kcontainer_decoration,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: FutureBuilder(
                                        future: _initializeVideoPlayerFuture,
                                        builder: (context, snapshot){
                                          if (snapshot.connectionState == ConnectionState.done){
                                            return AspectRatio(
                                                  aspectRatio: _controller7.value.aspectRatio,
                                                  child: VideoPlayer(_controller7),
                                                  );
                                           }else{
                                            return Center(
                                              child: CircularProgressIndicator(),
                                            );
                                          }
                                          }
                                      ),
                                    ),
                                ),
                                  view_status(),
                                ],
                              ),
                            ),
                          ],
                        )
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


