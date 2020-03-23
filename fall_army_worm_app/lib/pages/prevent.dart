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
                   "Currently no FAW tolerant varieties available in the market, However KALRO researchers are currently undertaking research towards release of such varieties" "\n"
            )
          ],
        )
        )


                                                      // DO NOT REMOVE NEEDED LATER


//                "The term 'armyworm' can refer to several species, often describing the large-scale invasive behavior of the species' larval stage." + "\n" +
//                "It is regarded as a pest and can damage and destroy a wide variety of crops, which causes large economic damage." + "\n" +
//                "Its scientific name derives from frugiperda, which is Latin for lost fruit, named because of the species' ability to destroy crops." + "\n" +
//                "Because of its propensity for destruction, the fall armyworm's habits and possibilities for crop protection have been studied in depth." + "\n" +
//                "It is also a notable case for studying sympatric speciation, as it appears to be diverging into two species currently." + "\n" +
//                "Another remarkable trait of the larva is that they practice cannibalism." + "\n" +"\n" +"\n"
//                "The fall armyworm is active at a different time of year than the true armyworm, another species in the order Lepidoptera and family Noctuidae, but of the genus Mythimna." + "\n"
//                "Outbreaks of the true armyworm usually occur during the early part of the summer; the fall armyworm does most damage in the "
//                "late summer in the southern part of the United States, and early fall in the northern regions." + "\n" + "\n" + "\n"
//                + "Description" + "\n" +
//                "The adult moths are 32 to 40 mm wing tip to wing tip, with a brown or gray forewing, and a white hind wing." + "\n" +
//                "There is slight sexual dimorphism, with males having more patterns and a distinct white spot on each of their forewings." + "\n" +
//                "The first larval instar is light colored with a larger dark head." + "\n" +
//                "As they develop through instars, they become browner with white lengthwise lines." + "\n" +
//                "They also develop dark spots with spines." + "\n" + "\n" + "\n" +
//
//                "Geographic range" + "\n" + "\n" + "\n" +
//                "The fall armyworm is widely distributed in Eastern and Central North America and in South America." + "\n" +
//                "It has been invasive in Africa since 2016." + "\n" +
//                "It cannot overwinter in below freezing temperatures, so it only survives the winter in the most southern regions of the United States, namely Texas and Florida."  + "\n" +
//                "Because of this, the fall armyworm is a more prominent pest in southeastern states." + "\n" +
//                "However, seasonally it will spread across the eastern United States and up to southern Canada, inhabiting areas with suitable food supplies." + "\n" + "\n" +
//                "The potential global distribution of S. frugiperda has been modelled using CLIMEX." + "\n" +
//                "The modelled global potential distribution reflects the marked seasonal range dynamics experienced in North America," +
//                "with much of the potential range in Europe, South Africa, China and Australia consisting of habitat that is only climatically suitable during the warmer months." + "\n" + "\n" +
//
//                "Invasive spread" + "\n" + "\n" +
//                "It was first reported in Africa in 2016, where it is causing significant damage to maize crops and has great potential for further spread and economic damage." + "\n" +
//                "It has since spread to 28 countries in Africa." + "\n" +
//                "In 2018, it began to spread widely in India." + "\n" +
//                "In January 2019, a heavy infestation of fall armyworm was recorded in corn plantations of Sri Lanka." + "\n" + "\n" +
//
//                "The pest was first detected in China in the southwest province of Yunnan in January 2019." + "\n" +
//                "Through 2019, the pest infested a total of 26 provinces." + "\n" +
//                "The armyworm is expected in 2020 to hit China's Northeast wheat belt." + "\n" +
//                "A report issued by the Ministry of Agriculture and Rural Affairs rates the situation as 'very grave'"+ "\n" + "\n" +
//
//                "In February 2020 S. frugiperda was detected in Queensland, Australia. " +
//                "It was observed in traps baited with a male pheromone lure, firstly on Erub and Saibai islands in the Torres Strait," +
//                "and subsequently on the mainland near Croyden. Within a week it was officially declared ineradicable."+
//
//                "Food resources" + "\n" + "\n" +
//                "Caterpillars, Witch Hazel" + "\n"
//                "The armyworm's diet consists mainly of grasses and small-grain crops such as corn, but the species has been noted to consume over 80 different plants." + "\n"
//                "Armyworms earned their common name by eating all plant matter they encounter in their wide dispersals, like a large army." + "\n"
//                "A few sweet corn varieties have partial, but not complete, resistance to armyworms." + "\n"
//                "The resistance comes from a unique 33-kD proteinase that the corn produces when it is being fed on by fall armyworms or other larva." + "\n"
//                "This protein was found to significantly decrease fall armyworm larva growth." + "\n"
//
//                "Cannibalism" + "\n" + "\n"
//                "When possible, larva will cannibalize the larva of smaller instars." + "\n"
//                "A 1999 study showed that cannibalism only benefits the caterpillar when other food is scarce." + "\n"
//                "Despite this, the caterpillars will cannibalize others whenever they can, even though it was found to decrease their own fitness in many cases." + "\n"
//                "One known reason why cannibalism is detrimental to the fall armyworm is because of disease transmission to the cannibal." + "\n"
//                "In nature, the negative effects of cannibalism may be balanced by the fact that cannibalism removes competitors, thereby making more resources accessible and indirectly increasing fall armyworms' fitness." + "\n"
//
//                "Adults" + "\n"  + "\n"
//                "Adult moths sip nectar from flowers such as that of witch hazel (Hamamelis virginiana)." + "\n"
//
//                "Life history" + "\n"  + "\n"
//                "The fall armyworm's life cycle is completed within 30 days during summer, and 60 days during the spring and autumn seasons; during the winter, these caterpillars' life cycle lasts about 80 to 90 days." + "\n"
//                "The number of generations a moth will have in a year varies based on climate," + "\n"
//                "but in her life span a female will typically lay about 1,500 eggs.[4] Because larva cannot enter into diapause they cannot survive cold temperatures." + "\n"
//
//                "Egg" + "\n"  + "\n"
//                "The armyworm's egg is dome-shaped, and measures around 0.4 mm in diameter and 0.3 mm in height." + "\n"
//                "Females prefer to lay eggs on the underside of leaves, but in high populations they will lay them just about anywhere." + "\n"
//                "In warm weather, the eggs will hatch into larvae within a few days." + "\n" +
//
//                "Larva" + "\n" + "\n"
//                "The larva go through six different instars, each varying slightly in physical appearance and pattern." + "\n"
//                "The larva process lasts from 14 to 30 days, again depending on temperatures." + "\n"
//                "The mature caterpillar is about 1.5–2.0 inches (38–51 mm) in length." + "\n"
//                "This is the most destructive life stage as the larvae have biting mouth parts." + "\n"
//                "The larvae have a distinctive inverted Y suture on the forehead." + "\n"
//
//                "Pupa" + "\n" + "\n"
//                "The larva then pupate underground for 7 to 37 days in a cocoon they form of soil and silk." +
//            "Duration and survival of the pupal stage depend on the temperature of the environment."
//
//            "Adults" + "\n" + "\n"
//                "Once emerged, the adults live for about 10 days, and sometimes up to 21 days, with the female laying most of her eggs early in life." + "\n"
//                "Adults are nocturnal and fare best during warm and humid nights." + "\n"
//
//                "Migration" + "\n" + "\n"
//                "Adults are capable of flying long distances, so even though they are unable to overwinter north of the southern region of the United States," + "\n"
//                "the moths can migrate as far north as Southern Canada in warm months.[20][4] Their migration rate is remarkably fast, estimated at 300 miles per generation." + "\n"
//                "Some scientists speculate that this fast migration is aided by the movement of air in weather fronts." + "\n"
//
//                "Enemies" + "\n" + "\n"
//                "Predators" + "\n"
//                "Fall armyworm caterpillars are directly preyed upon by many invertebrates and vertebrates. Common predators include birds, rodents, beetles, earwigs, and other insects." + "\n"
//                "It has been shown that direct predation can cause significant losses to caterpillar populations." + "\n"
//                "The larva's main defense against enemies is their ability to reach large numbers and migrate before seasonal conditions are suitable for predators." + "\n"
//
//                "Parasitoids" + "\n" + "\n"
//                "Fly and wasp parasitoids target the fall armyworm, most commonly Archytas marmoratus, Cotesia marginiventris, and Chelonus texanus." + "\n"
//                "The armyworm is also vulnerable to additional parasitoids, varying with location." + "\n"
//
//                "Parasites and disease" + "\n" + "\n"
//                "Fifty-three different parasite species have been discovered in fall armyworm larvae, spanning ten different families." + "\n"
//                "Often larvae can survive through much of their crop consumption despite outbreaks of disease, because of the larva's fast life cycle." + "\n"
//                "Despite this, parasites of the fall armyworm are being studied extensively as a means of fighting armyworm attacks on crops." + "\n"
//                "One suggested approach would be to introduce parasites from South America to North American fall armyworms, and vice versa." + "\n"
//
//                "Subspecies" + "\n" + "\n"
//                "The fall armyworm may be presently undergoing a divergence into two separate species." + "\n"
//                "These two strains have major genetic differences that are connected to the plants they feed on, even though both still exist in the same area (sympatric speciation)." + "\n"
//                "These two strains can be loosely categorized into a rice strain and a corn strain." + "\n"
//                "This separation is occurring because of differences in habitat (preferred host plant), and differences in reproductive behavior." + "\n"
//                "The reproductive differences can be divided into two causes: difference in the timing of mating at night, and difference in female sex pheromones." + "\n"
//
//                "Mating" + "\n" + "\n"
//                "Mate searching behavior and male–male conflict" + "\n"
//                "A female attracts males by perching atop the host plant feeding area and releasing a sex pheromone as the signal that she wishes to mate." + "\n"
//                "The pheromone has been studied and found to contain the components Z7-12 and Z9-14.[21] Each female only mates once per night;" + "\n"
//                "this creates a physical conflict between the multiple males that will fly towards a ready female." + "\n"
//                "There is an order to which the females call and mate: virgin females do first, females who have mated once next, and females who have already mated multiple times call and mate last during the night." + "\n"
//
//                "Interactions with humans" + "\n" + "\n"
//                "Pest of crop plants" + "\n"
//                "Because of their food preferences, fall armyworm larvae can wreak havoc on a wide range of crops." + "\n"
//                "The first historical account of the fall armyworm's destruction was in 1797 in Georgia." + "\n"
//                "Destruction can happen almost over night, because the first stages of a caterpillar's life require very little food, and the later stages require about 50 times more." + "\n"
//                "Because of this rapid change in food consumption, the presence of larva will not be noticed until they have destroyed almost everything in as little as a night." + "\n"
//                "Some examples of targeted crops include cotton, tobacco, sweet corn, rice, peanuts, and even fruits such as apples, oranges, and many more." + "\n"
//                "The list of possible food sources for the worms is extensive, so crop damage is wide-ranging." + "\n"
//                "It is estimated that almost 40 percent of those species that armyworms target are economically important." + "\n"
//                "Because the larva eat so much of the plant, they are very detrimental to crop survival and yield." + "\n"
//                "In corn, larvae will even burrow into the corn ear to eat the kernels." + "\n"
//
//
//                "Responses" + "\n"
//                "Because of the fall armyworms' great destructive power, farmers must go to great lengths to deter the larvae." + "\n"
//                "Insecticide is a widely used form of protection; in southern regions, farmers may have to apply insecticide to corn every day." + "\n"
//                "Another strategy is to plant crops earlier to avoid the increase in armyworm numbers as the summer progresses." + "\n"
//                "In South Africa, farmers are using pheromone lures with a combination of Dichlorvos blocks to trap and eliminate male arymworms with the intention of disrupting mating cycles."
    );
  }
}

