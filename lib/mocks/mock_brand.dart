class Brand {
  int id;
  String image_url;
  String brand_name;

  Brand(this.id, this.brand_name, this.image_url);
}

class MockBrand {
  static List<Brand> brands = [
    Brand(
      10,
      "Acer",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1747713658/mobile-wars/nsbsdnhl0yztdigwdlef.jpg",
    ),
    Brand(42, "Asus", ""),
    Brand(
      3,
      "Dell",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1736063104/mobile-wars/ugwpi0jnu9jpw17ryjfo.jpg",
    ),
    Brand(
      9,
      "Dynabook",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1747713658/mobile-wars/nsbsdnhl0yztdigwdlef.jpg",
    ),
    Brand(
      6,
      "Fujitsu",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1747713658/mobile-wars/nsbsdnhl0yztdigwdlef.jpg",
    ),
    Brand(11, "Google", ""),
    Brand(
      7,
      "Hp",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1735983781/mobile-wars/zzlj1tyrjhtk47myocsw.jpg",
    ),
    Brand(
      4,
      "Lenovo",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1735983697/mobile-wars/dwsaf9aqsrlbbg9ecq4m.jpg",
    ),
    Brand(
      14,
      "Macbook",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1736064427/mobile-wars/xsr5iyiprqpsxwir17h3.jpg",
    ),
    Brand(
      8,
      "Microsoft",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1736064483/mobile-wars/ltyirq1lllwpbgf9knne.jpg",
    ),
    Brand(35, "MSI", ""),
    Brand(
      17,
      "Panasonic",
      "https://res.cloudinary.com/dalg3ayqh/image/upload/v1747713658/mobile-wars/nsbsdnhl0yztdigwdlef.jpg",
    ),
  ];

  static Brand getBrandById(int id) {
    return brands.firstWhere((brand) => brand.id == id);
  }
}
