class Prodect {
  final String name, dec, image;
  final int prise;
  Prodect({
    this.name,
    this.dec,
    this.prise,
    this.image,
  });
}

List<Prodect> prodects = [
  Prodect(
      name: 'Flower lamp',
      dec: 'eco friendly Diwali lamp',
      prise: 50,
      image: 'assets/images/p1.png'),
  Prodect(
      name: 'Clay lamp',
      dec: 'eco friendly Diwali lamp',
      prise: 70,
      image: 'assets/images/p2.png'),
  Prodect(
      name: 'Dung Lamp',
      dec: 'eco friendly Diwali lamp',
      prise: 60,
      image: 'assets/images/p3.png'),
];
