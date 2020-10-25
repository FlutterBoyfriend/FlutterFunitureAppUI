//Imagine this are coming from the Internet
class Items {
  String name;
  String description;
  String imgUrl;
  String price;
  String treatment;
  String infomation;
  String size;
  Items({this.name, this.description, this.imgUrl, this.price});
}

Items armChair = Items(
    name: "Amos Chairs",
    description: "A modern take on\ntradition",
    imgUrl: "images/armchair_khaki.png",
    price: "680");

Items armChair1 = Items(
    name: "Kew Chairs",
    description: "A modern take on\ntradition",
    imgUrl: "images/armchair_white.png",
    price: "560");

Items bathTub = Items(
    name: "White Bathtub",
    description: "A modern take on\ntradition",
    imgUrl: "images/bathtub.png",
    price: "250");

Items bedRoom = Items(
    name: "Bed",
    description: "A modern take on\ntradition",
    imgUrl: "images/bed.png",
    price: "140");

Items shower = Items(
    name: "Shower",
    description: "A modern take on\ntradition",
    imgUrl: "images/shower.png",
    price: "150");

Items sink = Items(
    name: "Toilet Sink",
    description: "A modern take on\ntradition",
    imgUrl: "images/sink.png",
    price: "480");

Items table = Items(
    name: "Dinning Table",
    description: "A modern take on\ntradition",
    imgUrl: "images/table.png",
    price: "370");

Items toilet = Items(
    name: "Toilet Seater",
    description: "A modern take on\ntradition",
    imgUrl: "images/toilet.png",
    price: "570");

List<Items> itemsList = [
  armChair,
  armChair1,
  bathTub,
  bedRoom,
  shower,
  sink,
  table,
  toilet
];
