use AiDisease;
/*Patient record
Age from dob calculate krni ha
*/
insert into patient values('37405-1850011-5','Abdul Haseeb',5.9,69,'O+','Male','10-24-2004',20,'islamabad','10-24-2025');
insert into patient values('37405-1850011-6','Own',4.9,42,'A-','Male','10-29-2001',20,'islamabad','10-07-2025');
insert into patient values('37405-1850011-7','Touseef',7.9,69,'A+','Male','01-24-2002',20,'islamabad','03-04-2025');
insert into patient values('61101-6300303-3','Taimoor',6.0,47,'AB+','Female','02-01-2006',19,'islamabad','01-02-2023');
insert into patient values('61101-1850011-3','ZerAfshan',9.9,21,'O-','Female','10-24-1996',45,'islamabad','10-24-2025');

/*Patient contact

*/
insert into Patient_Contact values('37405-1850011-5','03361552419');
insert into Patient_Contact values('37405-1850011-6','03351572321');
insert into Patient_Contact values('37405-1850011-7','03323852415');
insert into Patient_Contact values('61101-6300303-3','03361643919');
insert into Patient_Contact values('61101-1850011-3','03333552315');

/*Patient Disease

*/
insert into Patient_Disease values('37405-1850011-5','Heart');
insert into Patient_Disease values('37405-1850011-6','Diabaties');
insert into Patient_Disease values('37405-1850011-7','Asthma');
insert into Patient_Disease values('61101-6300303-3','Cancer');
insert into Patient_Disease values('61101-1850011-3','Brain Tumor');

/*Patient Allagies

*/
insert into Patient_Allergies values('37405-1850011-5','grass pollen');
insert into Patient_Allergies values('37405-1850011-6','house dust');
insert into Patient_Allergies values('37405-1850011-7','food allergy');
insert into Patient_Allergies values('61101-6300303-3','animal allergy');
insert into Patient_Allergies values('61101-1850011-3','studetns allergy');
/*Symptoms
duration find from date then update in table
*/

insert into symptoms values(1,'Fever','High',5,'12-24-2025','Full','37405-1850011-5');
insert into symptoms values(2,'flu','High',3,'02-20-2023','mid night','37405-1850011-6');
insert into symptoms values(3,'nose bleeding','High',7,'10-07-2021','Full','37405-1850011-7');
insert into symptoms values(4,'arm pain','High',8,'11-23-2022','Full','61101-6300303-3');
insert into symptoms values(5,'migrain','High',7,'01-12-2001','Full','61101-1850011-3');


/*Symptoms Associated conditon

*/

insert into Symptoms_AssCondition values(1,'Heat Exhaustion');
insert into Symptoms_AssCondition values(2,'fatigue');
insert into Symptoms_AssCondition values(3,'covid-19');
insert into Symptoms_AssCondition values(4,'lumps');
insert into Symptoms_AssCondition values(5,'hyper tension');


/* disease 
baqi values change krni han
*/
insert into Disease values(1,'diabaties','insuline','death','sugar level','stop sugar consumption');
insert into Disease values(2,'cancer','chemo','death','sugar level','stop sugar consumption');
insert into Disease values(3,'stroke','insuline','death','sugar level','stop sugar consumption');
insert into Disease values(4,'Asthma','insuline','death','sugar level','stop sugar consumption');
insert into Disease values(5,'tumor','insuline','death','sugar level','stop sugar consumption');

/*
choronic
*/
use AiDisease
insert into Chronic values(1,5,0,'high');
insert into Chronic values(2,3,1,'very slow');
insert into Chronic values(3,5,0,'low');
insert into Chronic values(4,6,1,'medium');
insert into Chronic values(5,9,0,'very high');

/*
Acute
*/
use AiDisease
insert into Acute values(1,0,5);
insert into Acute values(2,1,3);
insert into Acute values(3,0,4);
insert into Acute values(4,1,5);
insert into Acute values(5,0,2);

/*
Diagnosis
*/
use AiDisease
insert into Diagnosis values(1,'hyper tension','1','02-01-2025','yes',1,4,'37405-1850011-5');
insert into Diagnosis values(2,'diabities','0','04-05-2025','no',1,3,'37405-1850011-6');
insert into Diagnosis values(3,'osteoarthitis','1','05-08-2025','yes',0.7,3,'37405-1850011-7');
insert into Diagnosis values(4,'respicatory infrction','1','02-05-2024','yes',1,2,'61101-6300303-3');
insert into Diagnosis values(5,'depression','0','03-06-2025','no',0.9,1,'61101-1850011-3');

/*
lead to
*/
insert into lead_to values (1,1);
insert into lead_to values (2,2);
insert into lead_to values (3,3);
insert into lead_to values (4,4);
insert into lead_to values (5,5);
/*
diagnosis recomendation
*/
insert into Diagnosis_Recommendation values(1,'full sleep');
insert into Diagnosis_Recommendation values(2,'no sugar');
insert into Diagnosis_Recommendation values(3,'walk');
insert into Diagnosis_Recommendation values(4,'no oil');
insert into Diagnosis_Recommendation values(5,'less thinking');


/*
confirms
*/
insert into Confirms values(1,1);
insert into Confirms values(2,2);
insert into Confirms values(3,3);
insert into Confirms values(4,4);
insert into Confirms values(5,5);

/*
prescruiption
*/
insert into Prescription values(1,'ace inhabilators','02-03-2025','tablet',0.6,5,'isl','sudden','37405-1850011-5');
insert into Prescription values(2,'insulin','03-04-2025','injection',0.5,3,'rwp','sudden','37405-1850011-6');
insert into Prescription values(3,'immune therapy','05-17-2025','pump',0.8,2,'khi','low','37405-1850011-7');
insert into prescription values(4,'chemo therapy','03-19-2025','tablet',0.6,6,'isb','high','61101-6300303-3');
insert into prescription values(5,'vasoG','05-10-2025','injection',0.3,2,'isb','sudden','61101-1850011-3');

/*prescriptio_medicine
*/
use AiDisease
insert into Prescription_Medicine values(1,'vasoG');
insert into Prescription_Medicine values(2,'vasoG');
insert into Prescription_Medicine values(3,'panadol');
insert into Prescription_Medicine values(4,'disprine');
insert into Prescription_Medicine values(5,'vasoG');

/*
prescriptrion treatement
*/
use AiDisease;
insert into Patient_Disease_Treatment values(1,'icu');
insert into Patient_Disease_Treatment values(2,'icu');
insert into Patient_Disease_Treatment values(3,'icu');
insert into Patient_Disease_Treatment values(4,'icu');
insert into Patient_Disease_Treatment values(5,'ot');

use AiDisease
insert into Patient_Allergies_Prevention values(1,'no oil');
insert into Patient_Allergies_Prevention values(2,'less sugar');
insert into Patient_Allergies_Prevention values(3,'walk');
insert into Patient_Allergies_Prevention values(4,'dua');
insert into Patient_Allergies_Prevention values(5,'long sleep');

/*result in

*/
insert into Result_in values(1,1);
insert into Result_in values(2,2);
insert into Result_in values(3,3);
insert into Result_in values(4,4);
insert into Result_in values(5,5);

/*medical test

*/
insert into Medical_Test values(1,'city scan','07-24-2025','1','06-24-2025',30,'heart','ok',30,'high','low','37405-1850011-5');
insert into Medical_Test values(2,'ectrolytes','07-24-2025','1','06-24-2025',30,'heart','ok',30,'high','low','37405-1850011-6');
insert into Medical_Test values(3,'cbc','07-24-2025','1','06-24-2025',30,'heart','ok',30,'high','low','37405-1850011-7');
insert into Medical_Test values(4,'wb2','07-24-2025','1','06-24-2025',30,'heart','ok',30,'high','low','61101-6300303-3');
insert into Medical_Test values(5,'mri','07-24-2025','1','06-24-2025',30,'brain','ok',30,'high','low','61101-1850011-3');



/*medical image

*/
insert into Medical_Image values(1,0);
insert into Medical_Image values(2,0);
insert into Medical_Image values(3,0);
insert into Medical_Image values(4,0);
insert into Medical_Image values(5,0);

/*
treated by*/
insert into Treated_by values(1,1);
insert into Treated_by values(2,2);
insert into Treated_by values(3,3);
insert into Treated_by values(4,4);
insert into Treated_by values(5,5);

/*

verifty*/

insert into Verify values(1,1);
insert into Verify values(2,2);
insert into Verify values(3,3);
insert into Verify values(4,4);
insert into Verify values(5,5);

/*
detected by*/

insert into Detected_by values(1,1);
insert into Detected_by values(2,2);
insert into Detected_by values(3,3);
insert into Detected_by values(4,4);
insert into Detected_by values(5,5);
/*
lead to*/
insert into Lead_to values(1,1);
insert into Lead_to values(2,2);
insert into Lead_to values(3,3);
insert into Lead_to values(4,4);
insert into Lead_to values(5,5);







