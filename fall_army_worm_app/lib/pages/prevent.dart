import 'package:flutter/material.dart';

class PreventPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<PreventPage> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Prevention Information"),
          backgroundColor: Colors.lightGreen,
        ),

       body: Container(
         padding : EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Text("How to protect yourself from a Fallarmy Worm Attack",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
              textAlign: TextAlign.center,
                  ),
            Text("\n" "\n""Food resources" "\n" "Caterpillars, Witch Hazel",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                  textAlign : TextAlign.center),
              Text(
                "\n" "The armyworm's diet consists mainly of grasses and small-grain crops such as corn, but the species has been noted to consume over 80 different plants." + "\n"
                "Armyworms earned their common name by eating all plant matter they encounter in their wide dispersals, like a large army." + "\n"
                "\n"
                "A few sweet corn varieties have partial, but not complete, resistance to armyworms." + "\n"
                "The resistance comes from a unique 33-kD proteinase that the corn produces when it is being fed on by fall armyworms or other larva." + "\n"
                "This protein was found to significantly decrease fall armyworm larva growth." + "\n" ),
            Image.asset('assets/images/faw-infestation1.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,),

            Text("Egg" + "\n" ,
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                textAlign : TextAlign.center),
            Text(
            "The armyworm's egg is dome-shaped, and measures around 0.4 mm in diameter and 0.3 mm in height." + "\n"
            "Females prefer to lay eggs on the underside of leaves, but in high populations they will lay them just about anywhere." + "\n" "\n"
            "In warm weather, the eggs will hatch into larvae within a few days." + "\n" ),
            Image.asset('assets/images/faw-eggs.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,),

            Text("Larva" + "\n",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                textAlign : TextAlign.center),
           Text(
                "The larva go through six different instars, each varying slightly in physical appearance and pattern." + "\n"
                "The larva process lasts from 14 to 30 days, again depending on temperatures." + "\n" "\n"
                "The mature caterpillar is about 1.5–2.0 inches (38–51 mm) in length." + "\n" "\n"
                "This is the most destructive life stage as the larvae have biting mouth parts." + "\n" "\n"
                "The larvae have a distinctive inverted Y suture on the forehead." + "\n"),
            Image.asset('assets/images/faw-larvae.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,),

            Text("Adults" + "\n",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                textAlign : TextAlign.center),
                Text(
                "Once emerged, the adults live for about 10 days, and sometimes up to 21 days, with the female laying most of her eggs early in life." + "\n" "\n"
                "Adults are nocturnal and fare best during warm and humid nights." + "\n"),
            Image.asset('assets/images/faw-adult.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,),

            Text("Enemies" + "\n" "\n" "Predators",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                textAlign : TextAlign.center),
                Text(
                "Fall armyworm caterpillars are directly preyed upon by many invertebrates and vertebrates. Common predators include birds, rodents, beetles, earwigs, and other insects." + "\n" "\n"
                "It has been shown that direct predation can cause significant losses to caterpillar populations." + "\n"
                "The larva's main defense against enemies is their ability to reach large numbers and migrate before seasonal conditions are suitable for predators." + "\n"

                "Parasitoids" + "\n" + "\n"
                "Fly and wasp parasitoids target the fall armyworm, most commonly Archytas marmoratus, Cotesia marginiventris, and Chelonus texanus." + "\n" "\n"
                "The armyworm is also vulnerable to additional parasitoids, varying with location." + "\n"

                "Parasites and disease" + "\n" + "\n"
                "Fifty-three different parasite species have been discovered in fall armyworm larvae, spanning ten different families." + "\n" "\n"
                "Often larvae can survive through much of their crop consumption despite outbreaks of disease, because of the larva's fast life cycle." + "\n" "\n"
                "Despite this, parasites of the fall armyworm are being studied extensively as a means of fighting armyworm attacks on crops." + "\n" "\n"
                "One suggested approach would be to introduce parasites from South America to North American fall armyworms, and vice versa." + "\n"),

            Text("Scouting and Monitoring for timely action"  + "\n",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                textAlign : TextAlign.center),
            Image.asset('assets/images/FAWwalk.jpg',
              width: 500,
              height: 170,
              fit: BoxFit.cover,),
            Text(
            "Early detection or observation of symptoms of fall armyworm is essential for its effective management." + "\n"
            "This is achieved by scouting, which involves walking in crop fields in a systematic pattern to physically look for larvae or damage by the pest every week (or more frequently), starting from crop emergence stage onwards."
            "\n" "\n" "See example above" + "\n" "\n"
            "Movement pattern for scouting in a maize field - inspect 10-20 plants at each stop point" + "\n"
            "Move in “V” or “W” patterns to examine a number of plants at several stop points depending on the size of the farm." + "\n" + "\n"
              "Look out for the following:-" + "\n" "\n"
              "Cream / grey egg masses covered with wool/cotton-like material on the underside of lower leaves." + "\n"
              "Green, brown or black larvae inside the whorl particularly young maize." + "\n"
              "Early-feeding / “leaf scratching” lesions." + "\n"
              "Ragged and elongated holes on the leaves." + "\n"
              "Damage on tassels and ears" + "\n"),
          Text ("Combating FAW" "\n",
                  style: new TextStyle(fontWeight:  FontWeight.bold, fontSize: 18,),
                  textAlign: TextAlign.center,),
            Text("1. Plant early in the season, avoiding late and off-season planting" "\n" "\n"
                "Early planting allows maturity of maize before high pest population build-up." "\n"
                "\n"
                "2. Use mechanical control methods" "\n" "\n"
                "Examples include the following:" "\n" "\n"
                "Handpicking and squashing egg masses." "\n""\n"
                "Picking and crashing caterpillars or drowning them in soapy water." "\n" "\n"
                "Ploughing before onset of rains to expose pupae to predators and solar heat." "\n""\n"
                "Application of suffocating materials such as wood ash, dry soil/sand in plant whorls." "\n""\n"
                "3. Use of insecticides" "\n"),
            Image.asset('assets/images/freshMan.jpg',
              width: 200,
              height: 350,
              fit: BoxFit.cover,),
           Text(
               "\n"  "Spray late in the evening or very early in the morning when the larvae are active (not hiding)." "\n""\n"
                    "Direct the spray to the plant whorls (funnel) and top leaves." "\n""\n"
                    "Repeat spraying 2 to 3 times to target young larvae that emerge after earlier sprays – it can be at 2 weeks intervals or as guided by scouting observations." "\n""\n"
                   "Ensure food safety, protection of human health and avoid environmental pollution; spray only when necessary on the basis of scouting observations and avoid spraying 2 months to maturity of maize." "\n""\n"
                   "Choose an appropriate insecticide on the basis of experience or recommendation from agricultural extension agents." "\n""\n"
                   "Several insecticides are effective against fall armyworm, subject to appropriate application as outlined above." "\n""\n"
                   "Among others, the following insecticides have proved to be effective:-" "\n""\n"
                   "Abamectin + Chlorantraniliprole (e.g. Voliam Targo 063 SC);" "\n""\n"
                   "Lufenuron (e.g. Match 50EC);" "\n""\n"
                   "Chlorantraniliprole (e.g. Coragen 20SC);" "\n""\n"
                   "Emamectin benzoate (e.g. Prove 1.92EC);" "\n""\n"
                   "Pyriproxyfen (e.g. Profen 10.8EC);" "\n""\n"
                   "Acephate (e.g. Orthene Pellet), etc." "\n""\n"
                   "Alternate products with different active ingredients, preferably after 2 applications, to prevent pesticide resistance development.""\n""\n"
                   "4. Restrict/prevent  movement  of infested  plant  materials" "\n""\n"
                   "Destroy infested materials or feed them to livestock as close to the affected farm as possible. Be very careful when feeding livestock after disposal; particularly if spraying had been done recently, to avoid animal poisoning." "\n""\n"
                   "5. FAW Tolerant Maize Varieties" "\n""\n"
                   "Currently no FAW tolerant varieties available in the market, However researchers are currently undertaking research towards release of such varieties" "\n"
            )
          ],
        )
        )

    );
  }
}

