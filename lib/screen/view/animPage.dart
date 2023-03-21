import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/screen/controller/anim_controller.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class Anim_Page extends StatefulWidget {
  const Anim_Page({Key? key}) : super(key: key);

  @override
  State<Anim_Page> createState() => _Anim_PageState();
}

class _Anim_PageState extends State<Anim_Page> with TickerProviderStateMixin{
  Anim_Controller a2 = Get.put(Anim_Controller());

  AnimationController? animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(duration: Duration(seconds: 5),vsync: this)..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
      leading: Icon(
        Icons.menu,color: Colors.white,),
        title: Text("treva",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.search_rounded,color: Colors.white,)
        ],
      ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.indigo,
            child: Stack(
              children:[
                ListView.builder(itemCount: a2.a1.length,itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 100,
                  color: Colors.indigoAccent,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        child: Container(
                          width: 80.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w),
                                child: Text("${a2.a1[index].name}",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w),
                                child: Text("Milkeyway Galaxey",style: TextStyle(color: Colors.grey.shade300),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w,top: 0.5.h),
                                child: Container(
                                  height: 0.3.h,
                                  width: 8.w,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w,top: 4.h),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 2.h,
                                      width: 5.w,
                                      child: Image.asset("assets/image/dis.png",color: Colors.grey.shade300,),
                                    ),
                                    SizedBox(width: 1.w,),
                                    Text("${a2.a1[index].dis}",style: TextStyle(color: Colors.grey.shade300),),
                                    Text("${a2.a1[index].km}",style: TextStyle(color: Colors.grey.shade300),),
                                    SizedBox(width: 5.w,),
                                    Container(
                                      height: 2.h,
                                      width: 5.w,
                                      child: Image.asset("assets/image/gra.png",color: Colors.grey.shade300,),
                                    ),
                                    SizedBox(width: 1.w,),
                                    Text("${a2.a1[index].gre}",style: TextStyle(color: Colors.grey.shade300),),
                                    SizedBox(width: 0.w,),
                                    Text("m/s²",style: TextStyle(color: Colors.grey.shade300),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 2.w),
                      child: Align(
                        child: AnimatedBuilder(
                          child: InkWell(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle
                              ),
                              child: Image.asset("${a2.a1[index].image}"),
                            ),
                            onTap: (){
                              a2.d1 = a2.a1[index];
                              Get.toNamed('+');
                            },
                          ),
                          animation: animationController!,
                          builder: (context, child) {
                            return Transform.rotate(angle: animationController!.value*2*pi,child: child,);
                          },
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    )
                  ],
                ),
                );
              },),
            ]),
          ),
    )
    );
  }
}
