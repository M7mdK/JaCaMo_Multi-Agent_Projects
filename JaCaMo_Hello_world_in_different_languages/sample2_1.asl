// Agent sample2_1 in project ex2

/* Initial beliefs and rules */

/* Initial goals */
!say.
/* Plans */

+!say : language(spanish,M1,M2) <- .print(M1) ; .send(sample2_2,achieve,say(M2)).


{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
