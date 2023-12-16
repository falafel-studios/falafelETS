class Points {
  final int health;
  final int money;
  final int energy;
  final int mental;

  operator +(Points p) {
    return Points(
        health: health + p.health,
        money: money + p.money,
        energy: energy + p.energy,
        mental: mental + p.mental);
  }

  const Points({
    required this.health,
    required this.money,
    required this.energy,
    required this.mental,
  });
}

Map<String, int> points = {
  "life": 50,
  "money": 50,
  "energy": 50,
  "mental": 50,
};

class CardReturn {
  final Points points;
  final CardData card;

  const CardReturn({
    required this.points,
    required this.card,
  });
}

class CardData {
  final int id;
  final String name;
  final String text;
  final String? information;
  final bool informative;
  final Function left;
  final Function right;
  final String img;

  const CardData({
    required this.id,
    required this.name,
    required this.text,
    this.information,
    required this.informative,
    required this.left,
    required this.right,
    required this.img,
  });
}

const info = [
  CardData(
      id: 0,
      name: "Initial",
      text: "Estàs a punt per començar?",
      informative: false,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 1,
      name: "Drunk",
      text: "",
      informative: false,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 2,
      name: "Drive",
      text: "",
      informative: false,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 3,
      name: "Sex",
      text: "",
      informative: false,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 4,
      name: "Death",
      text: "",
      informative: false,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 5,
      name: "SIDA",
      text: "",
      information:
          "El SIDA es una una malaltia en la qual es produeix una pèrdua severa de la immunitat cel·lular del cos, reduint molt la resistència a la infecció i la malignitat. ",
      informative: true,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 6,
      name: "Clamídia",
      text: "",
      information:
          "La clamídia és una ETS comuna que pot causar infecció tant en homes com en dones. Pot causar danys permanents al sistema reproductor de la dona.",
      informative: true,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 7,
      name: "Gonorrea",
      text: "",
      information:
          "Els homes infectats poden experimentar dolor o ardor en orinar, secreció del penis o dolor testicular. Les dones infectades poden experimentar ardor en orinar, secreció vaginal, sagnat vaginal entre períodes o dolor pèlvic.",
      informative: true,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 8,
      name: "Sífilis",
      text: "",
      information:
          "La sífilis es transmet durant el sexe oral, vaginal i anal, durant l'embaràs i per transfusió de sang. La sífilis durant l'embaràs pot provocar morts, mort de nounats i nadons nascuts amb sífilis (sífilis congènita).",
      informative: true,
      left: dummy,
      right: dummy,
      img: "./img"),
  CardData(
      id: 9,
      name: "Genital herpes",
      text: "",
      information:
          "Sovint, l'herpes genital es pot transmetre pel contacte pell a pell durant l'activitat sexual. Algunes persones infectades amb el virus poden tenir símptomes molt lleus o no presentar cap símptoma. La infecció pot provocar butllofes o úlceres doloroses que poden repetir-se amb el temps.",
      informative: true,
      left: dummy,
      right: dummy,
      img: "./img"),
];

CardReturn dummy() {
  const Points p = Points(health: 12, money: -12, energy: 0, mental: 4);
  CardReturn a = CardReturn(points: p, card: info[1]);
  return a;
}
