import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/screen/controller/anim_controller.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimData_Page extends StatefulWidget {
  const AnimData_Page({Key? key}) : super(key: key);

  @override
  State<AnimData_Page> createState() => _AnimData_PageState();
}

class _AnimData_PageState extends State<AnimData_Page> with TickerProviderStateMixin {
  Anim_Controller anim_controller = Get.put(Anim_Controller());
  AnimationController? animation;
  @override
  void initState() {
    super.initState();
    animation=AnimationController(duration: Duration(seconds: 5),vsync: this)..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue,
                child: Image.asset("${anim_controller.d1!.image2}",fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon:Icon(Icons.arrow_back_rounded,color: Colors.white,)
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 10.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("OVERVIEW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.sp),),
                          SizedBox(height: 1.h,),
                          Container(
                            height: 0.3.h,
                            width: 8.w,
                            color: Colors.blue.shade300,
                          ),
                          SizedBox(height: 2.h,),
                          Text("${anim_controller.d1!.over}",style: TextStyle(color: Colors.grey.shade300,fontSize: 12.sp,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 15.h),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 85.w,

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${anim_controller.d1!.name}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.sp),),
                        Text("Milkeyway Galaxey",style: TextStyle(color: Colors.grey.shade300,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 1.h,),
                        Container(
                          height: 0.3.h,
                          width: 8.w,
                          color: Colors.blue.shade300,
                        ),
                        SizedBox(height: 4.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 2.h,
                              width: 5.w,
                              child: Image.asset("assets/image/dis.png",fit: BoxFit.cover,color: Colors.grey.shade300,),
                            ),
                            SizedBox(width: 2.w,),
                            Text("${anim_controller.d1!.dis}",style: TextStyle(color: Colors.grey.shade300,fontSize: 11.sp),),
                            Text("${anim_controller.d1!.km}",style: TextStyle(color: Colors.grey.shade300,fontSize: 11.sp),),
                            SizedBox(width: 10.w,),
                            Container(
                              height: 2.h,
                              width: 5.w,
                              child: Image.asset("assets/image/gra.png",fit: BoxFit.cover,color: Colors.grey.shade300,),
                            ),
                            SizedBox(width: 2.w,),
                            Text("${anim_controller.d1!.gre}",style: TextStyle(color: Colors.grey.shade300,fontSize: 11.sp),),
                            SizedBox(width: 1.w,),
                            Text("m/s²",style: TextStyle(color: Colors.grey.shade300,fontSize: 11.sp),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 15.h),
                child: Align(
                  alignment: Alignment.center,
                  child: AnimatedBuilder(
                    child: InkWell(
                      onTap: (){
                        showModalBottomSheet(context: context, builder: (context) {
                          return Container(
                            height: 50.h,
                            width: double.infinity,
                            color: Colors.indigo.shade900,
                            child: Stack(
                              children: [
                                Container(
                                  height: 8.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Welcome to",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 3.w,),
                                      Text("${anim_controller.d1!.name}",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 20.h,
                                          width: 25.w,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle
                                          ),
                                          child: Image.asset("${anim_controller.d1!.image}"),
                                        ),
                                        Text("Distance to Sun",style: TextStyle(color: Colors.grey.shade400,fontSize: 12.sp),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("${anim_controller.d1!.dis}",style: TextStyle(color: Colors.grey.shade300,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 3.w,),
                                            Text("${anim_controller.d1!.dic}",style: TextStyle(color: Colors.grey.shade300,fontSize: 20.sp,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                        SizedBox(height: 2.h,),
                                        Text("Distance to Earth",style: TextStyle(color: Colors.grey.shade400,fontSize: 12.sp),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("${anim_controller.d1!.dis2}",style: TextStyle(color: Colors.grey.shade300,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 3.w,),
                                            Text("${anim_controller.d1!.dic}",style: TextStyle(color: Colors.grey.shade300,fontSize: 20.sp,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },);
                      },
                      child: Container(
                        height: 20.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("${anim_controller.d1!.image}"),
                      ),
                    ),
                    animation: animation!,
                    builder: (context, child) {
                      return Transform.rotate(angle: animation!.value*2*pi,child: child,);
                    },
                  ),
                ),
              )
            ],
          )
        )
    );
  }
}
