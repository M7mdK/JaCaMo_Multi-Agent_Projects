// Agent sample_agent in project ex4

/* Initial beliefs and rules */

haveIngredients :- have([flour,milk,butter,eggs,sugar,bakingPowder,stove]).

+cakeAd(CakeType) : likes(CakeType) & (haveIngredients | have(money)) <- !getCake.

+followRecipe(R) <- .print("Great I already have a recipe: ",R).

/* Plans */

+!getCake : haveIngredients <- !bakeCake.
+!getCake : have(money) <- !buyCake.

+!buyCake <- .print("I am buying a cake from the bakery").

+!bakeCake <- ?followRecipe(R).
+?followRecipe(R): searchGoogle(R) <- .print("Searching google for a recipe... Got a result: " , R).
-?followRecipe(R) <- .print("Failed to find recipe").


{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
