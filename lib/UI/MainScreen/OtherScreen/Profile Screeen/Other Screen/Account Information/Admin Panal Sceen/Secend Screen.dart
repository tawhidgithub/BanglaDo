import 'dart:io';

import 'package:copy/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../State/Admin State/adminState.dart';
import '../../../../../../../State/Upload Data/Upload Data.dart';

class adminSecendScreen extends StatefulWidget {
  const adminSecendScreen({super.key});

  @override
  State<adminSecendScreen> createState() => _adminSecendScreenState();
}

class _adminSecendScreenState extends State<adminSecendScreen> {
  UploadDataController UploadController = Get.put(UploadDataController());

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    AdminState adminController = Get.put(AdminState());
    UploadDataController uploadController = Get.put(UploadDataController());

    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shop Add",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, fontSize: 21),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      adminController.picImage2();
                    },
                    child: Obx(() {
                      return Container(
                        height: 150,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: .6, color: AppColors.ButtonColor)),
                        child: adminController.imagePath.isEmpty
                            ? const Icon(Icons.add)
                            : Image.file(
                            File(adminController.imagePath.toString())),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          adminController.imagePath.value = "";
                        },
                        child: Container(
                          height: 80,
                          width: width * 0.4 + 20,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          UploadController.upLoadShopAdd();
                        },
                        child: Obx(() => Container(
                          height: 80,
                          width: width * 0.4 + 20,
                          decoration: BoxDecoration(
                              color: AppColors.ButtonColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: UploadController.logind.value == true
                                  ? const CircularProgressIndicator()
                                  : Text(
                                "Upload",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              )),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Home Page Baner",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, fontSize: 21),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: hight * 0.3,
                    child: Obx(() {
                      return ListView.builder(
                          itemCount: adminController.imagesPathList.isEmpty
                              ? 1
                              : adminController.imagesPathList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {

                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  height: 150,
                                  width: width * 0.9,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: .6,
                                          color: AppColors.ButtonColor)),
                                  child: adminController.imagesPathList.isEmpty
                                      ? const Icon(Icons.add)
                                      : Image.file(File(adminController
                                      .imagesPathList[index].path)),
                                ),
                              ),
                            );
                          });
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          adminController.imagesPathList.value = [];
                        },
                        child: Container(
                          height: 80,
                          width: width * 0.4 + 20,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                      Obx(() {
                        return InkWell(
                          onTap: () {
                            uploadController.uploadHomeAddImage();
                          },
                          child: Container(
                            height: 80,
                            width: width * 0.4 + 20,
                            decoration: BoxDecoration(
                                color: AppColors.ButtonColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: uploadController.logind2 == true
                                    ? const CircularProgressIndicator()
                                    : Text(
                                  "Upload",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}