import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project_post/controller/appcontroller.dart';
import 'package:getx_project_post/other/StringConstant.dart';
import 'package:getx_project_post/shared_ui/post_item.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HOME),
      ),
      body: Obx((){
        return controller.postLoading.value ?
        Center(
          child: CircularProgressIndicator(),
        ) :
        ListView.builder(
            padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
            itemBuilder: (context,position){
              var item = controller.getPosts[position];
              return Padding(
                  padding: EdgeInsets.only(bottom: 4),
                     child: Card(
                       elevation: 2.6,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           PostItem(item.title,item.body,item.userId)
                         ],
                       ),
                     ),
              );
            },
          itemCount: controller.getPosts.value.length,
        );
      }
      ),
    );
  }

}
