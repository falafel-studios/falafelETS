import 'package:falafel_ets/data/data.dart';

import 'logic.dart';

CardData buildStory1() {
  return CardData(
      id: 0,
      name: "Rollete 1",
      text: "Es dijous i has sortit de festa, estas en un bar i començes"
          "a parlar amb una persona que et sembla atractiva la cosa flueix"
          "i es dona la situacio de peto. Procedeixes amb el peto?",
      informative: false,
      left: nextStoryPoints(
          const Points(health: 0, money: 0, energy: -1, mental: -5)),
      right: nextStory(buildRightCard()),
      img: "");
}

CardData buildHerpesExplain() => CardData(
    id: 1,
    name: "Herpes",
    text: "l'herpes bucal, coneguda també com a herpes labial, és una infecció "
        "viral comuna causada pel virus de l'herpes simple. es caracteritza per "
        "la formació de berrugues o úlceres doloroses al voltant de la boca."
        "els brots solen ser recurrents i poden ser desencadenats per factors "
        "com l'estrès o l'exposició al sol. el tractament sovint inclou "
        "medicaments antivirals tòpics per alleujar els símptomes.",
    informative: true,
    information: "Herpes bucal",
    right: rightBranchStory2(),
    left: nextStoryPoints(
        const Points(health: 0, money: 0, energy: 0, mental: 0)),
    img: "");

CardData buildRightCard() {
  var story = nextStory(buildHerpesExplain());
  return CardData(
      id: 1,
      name: "Herpes",
      text: "Has tingut la mala sort de contagiarte d'herpes bucal.",
      informative: true,
      information: "Herpes bucal",
      right: story,
      left: story,
      img: "");
}

rightBranchStory2() {
  var aidsCard = buildAidsCard();
  return nextStory(CardData(
      id: 2,
      name: "casa",
      text:
          "La nit avança i la cosa rulla, entre broma i broma acabeu parlant d'anar a casa junts. Accedeixes?",
      informative: false,
      left: nextStoryPoints(
          const Points(health: 0, money: 0, energy: 0, mental: 0)),
      right: nextStoryPointsAndCard(
          CardData(
              id: 3,
              name: "brokenCondom",
              text: "La nit es jove i les ganes son moltes per tant el tema"
                  "avança , i decidiu mantenir relacions sexuals. Amb"
                  "proteccio o sense?",
              informative: false,
              left: aidsCard,
              right: nextStoryPointsAndCard(
                  CardData(
                      id: 4,
                      name: "YesCondoms",
                      text: "Has decidit fer us de la proteccio"
                          "anticonceptiva. Heu iniciat les relacios"
                          "sexuals amb la mala sort de que s'ha trencat"
                          "el preservatiu. Continues amb l'acte de"
                          "penetracio? ",
                      informative: false,
                      left: nextStoryPointsAndCard(
                          CardData(
                              id: 5,
                              name: "NoContinuar",
                              text:
                                  "Heu continuat passant-ho genial mantenit altres tipus de relacions sexuals",
                              informative: false,
                              left: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              right: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              img: ""),
                          const Points(
                              health: 30, money: 10, energy: 10, mental: 20)),
                      right: nextStoryPointsAndCard(
                          CardData(
                              id: 5,
                              name: "Farmacia2",
                              text: "Has comprat la pastilla molt be",
                              informative: false,
                              left: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              right: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              img: ""),
                          const Points(
                              health: -30, money: 0, energy: 0, mental: 0)),
                      img: ""),
                  const Points(health: 0, money: 0, energy: 0, mental: 0)),
              img: ""),
          const Points(health: 0, money: -5, energy: -20, mental: 50)),
      img: ""));
}

buildAidsExplain() {
  return nextStoryPointsAndCard(
      CardData(
          id: 4,
          name: "NoCondo",
          text: "La infecció pel VIH (virus de la immunodeficiència"
              "humana) és una condició crònica que afecta el sistema "
              "immunològic. Es transmet principalment a través de"
              "relacions sexuals no protegides o contacte amb fluids"
              "corporals infectats. El VIH pot evolucionar cap al"
              "SIDA (síndrome d'immunodeficiència adquirida) si no"
              "es tracta adequadament. Malgrat que no hi ha cura,"
              "els medicaments antiretrovirals poden gestionar la"
              "infecció i mantenir una vida saludable. És crucial"
              "fer proves regulars i prendre precaucions per prevenir"
              "la transmissió.",
          informative: true,
          left: nextStoryPoints(
              const Points(health: 0, money: 0, energy: 0, mental: 0)),
          right: nextStory(CardData(
              id: 6,
              name: "Farmacia",
              text:
                  "Us heu despertat el dia seguent i us esteu plantejant si anar a aconseguir la pastilla per el VIH. Que feu, aneu a comprar-la?",
              informative: false,
              left: nextStoryPoints(const Points(
                  health: -15, money: 20, energy: -20, mental: -10)),
              right: nextStory(CardData(
                  id: 7,
                  name: "PatillaComprada",
                  text: "Heu comprat la pastilla tot be, like ,La píndola"
                      "del dia següent és un anticonceptiu d'emergència"
                      "que pot prevenir l'embaràs després d'una relació"
                      "sexual sense protecció. S'ha de prendre tan aviat"
                      "com sigui possible després de l'acte, i pot ser"
                      "efectiva fins a 72 hores després. Consulta amb un"
                      "professional de la salut per obtenir informació"
                      "específica i consell personalitzat.",
                  informative: true,
                  left: nextStoryPoints(
                      const Points(health: 0, money: 0, energy: 0, mental: 0)),
                  right: nextStoryPoints(
                      const Points(health: 0, money: 0, energy: 0, mental: 0)),
                  img: "")),
              img: "")),
          img: ""),
      const Points(health: -75, money: -10, energy: -30, mental: -30));
}

buildAidsCard() {
  var buildAidsExplain2 = buildAidsExplain();
  return nextStoryPointsAndCard(
      CardData(
        id: 4,
        name: "NoCondo",
        text:
            "Has decidit tenir relacion sexuals sense proteccio i has tingut la mala sort de contagiarte de HIV :(.",
        informative: true,
        left: buildAidsExplain2,
        right: buildAidsExplain2,
        img: '',
      ),
      const Points(health: -75, money: -10, energy: -30, mental: -30));
}
