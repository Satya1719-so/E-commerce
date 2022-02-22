class Clothes{
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String>detailUrl;
  Clothes(this.title,this.subtitle,this.price,this.imageUrl,this.detailUrl);
  static List<Clothes> generateClothes(){
    return[
Clothes("Gucci oversize",'Hoodie',"79.00","assets/images/ladies1.jpg",["assets/images/ladies1.jpg","assets/images/ladies2.jpg"]),
Clothes(
  "Man coat",
  "kain-jacket",
  "39.99",
  "assets/images/boys1.jpg",
  ["assets/images/boys1.jpg","assets/images/boys2.jpg"])

    ];
  }
}