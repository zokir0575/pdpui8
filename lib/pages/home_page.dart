import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 20),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt,),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        children: [
          //#post create
         Container(
           height: 120,
           color: Colors.black,
           padding: EdgeInsets.only(left: 10, right: 10, top: 10),
           child: Column(
             children: [
               Expanded(
                 child: Row(
                   children: [
                     //# circle avatar
                     Container(
                       height: 45,
                       width: 45,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage("assets/images/user_5.jpeg"),
                         ),
                       ),
                     ),
                     SizedBox(width: 10,),
                     //#search
                     Expanded(
                       child: Container(
                         height: 46,
                         padding: EdgeInsets.only(left: 15, right: 15),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade500
                          ),
                         ),
                         child: TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "What is on your mind?",
                             hintStyle: TextStyle(color: Colors.grey),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               //# live, photo , check in
               Expanded(
                 child: Row(
                   children: [
                     Expanded(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.video_call, color: Colors.red,),
                           SizedBox(width: 5,),
                           Text("Live", style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 14,  bottom: 14),
                       width: 1,
                       color: Colors.grey.shade500,
                     ),
                     Expanded(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.photo, color: Colors.green,),
                           SizedBox(width: 5,),
                           Text("Photo", style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 14,  bottom: 14),
                       width: 1,
                       color: Colors.grey.shade500,
                     ),
                     Expanded(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.location_on, color: Colors.red,),
                           SizedBox(width: 5,),
                           Text("Check in",style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),

                   ],
                 ),
               ),
             ],
           ),
         ),

          //#post stories
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage:"assets/images/user_5.jpeg",
                    userName: "User Five"
                ),
                makeStory(
                    storyImage: "assets/images/story_4.jpeg",
                    userImage:"assets/images/user_4.jpeg",
                    userName: "User Four"
                ),
                makeStory(
                    storyImage: "assets/images/story_3.jpeg",
                    userImage:"assets/images/user_3.jpeg",
                    userName: "User Three"
                ),
                makeStory(
                    storyImage: "assets/images/story_1.jpeg",
                    userImage:"assets/images/user_1.jpeg",
                    userName: "User Two"
                ),
                makeStory(
                    storyImage: "assets/images/story_2.jpeg",
                    userImage:"assets/images/user_2.jpeg",
                    userName: "User One"
                ),
              ],
            ),
          ),
          //# post feed
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/user_2.jpeg",
            feedTime: "1 hr ago",
            feedText: "All the lorem ipsum generators on the internet tend to repeat predefined",
            feedImage: 'assets/images/story_2.jpeg',
            feedImage1: "assets/images/user_4.jpeg",
          ),
          //# post feed
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/user_3.jpeg",
            feedTime: "1 hr ago",
            feedText: "All the lorem ipsum generators on the internet tend to repeat predefined",
            feedImage: 'assets/images/story_3.jpeg',
            feedImage1: "assets/images/user_4.jpeg",

          ),
          //# post feed
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/user_4.jpeg",
            feedTime: "1 hr ago",
            feedText: "All the lorem ipsum generators on the internet tend to repeat predefined",
            feedImage: 'assets/images/story_4.jpeg',
            feedImage1: "assets/images/user_4.jpeg",

          ),
        ],
      ),
    );
  }
  Widget makeStory({storyImage,userImage,userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ]
          ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName,userImage,feedTime,feedText,feedImage, feedImage1}){
    return Container(
     margin: EdgeInsets.only(top: 10),
     color: Colors.black,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         //#header
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName, style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 3,),
                        Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
               IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey,))
              ],
            ),
              SizedBox(height: 30,),
              Text(feedText, style: TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: .7,height: 1.5),)
            ],
          ),
        ),
      SizedBox(height: 20,),
      //#photo
         Row(
           children: [
             Expanded(
               child: Container(
                 height: 240,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage(feedImage),
                     fit: BoxFit.cover
                   )
                 ),
               ),
             ),
             Expanded(
               child: Container(
                 height: 240,
                 decoration: BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage(feedImage1),
                         fit: BoxFit.cover
                     )
                 ),
               ),
             ),
           ],
         ),
         SizedBox(height: 20,),
         //#likes
         Container(
           padding: EdgeInsets.only(left: 10, right: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Row(
               children: [
                 makeLike(),
                 Transform.translate(
                   offset: Offset(-5,0),
                   child: makeLove(),
                 ),
                 SizedBox(width: 10,),
                 Text("25k", style: TextStyle(fontSize: 15, color: Colors.grey),)
               ],
              ),
               Text("400 comments", style:  TextStyle(color: Colors.grey, fontSize: 13),)
             ],
           ),
         ),
         SizedBox(height: 10,),
         Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             makeLikeButton(isActive:true),
             makeCommentButton(),
             makeShareButton(),
           ],
         ),
         SizedBox(height: 10,),
       ],
     ),
    );
  }
   Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, size: 18, color: isActive? Colors.blue: Colors.grey,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive? Colors.blue: Colors.grey,))
          ],
        ),
      ),
    );
   }


  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, size: 18, color:  Colors.grey,),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color:  Colors.grey,))
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, size: 18, color:  Colors.grey,),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color:  Colors.grey,))
          ],
        ),
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
       border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }

}
