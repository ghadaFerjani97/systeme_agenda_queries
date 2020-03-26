
CREATE TABLE PROCESVERBAL(NumProcesV NUMBER(8) , resum VARCHAR(1024) NOT NULL, PRIMARY KEY (NumProcesV));


CREATE TABLE AGENDADEPT (numAgenda NUMBER(8) , dateMAJ DATE NOT NULL, PRIMARY KEY (numAgenda));

CREATE TABLE DEPARTEMENT(num NUMBER(8) , nom VARCHAR(40) NOT NULL,numChef NUMBER(8), numAgendaDept NUMBER(8) NOT NULL, PRIMARY KEY (num), FOREIGN KEY (numAgendaDept) References AGENDADEPT); 


CREATE TABLE EMPLOYE (numEmploye NUMBER(8) , nom VARCHAR(30) NOT NULL, prenom VARCHAR(20), telIntern VARCHAR(14), email VARCHAR(40),niveau 13 NUMBER(8), numDept NUMBER(8) NOT NULL, PRIMARY KEY (numEmploye), FOREIGN KEY (numDept) References DEPARTEMENT);


ALTER TABLE DEPARTEMENT ADD constraints deptforeign FOREIGN KEY (numChef) References EMPLOYE;


CREATE TABLE ACTIVITESDEPT(numAct NUMBER(8), typeD VARCHAR(20) NOT NULL, descript VARCHAR(1024), dateAct DATE NOT NULL, hDebut DATE, hFin DATE, dateCreation DATE, createur VARCHAR(20) NOT NULL, numAgenda NUMBER(8) NOT NULL, PRIMARY KEY (numAct), FOREIGN KEY (numAgenda) References AGENDADEPT);  

CREATE TABLE ACTDEPTVERBAL(numAct NUMBER(8), numProcesV NUMBER(8), PRIMARY KEY (numAct, numProcesV), FOREIGN KEY (numAct) References ACTIVITESDEPT, FOREIGN KEY (numProcesV) References PROCESVERBAL);

CREATE TABLE AGENDA (numAgenda NUMBER(8) , dateCreation DATE, numEmploye NUMBER(8) NOT NULL,PRIMARY KEY (numAgenda), FOREIGN KEY (numEmploye) References EMPLOYE);

CREATE TABLE ABSENT(numEmploye NUMBER(8) , numActDept NUMBER(8) , motif VARCHAR(1024), PRIMARY KEY (numEmploye, numActDept), FOREIGN KEY (numEmploye) References EMPLOYE,FOREIGN KEY (numActDept) References ACTIVITESDEPT); 

CREATE TABLE ACTIVITES(numActivite NUMBER(8) , typeA VARCHAR(30) NOT NULL, description VARCHAR(1024), dateAct DATE NOT NULL, hDebut DATE, hFin DATE, dateCreation DATE, createur VARCHAR(20) NOT NULL, visible NUMBER(1), numAgenda NUMBER(8) NOT NULL, PRIMARY KEY (numActivite), FOREIGN KEY (numAgenda) References AGENDA); 

CREATE TABLE ALERTES (type CHAR(8) , delais DATE, numActivite NUMBER(8), PRIMARY KEY (type,delais,numActivite), FOREIGN KEY (numActivite) References ACTIVITES);




