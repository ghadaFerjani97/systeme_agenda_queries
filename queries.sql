SELECT DISTINCT E.nom as nom_Employe, E.prenom as prenom_Employe, D.nom as nom_Departement 
FROM Employe E, Departement D
WHERE E.numDept = D.num AND E.email is NULL
ORDER BY D.Nom ASC,E.nom ASC;


SELECT DISTINCT Acd.dateAct as Seminaire_Depart,Acd.descript as Description FROM Departement D, AgendaDept Agd, ActivitesDept Acd WHERE upper( D.nom )= 'INFORMATIQUE'
And D.numAgendaDept=Agd.numAgenda And Agd.numAgenda = Acd.numAgenda  And upper( Acd.typeD ) = 'SEMINAIRE' Acd.dateAct
And sysdate  < Acd.dateAct ORDER BY Acd.dateAct ASC;     



SELECT DISTINCT Ac.dateAct as SEMINAIRE, Ac.description as Description    FROM Departement D, Agenda Ag, Activites Ac, Employe E WHERE upper( D.nom )= 'INFORMATIQUE' And D.num = E.numDept And E.numEmploye = Ag.numEmploye And Ag.numAgenda = Ac.numAgenda And upper( Ac.typeA ) = 'SEMINAIRE' And sysdate < Ac.dateAct ORDER BY Ac.dateAct ASC;



SELECT DISTINCT Ac.typeA as Act_de_SCHANG,Ac.dateAct as date_Activite, to_char(Ac.hDebut,'hh24:mi') as H_Debut,to_char(Ac.hFin,'hh24:mi') as H_Fin, Ac.createur as Createur   FROM Employe E, Agenda A, Activites Ac WHERE upper( E.nom ) = 'SCHANG'And E.numEmploye = A.numEmploye AND A.numAgenda = Ac.numAgenda AND upper(Ac.createur) NOT LIKE 'SCHANG' AND visible = 1 ORDER BY Ac.dateAct ASC; 




SELECT DISTINCT Ac.dateAct as act_personnelles, to_char(Ac.hDebut,'hh24:mi') as MrPercher, to_char(Ac.hFin,'hh24:mi') as problemes,Acd.dateAct as act_departementales, to_char(Acd.hDebut,'hh24:mi') as MrPercher,  to_char(Acd.hFin,'hh24:mi') as problemes FROM Activites Ac, Agenda Ag, Employe E, Departement D, AgendaDept Agd, ActivitesDept Acd WHERE Ac.dateAct = Acd.dateAct  And Agd.numAgenda = Acd.numAgenda And Ag.numEmploye = E.numEmploye And E.numDept = D.num And D.numAgendaDept = Agd.numAgenda And Ag.numAgenda = Ac.numAgenda And upper( E.nom )= AND Ac.visible = 1 And (to_char(Ac.hDebut,'hh24:mi') between  to_char(Acd.hDebut,'hh24:mi') and to_char(Acd.hFin,'hh24:mi')          or to_char(Ac.hFin,'hh24:mi') between to_char(Acd.hDebut,'hh24:mi') and to_char(Acd.hFin,'hh24:mi') or to_char(Acd.hDebut,'hh24:mi') between to_char(Ac.hDebut,'hh24:mi') and to_char(Ac.hFin,'hh24:mi') or to_char(Acd.hFin,'hh24:mi') between to_char(Ac.hDebut,'hh24:mi') and to_char(Ac.hFin,'hh24:mi'));



SELECT DISTINCT to_char(Acd.hDebut, 'hh24:mi') as dateDept,  to_char(Acd.hFin, 'hh24:mi') as BOISSINOT, Acd.typeD as TypeDept, Acd.descript as Description FROM Departement D, AgendaDept Agd, ActivitesDept Acd, Employe E WHERE upper( E.nom )= 'BOISSINOT'And D.numAgendaDept = Agd.numAgenda And D.num = E.numDept               -And Agd.numAgenda = Acd.numAgenda And to_date('09-01-2006','dd-MM-YYYY')= Acd.dateAct;







