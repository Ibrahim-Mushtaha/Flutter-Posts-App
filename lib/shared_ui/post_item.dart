import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {

  final String title;
  final String description;
  final int userid;


  PostItem(
      this.title,
      this.description,
      this.userid,
      );

  @override
  Widget build(BuildContext context) {
    //todo create card with image and title & etc...
    return InkWell(
      onTap: () {
        print("item is clicked");
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12,left: 12,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title ?? "ibrahim ali",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8,),
                Text(description ?? "Lorem Ipsum is simply dummy text of.",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8,),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FlatButton(onPressed: (){

                  },
                      child: Text("#${this.userid}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                  )
                ],
              ),
              Row(
                children: [
                  FlatButton(onPressed: (){

                  },
                      child: Text("share",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                  ),
                  FlatButton(onPressed: (){

                  },
                      child: Text("Open",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
