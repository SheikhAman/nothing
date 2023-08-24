import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(onPressed: messageDialog, child: Text('This')),
        ],
      )),
    );
  }

  void messageDialog() {
    Get.dialog(
      Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight:
                Get.height * 0.8, // You can adjust the maximum height here
          ),
          child: Material(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                // height: Get.height * 0.6,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color(0xff282b32),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.white,
                        ),
                        const Text(
                          'New Message',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        const Icon(
                          Icons.mode_edit_outline_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                        const Icon(
                          Icons.insert_drive_file_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        const Icon(
                          Icons.pending_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1d60ed),
                          ),
                          onPressed: saveDraftDialog,
                          child: const Text(
                            'Send',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          'To',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.1,
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          icon: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person),
                          ),
                          label: const Text(
                            "Sheikh Aman",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          'From',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff272a30),
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          icon: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person),
                          ),
                          label: FittedBox(
                            child: const Text(
                              "iamAman@gmail.com",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Subject',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        const Text(
                          "Articles about flat Earth theory.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Brief 20122022 - 2MB',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: Get.height * 0.3,
                      child: ListView(
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin blandit lectus ac nisi pulvinar, vel blandit dui lacinia. Nulla facilisi. Nulla dictum facilisis semper. Donec diam odio, pulvinar vel feugiat et, lobortis quis odio. Curabitur ante urna, maximus quis ligula a, gravida ultrices dolor. Nunc id porttitor mi, eget suscipit eros. Aenean posuere metus ac bibendum mollis. Aenean efficitur vel nisi in aliquam. Fusce volutpat, ante elementum fermentum venenatis, massa sapien dapibus nisl, nec viverra dolor erat et enim. Mauris a eleifend lectus. Ut at hendrerit justo. Duis et ante commodo, tempor libero ac, faucibus purus. Duis non blandit tortor. Cras ornare eros vel magna facilisis condimentum eget nec tortor. Proin at libero urna. Nunc eu risus in ex aliquam condimentum. Suspendisse tristique libero felis, pellentesque convallis neque tempus sed. Nam pellentesque ipsum sit amet rutrum cursus. In semper, ipsum ut lacinia vestibulum, sapien est cursus lectus, sit amet placerat est neque eu ante. Mauris a tellus dolor. Vivamus sollicitudin luctus sem, ut accumsan purus viverra et. Etiam a mattis arcu. Vestibulum ut risus at nunc pharetra placerat. Mauris id ex ante. Pellentesque ullamcorper feugiat venenatis. Quisque nisl velit, pharetra at iaculis ut, finibus a leo.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void saveDraftDialog() {
    Get.dialog(Center(
      child: Material(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(50.0),
            constraints: BoxConstraints(
              maxHeight: Get.height * 0.3,
              // You can adjust the maximum height here
            ),
            decoration: BoxDecoration(
              color: Color(0xff2e2f31),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Would you like to save this as a draft",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "or completely delete it? Press",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Save Draft",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Delete",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
