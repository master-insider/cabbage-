% Facts about cabbage diseases
disease(cabbage_downy_mildew).
disease(cabbage_black_rot).
disease(cabbage_whitefly).
disease(cabbage_aphids).
disease(cabbage_caterpillars).



% Facts about disease symptoms
symptom(cabbage_downy_mildew, yellow_spots).
symptom(cabbage_downy_mildew,  fuzzy_groth).
symptom(cabbage-black_rot, sunken_lesions).
symptom(cabbage_whitefly, fly_like_insects).
symptom(cabbage_aphids, soft_bodied_insects).
symptom(cabbage_caterpillars, chewed_leaves).

affects(cabbage_caterpillars, leaves, chew_marks).
affects(cabbage_aphids, leaves, yellow_spots).
affects(cabbage_whitefly, leaves, wilting).
affects(cabbage_black_rot, leaf, yellow_lesions).
affects(cabbage_downy_mildew, leaf, curl).
affects(cabbage_downy_mildew, leaves, distorted).

detect_disease(PlantPart, Disease):-
    symptom(Disease, Symptom),
    affects(Disease, PlantPart, Symptom).

start_diagnosis:-
      write('WELCOME TO CROP DISEASE DIAGNOSIS SYSTEM. (TO PROCEED, TERMINATE EACH INPUT WITH A FULLSTOP)'),nl,
    write('Enter crop:'),
    read(crop),nl,
    get_plant_part(PlantPart),
    get_symptom(_),
    detect_disease(PlantPart, Disease),
    display_diagnosis(Disease).

get_plant_part(PlantPart) :-
    write('Enter the affected plant part (Choose from:leaves,leaf :  '),
    read(PlantPart).

get_symptom(Symptom) :-
    write('Enter the observed symptom (Choose from:yellow_spots,fuzzy_growth,sunken_lesions,fly_like_insects,soft_bodied_inscaects,chewed_leaves): '),
    read(Symptom).

manage_disease(cabbage_donwy_milew) :-
    write('Management for cabbage_downy_milew:'),nl,
    write('- Proper plant spacing.'),nl,
    write('- Application of fungicides.'),nl.

manage_disease(cabbage_black_rot) :-
    write('Management for cabbage_black_rot:'),nl,
    write('-Remove and destroy infected plant debris.'),nl,
    write('-Application of bactericides.'),nl.

manage_disease(cabbage_whitefly):-
    write('-management for cabbage_whitefly:'),nl,
    write('-Placing yellow sticky traps near the cabbage plants.'),nl,
    write('-Introducing beneficial insects like predatory wasps that feed on whiteflies.'),nl.

manage_disease(cabbage_aphids):-
    write('-management for cabbage_aphids:'),nl,
    write('-Application of Neem oil.'),nl,
    write('-Spraying with water.'),nl.

manage_disease(cabbage_caterpillars):-
    write('-Management for cabbage_caterpillars:'),nl,
    write('-Physically picking caterpilars from plants.'),nl,
    write('-Encouraging natural predators like birds.'),nl.
display_diagnosis(Disease):-
    nl,
    write('Results of the diagnosis:'),nl,
    write('The most likely diseaseis:'),write(Disease),nl,
    manage_disease(Disease),
    write('please take approprite measures to manage the disease.'),nl,
    write('...Thank You!...').


