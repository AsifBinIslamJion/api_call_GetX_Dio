import 'package:api_call/src/models/news_app_model.dart';
import 'package:api_call/src/services/api_service.dart';
import 'package:get/get.dart';

class ApiController extends GetxController {
  final ApiService apiService = ApiService();
  RxList<NewsAppModel> postList = <NewsAppModel>[].obs;
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> fetchPost() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final response2 = await apiService.getPost();

      if (response2.statusCode == 200) {
        List data = response2.data;
        postList.value = data
            .map((item) => NewsAppModel.fromJson(item))
            .toList();
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
