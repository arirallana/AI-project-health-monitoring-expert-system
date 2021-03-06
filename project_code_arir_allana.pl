

doctor:-
diagnose(Disease),
write('Proposed Diagnosis: '),
write(Disease),
nl,
write('KEEP A POSITIVE OUTLOOK!'),
undo.

lab_info:-
write('Recommended for use by healthcare provider.'),
nl,
write('Step 1: Enter test name and value e.g. glucose_fasting(Value). For more information on tests and values see: ?-test_info.'),
nl,
write('Step 2: test disease based on entered test values e.g. test(diabetes). For more information on diseases see: ?-disease_info.'),
nl.

test_info:-
write('1. glucose_fasting(Value). Value is numeric, continuous and >0. units = mg/dl'),
nl,
write('2. glucose_random(Value). Value is numeric, continuous and >0. units = mg/dl'),
nl,
write('3. haemoglobin_a1c(Value). Value is numeric, continuous and >0. units = %'),
nl,
write('4. urine_ph(Value). Value is numeric, continuous and >0. units = NA'),
nl,
write('5. urine_glucose(Value). Value is numeric, continuous and >0. units = mg/dl'),
nl,
write('6. urine_sg(Value). Value is numeric, continuous and >0. units = mili'),
nl,
write('7. serum_cholestrol(Value). Value is numeric, continuous and >0. units = mg/dl'),
nl,
write('8. triglyceride(Value). Value is numeric, continuous and >0. units = mg/dl'),
nl,
write('9. blood_pressure_systolic(Value). Value is numeric, continuous and >0. units = mmHg'),
nl,
write('10. blood_pressure_diastolic(Value). Value is numeric, continuous and >0. units = mmHg'),
nl,
write('11. ecg(Value). Value is numeric, continuous and >0. units = ms'),
nl,
write('12. cpk_m(Value). Value is numeric, continuous and >0. units = units/L'),
nl,
write('13. cpk_f(Value). Value is numeric, continuous and >0. units = units/L'),
nl,
write('14. ige_antibodies(Value). Value is numeric, continuous and >0. units = IU/ml'),
nl,
write('15. peak_flow(Value). Value is numeric, continuous and >0. units = L/min'),
nl,
write('16. wbc_count(Value). Value is numeric, continuous and >0. units = /microlitre'),
nl,
write('17. rbc_count_m(Value). Value is numeric, continuous and >0. units = million/microlitre'),
nl,
write('18. rbc_count_f(Value). Value is numeric, continuous and >0. units = million/microlitre'),
nl,
write('19. platelet(Value). Value is numeric, continuous and >0. units = kilo/microlitre'),
nl,
write('20. pulse_oximetry(Value). Value is numeric, continuous and >0. units = %'),
nl,
write('21. visual_acuity_r(Value1,Value2). Values are numeric, continuous and >0. units = NA'),
nl,
write('22. visual_acuity_l(Value1,Value2). Values are numeric, continuous and >0. units = NA'),
nl,
write('23. liver_enzyme_sgpt(Value). Value is numeric, continuous and >0. units = units/L'),
nl,
write('24. liver_enzyme_sgot(Value). Value is numeric, continuous and >0. units = units/L'),
nl,
write('25. acid_analysis(Value). Value is numeric, continuous and >0. units = NA'),
nl,
write('26. de_meester_score(Value). Value is numeric, continuous and >0. units = NA'),
nl,
write('27. endoscopy(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('28. xray_joints(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('29. physical_exam(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('30. mri(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('31. xray_chest(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('32. slit_lamp_exam(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('33. retinal_exam(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('34. skin_exam(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('35. patch_test(Observation). Observation may be normal or abnormal. units = NA'),
nl,
write('36. ultrasound_abdomen(Observation). Observation may be normal or abnormal. units = NA'),
nl.

disease_info:-
write('1. diabetes. Diabetes is a disease in which your blood glucose, or blood sugar, levels are too high.'),
nl,
write('2. heart_disease. Heart disease is a collection of diseases and conditions that cause cardiovascular problems.'),
nl,
write('3. hypertension. Hypertension is a common condition in which the long-term force of the blood against your artery walls is high enough that it may eventually cause health problems, such as heart disease.'),
nl,
write('4. acid_reflux. Acid reflux is a common condition that features a burning pain, known as heartburn, in the lower chest area which happens when stomach acid flows back up into the food pipe.'),
nl,
write('5. athritis. Arthritis is the swelling and tenderness of one or more of your joints.'),
nl,
write('6. asthma. Asthma is a condition in which your airways narrow and swell and may produce extra mucus.'),
nl,
write('7. pulmonary_pneumonia. Pulmonary pneumonia is an infection that inflames the air sacs in one or both lungs. The air sacs may fill with fluid or purulent material.'),
nl,
write('8. cataract. Cataract is a cloudy area in the lens of the eye that leads to a decrease in vision.'),
nl,
write('9. eczema. Eczema is a common skin condition marked by itchy and inflamed patches of skin.'),
nl,
write('10. fatty_liver_disease. Fatty liver disease is a condition where excess fat builds up in the liver.'),
nl.

/*Possible Diagnoses*/
diagnose(diabetes) :- diabetes, !.
diagnose(heart_disease) :- heart_disease, !.
diagnose(hypertension) :- hypertension, !.
diagnose(acid_reflux) :- acid_reflux, !.
diagnose(athritis) :- athritis, !.
diagnose(asthma) :- asthma, !.
diagnose(pulmonary_pneumonia) :- pulmonary_pneumonia, !.
diagnose(cataract) :- cataract, !.
diagnose(eczema) :- eczema, !.
diagnose(fatty_liver_disease) :- fatty_liver_disease, !.
diagnose(unknown). /* no diagnosis*/


/*Tests' ranges*/
/*quantitative*/
:- use_module(library(clpfd)).
glucose_fasting(Value):- Value#>125.
glucose_random(Value):- Value#>200.
haemoglobin_a_one_c(Value):- Value#>6.
urine_ph(Value):- (Value#>8;Value#<5).
urine_glucose(Value):- Value#>130.
urine_sg(Value):- (Value#>1025;Value#<1005).
serum_cholestrol(Value):- Value#>200.
triglyceride(Value):- Value#>150.
blood_pressure_systolic(Value):- Value#>120.
blood_pressure_diastolic(Value):- Value#>80.
ecg(Value):- (Value#>200;Value#<120).
cpk_m(Value):- (Value#>308;Value#<39).
cpk_f(Value):- (Value#>192;Value#<36).
ige_antibodies(Value):- (Value#>300;Value#<150).
peak_flow(Value):- (Value#>700;Value#<400).
wbc_count(Value):- (Value#>11000;Value#<4500).
rbc_count_m(Value):- (Value#>6;Value#<5).
rbc_count_f(Value):- (Value#>5;Value#<4).
platelet(Value):- (Value#>400;Value#<140).
pulse_oximetry(Value):- (Value#<95).
visual_acuity_r(Value1,Value2):- (Value2#>Value1).
visual_acuity_l(Value1,Value2):- (Value2#>Value1).
liver_enzyme_sgpt(Value):- (Value#>56;Value#<7).
liver_enzyme_sgot(Value):- (Value#>45;Value#<8).
acid_analysis(Value):- Value#<4.
de_meester_score(Value):-Value#>15.

/*qualitative*/
endoscopy(abnormal).
xray_joints(abnormal).
physical_exam(abnormal).
mri(abnormal).
xray_chest(abnormal).
slit_lamp_exam(abnormal).
retinal_exam(abnormal).
skin_exam(abnormal).
patch_test(abnormal).
ultrasound_abdomen(abnormal).

/*Tests' analysis*/
test(diabetes) :- glucose_fasting(Value),glucose_random(Value),haemoglobin_a_one_c(Value),urine_ph(Value),urine_glucose(Value),urine_sg(Value).
test(heart_disease) :- serum_cholestrol(Value),triglyceride(Value),blood_pressure_systolic(Value),blood_pressure_diastolic(Value),glucose_fasting(Value),glucose_random(Value),ecg(Value).
test(hypertension) :- serum_cholestrol(Value),triglyceride(Value),blood_pressure_systolic(Value),blood_pressure_diastolic(Value),glucose_fasting(Value),glucose_random(Value),ecg(Value),cpk_m(Value);cpk_f(Value).
test(acid_reflux) :- de_meester_score(Value),acid_analysis(Value),endoscopy(abnormal).
test(athritis) :- xray_joints(abnormal),physical_exam(abnormal),mri(abnormal).
test(asthma) :- xray_chest(abnormal),ige_antibodies(Value),peak_flow(Value).
test(pulmonary_pneumonia) :- xray_chest(abnormal),wbc_count(Value), platelet(Value),pulse_oximetry(Value),rbc_count_m(Value);rbc_count_f(Value).
test(cataract) :- slit_lamp_exam(abnormal),retinal_exam(abnormal),visual_acuity_r(Value1,Value2), visual_acuity_l(Value1,Value2).
test(eczema) :- skin_exam(abnormal),patch_test(abnormal).
test(fatty_liver_disease) :- ultrasound_abdomen(abnormal),liver_enzyme_sgpt(Value),liver_enzyme_sgot(Value).
test(unknown).  /*no conclusion*/


/*Disease Identification Rules*/
diabetes :-
check(excessive_thirst_or_hunger),
check(weight_loss_or_gain),
check(fatigue),
check(vision_problems),
check(slow_healing_wounds),
check(frequent_urination),
check(nausea),
write('Suggested Medication:'),
nl,
write('1: Dimicron'),
nl,
write('2: Glucophage'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: Walk regularly for 30min, diet control (refer to dietician).'),
nl.

heart_disease :-
check(chest_pain),
check(difficulty_breathing),
check(numbness_or_swelling_in_limbs),
check(abnormal_heartbeat),
check(dizziness),
check(pale_skin),
write('Suggested Medication:'),
nl,
write('1: Aspirin'),
nl,
write('2: Lipiget'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: Boiled diet, avoid saturated fats, daily walk for 20 minutes, maintain healthy weight,rest and relaxation exercises.'),
nl.

hypertension :-
check(headaches),
check(nosebleeds),
check(chest_pain),
check(fatigue),
check(abnormal_heartbeat),
check(vision_problems),
check(difficulty_breathing),
write('Suggested Medication:'),
nl,
write('1: CoApproval'),
nl,
write('2: Aldomet'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: Weight control, rest and relaxation exercises, decrease sodium in diet, daily walk and blood pressure control, take medications on time'),
nl.

acid_reflux :-
check(heartburn),
check(bloating),
check(burping),
check(dysphagia),
check(regurgitation),
check(nausea),
check(hiccups),
check(cough),
check(sore_throat),
write('Suggested Medication:'),
nl,
write('1: Omeprazole'),
nl,
write('2: Mucaine'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: avoid oily foods, avoid late night meals, daily walk, avoid soft drinks and red chillies, rest and relaxation exercises'),
nl.

athritis :-
check(joint_pain),
check(restricted_joint_movement),
check(tenderness_or_inflammation_over_joints),
check(weakness),
check(muscle_wastage),
write('Suggested Medication:'),
nl,
write('1: Celbex'),
nl,
write('2: Tylenol'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: avoid climbing, avoid sitting on floor, weight control and regular walk, rest and relaxation exercises'),
nl.

asthma :-
check(difficulty_breathing),
check(cough),
check(restlessness),
check(sputum),
write('Suggested Medication:'),
nl,
write('1: Ventolin'),
nl,
write('2: Myteka'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: avoid dust and refrain from identified allergens'),
nl.

pulmonary_pneumonia :-
check(chest_pain),
check(cough),
check(fatigue),
check(difficulty_breathing),
check(low_grade_fever),
write('Suggested Medication:'),
nl,
write('1: Azomax'),
nl,
write('2: Calpol'),
nl,
write('3: Ventolin'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: steam inhalation, take antibiotics on time, refrain from allergies'),
nl.

cataract :-
check(blurred_vision),
check(sensitivity_to_light),
check(reduced_night_vision),
check(seeing_halos),
check(fading_or_yellowing_of_colors),
check(double_vision),
write('Suggested Procedure:'),
nl,
write('1: Cataract removal surgery'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: regular eye examination after age 50, quit smoking and alcohol, healthy diet and use of fruits and vegetables, wear sun glasses'),
nl.

eczema :-
check(skin_itch),
check(hives),
check(red_patches_on_skin),
check(fluid_filled_raised_bumps_on_skin),
check(thick_scaly_skin),
write('Suggested Medication:'),
nl,
write('1: Citrizine'),
nl,
write('2: Protopic'),
nl,
write('3: Skin Moisturizer'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: avaoid wearing rough fabrics, harsh soaps and detergents, avoid scratching damaged skin'),
nl.

fatty_liver_disease :-
check(abdominal_pain),
check(feeling_of_fullness_in_abdomen),
check(nausea),
check(loss_of_appetite),
check(edema),
check(weight_loss),
check(yellow_skin),
check(weakness),
write('Suggested Medication:'),
nl,
write('1: Vitamin E'),
nl,
write('2: Pioglitazone'),
nl,
write('All medication must be taken after consultation with the physician.'),
nl,
write('Advice: maintain healthy weight, regular exercises, avoid alcohol and smoking'),
nl.

/* asking questions */
ask(Question) :-
write('Does the patient have '),
write(Question),
write('? '),
read(Answer),
nl,
( (Answer == yes ; Answer == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/*verification of symptom */
check(Symptom) :-
(yes(Symptom)
->
true ;
(no(Symptom)
->
fail ;
ask(Symptom))).

/* undo all assertions*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
