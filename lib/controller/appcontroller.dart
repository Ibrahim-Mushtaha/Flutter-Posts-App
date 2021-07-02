
import 'package:get/get.dart';
import 'package:getx_project_post/model/Posts.dart';
import 'package:getx_project_post/service/service.dart';
import 'package:getx_project_post/util/MockData.dart';

class AppController extends GetxController {

  var getPosts = List<Posts>().obs;
  var postLoading = true.obs;
  Services services = Services();

  @override
  void onInit() {
    callPostMethod();
    super.onInit();
  }

  void callPostMethod() async{
    try {
      postLoading.value = true;
      var result = await services.getallposts();
      if(result != null)
        getPosts.assignAll(result);
      else
        MockData.logger.e("data is null");
    } finally {
      postLoading.value = false;
    }
    update();
  }

}