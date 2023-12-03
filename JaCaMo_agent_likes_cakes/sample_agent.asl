// Agent sample_agent in project ex3

/* Initial beliefs and rules */
//To apply several test cases i defined the agents beliefs in the .jcm file
//where all our defined agents shares similar goals and plans but different beliefs.

+cakeAd(CakeType) : likes(CakeType) & have(_) <- !getCake.

/* Plans */

//If some agent have both flour and money, he prefers to save his money and use the flour to bake a cake.
+!getCake : have(flour) <- !bakeCake.
+!getCake : have(money) <- !buyCake.

+!bakeCake <- .print("I am following a recipe to bake a cake!").
+!buyCake <- .print("I am buying a cake from the bakery").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
