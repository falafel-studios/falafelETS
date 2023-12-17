import 'package:falafel_ets/data/data.dart';

import 'logic.dart';

CardData buildStory1() {
  return CardData(
      id: 0,
      name: "Rollete 1",
      text: "És dijous i has sortit de festa, estas en un bar "
          "i comences a parlar amb una persona. La cosa flueix "
          "i es dona la situació de petó. Procedeixes amb el petó?",
      informative: false,
      information: "",
      left: nextStoryPoints(
          const Points(health: 0, money: 0, energy: -1, mental: -5)),
      right: nextStoryPointsAndCard(buildRightCard(),const Points(health: 10, money: -10, energy: -5, mental: 20)),
      img: "");
}


CardData buildRightCard() {
  return CardData(
      id: 1,
      name: "Herpes",
      text: "Has tingut la mala sort de contagiarte d'herpes bucal.",
      informative: true,
      information: "L'herpes bucal, coneguda també com a herpes labial, és una infecció "
          "viral comuna causada pel virus de l'herpes simple. es caracteritza per "
          "la formació de berrugues o úlceres doloroses al voltant de la boca."
          "els brots solen ser recurrents i poden ser desencadenats per factors "
          "com l'estrès o l'exposició al sol. el tractament sovint inclou "
          "medicaments antivirals tòpics per alleujar els símptomes.",
      right: rightBranchStory2(),
      left: nextStoryPoints(
          const Points(health: 0, money: 0, energy: 0, mental: 0)),
      img: "");
}

rightBranchStory2() {
  var aidsCard = buildAidsCard();
  return nextStory(CardData(
      id: 2,
      name: "casa",
      information: "",
      text:
      "La nit avança i la conversacio tambe, hi ha feeling i"
          "acabeu parlant d'anar a casa junts. Accedeixes?",
      informative: false,
      left: nextStoryPoints(
          const Points(health: 0, money: 10, energy: 10, mental: 20)),
      right: nextStoryPointsAndCard(
          CardData(
              id: 3,
              name: "brokenCondom",
              text: "Esteu a casa teva, hi ha bon ambient i la conversacio avança"
                  " Finalment,i entre els dos, decidiu mantenir"
                  " relacions sexuals. Aqui sorgeix la pregunta "
                  "de si fer-ho amb protecció o sense"
                  "Que feu?",
              informative: false,
              information: "",
              left: aidsCard,
              right: nextStoryPointsAndCard(
                  CardData(
                      id: 4,
                      name: "YesCondoms",
                      information: "",
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
                              information: "",
                              text:
                                  "Heu continuat passant-ho genial mantenit altres tipus de relacions sexuals",
                              informative: false,
                              left: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              right: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              img: ""),
                          const Points(
                              health:5 , money: 10, energy: 10, mental: 15)),
                      right: nextStoryPointsAndCard(
                          CardData(
                              id: 5,
                              name: "Farmacia2",
                              information: "",
                              text: "Has comprat la pastilla molt be",
                              informative: false,
                              left: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              right: nextStoryPoints(const Points(
                                  health: 0, money: 0, energy: 0, mental: 0)),
                              img: ""),
                          const Points(
                              health: -10, money: 0, energy: 0, mental: 0)),
                      img: ""),
                  const Points(health: 0, money: 0, energy: 0, mental: 0)),
              img: ""),
          const Points(health: 0, money: -5, energy: -10, mental: 15)),
      img: ""));
}


buildAidsCard() {
  return nextStoryPointsAndCard(
      CardData(
        id: 4,
        information: "",
        name: "NoCondo",
        text:
            "Has decidit tenir relacion sexuals sense proteccio i esteu preocupats"
                " de si us podrieu haver contagiat d'alguna ETS"
                ", us plantejeu d'anar al CAP per obtenir la pastilla del VIH"
                "Aneu a per la pildora?",
        informative: false,
        left: nextStoryPoints(const Points(
            health: -10, money: 15, energy: -10, mental: -10)),
        right: nextStory(CardData(
            id: 7,
            name: "PatillaComprada",
            text: "Heu comprat la pastilla  ",
            informative: true,
            information: "La píndola del dia següent és un anticonceptiu d'emergència"
                "que pot prevenir l'embaràs després d'una relació"
                "sexual sense protecció. S'ha de prendre tan aviat"
                "com sigui possible després de l'acte, i pot ser"
                "efectiva fins a 72 hores després. Consulta amb un"
                "professional de la salut per obtenir informació"
                "específica i consell personalitzat.",
            left: nextStoryPoints(
                const Points(health: 0, money: 0, energy: 0, mental: 0)),
            right: nextStoryPoints(
                const Points(health: 0, money: 0, energy: 0, mental: 0)),
            img: "")),
        img: '',
      ),
      const Points(health: -5, money: -10, energy: -3, mental: -3));
}
