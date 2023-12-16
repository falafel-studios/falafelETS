class CardData{
  final int id;
  final String name;
  final void left;
  final void right;
  final String img;

  const CardData({
    required this.id,
    required this.name,
    required this.left,
    required this.right,
    required this.img,
  });
}

const info = [
  CardData(id: 0, name: "Initial", left: dummy, right: dummy, img: "./img"),
  CardData(id: 1, name: "Drunk", left: dummy, right: dummy, img: "./img"),
  CardData(id: 2, name: "Drive", left: dummy, right: dummy, img: "./img"),
  CardData(id: 3, name: "Sex", left: dummy, right: dummy, img: "./img"),
  CardData(id: 4, name: "Death", left: dummy, right: dummy, img: "./img"),
  CardData(id: 5, name: "AIDS", left: dummy, right: dummy, img: "./img"),
  CardData(id: 6, name: "Chlamydia", left: dummy, right: dummy, img: "./img"),
  CardData(id: 7, name: "Gonorrhea", left: dummy, right: dummy, img: "./img"),
  CardData(id: 8, name: "Syphilis", left: dummy, right: dummy, img: "./img"),
  CardData(id: 9, name: "Genital herpes", left: dummy, right: dummy, img: "./img"),
];

void dummy(){}
