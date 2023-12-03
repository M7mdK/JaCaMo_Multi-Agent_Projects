// Agent sample2_2 in project ex2

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */

+!say(M): true <- .print(M).

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
