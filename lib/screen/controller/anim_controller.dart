import 'package:galaxy_planets/screen/model/aniModel.dart';
import 'package:get/get.dart';

class Anim_Controller extends GetxController {
  List<AnimModel> a1 = [
    AnimModel(
        name: "Earth",
        image: "assets/image/earth.png",
        dis: 148.96,
        dis2: 148.96,
        gre: 9.80,
        km: "m km",
        image2: "assets/image2/earth2.png",
        over: "Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things.",dic: "million km"),
    AnimModel(
        name: "Mars",
        image: "assets/image/mars.png",
        dis: 246.93,
        dis2: 201.12,
        gre: 3.72,
        km: "m km",
        image2: "assets/image2/mars2.png",
        over: "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere.",
        dic: "million km"),
    AnimModel(
        name: "Mercury",
        image: "assets/image/mercury.png",
        dis: 51.48,
        dis2: 199.66,
        gre: 3.7,
        km: "m km",
        image2: "assets/image2/mercury2.png",
        over: "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon.",
        dic: "million km"),
    AnimModel(
        name: "Moon",
        image: "assets/image/moon.png",
        dis: 150,
        dis2: 384.40,
        gre: 1.62,
        km: "m km",
        image2: "assets/image2/moon2.png",
        over: "Earth's Moon is the only place beyond Earth where humans have set foot.",
        dic: "million km"),
    AnimModel(
        name: "Neptune",
        image: "assets/image/neptune.png",
        dis: 4.47,
        dis2: 4.62,
        gre: 11.15,
        km: "b km",
        image2: "assets/image2/neptune2.png",
        over: "Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system.",
    dic: "billion km"),
  ];
  AnimModel? d1;
}
