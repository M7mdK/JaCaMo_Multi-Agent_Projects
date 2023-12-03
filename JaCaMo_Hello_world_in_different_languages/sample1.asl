// Agent sample1 in project ex2

/* Initial beliefs and rules */
/* Initial goals */
!say.
/* Plans */
//Here we can change the language to print "Hello World" in different languages:
+!say : language(french,M) <- .print(M).

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
