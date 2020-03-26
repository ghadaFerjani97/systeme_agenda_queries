INSERT INTO AGENDADEPT VALUES (un chiffre, une date); INSERT INTO AGENDADEPT VALUES (seqAgendaDepartement.nextVal, to_date(sysdate,'dd-mm-yyyy')); 

INSERT INTO DEPARTEMENT VALUES (un chiffre, nom du departement, numero du chef, le chiffre de l’agenda du departement); 

INSERT INTO DEPARTEMENT VALUES (seqDepartement.nextVal, 'Informatique', NULL, seqAgendaDepartement.currVal); 

DROP SEQUENCE seqAgendaDepartement; CREATE SEQUENCE seqAgendaDepartement increment by 1 start with 1;


INSERT INTO EMPLOYE VALUES (seqEmploye.nextVal, 'ALBERS', 'Patrick', '02.41.86.67.22', NULL, 10, seqDepartement.currval); 

INSERT INTO AGENDA VALUES (seqAgenda.nextVal, sysdate, seqEmploye.currval); 


INSERT INTO ACTIVITES VALUES (seqActivites.nextVal, 'cours', 'faire le chapitre 4 du langage C','10-JAN-06', to_date('7:45','hh24:mi'), to_date('9:45','hh24:mi'), '03-DEC-05','PLAINCHAULT', 1, seqAgenda.currVal); 


INSERT INTO ALERTES VALUES ('email', to_date('5:30','hh24:mi'), seqActivites.currVal); 


INSERT INTO ACTIVITESDEPT VALUES (seqActiviteDept.nextVal, 'formation', 'les maintenances du reseaux de l eseo', '12-JAN-06', to_date('14:15','hh24:mi'), to_date('16:15','hh24:mi'), '15-NOV-05','PLAINCHAULT', seqAgendaDepartement.currVal);


INSERT INTO PROCESVERBAL VALUES (seqProcesV.nextVal,'determination des personnes responsables des permanances');


INSERT INTO ACTDEPTVERBAL VALUES (seqActiviteDept.currVal, seqProcesV.currVal);


INSERT INTO ABSENT VALUES (2,seqActiviteDept.currVal,'malade'); 




