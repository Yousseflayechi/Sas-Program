DATA eleves;
  INPUT nom $ sexe $ age taille poids;
  DATALINES;
Albert M 14 155 52.5
Marc M 13 145 50.0
Louis M 15 132 35.5
Valérie F 12 126 28.7
Mélanie F 14 138 35.2
;
RUN;
 
PROC REG DATA=eleves;
  MODEL poids = taille age;
  OUTPUT OUT=regression_output P=prediction R=residual;
RUN;
QUIT;


PROC SGPLOT DATA=regression_output;
  SCATTER x=taille y=poids / markerattrs=(color=blue) name='scatter';
  SERIES x=taille y=prediction / lineattrs=(color=red);
  XAXIS LABEL='Taille';
  YAXIS LABEL='Poids';
RUN;



PROC REG DATA=eleves;
  MODEL poids = age;
  OUTPUT OUT=regression_age P=pred_age;
RUN;
QUIT;


PROC SGPLOT DATA=regression_age;
  SCATTER x=age y=poids / markerattrs=(color=blue);
  SERIES x=age y=pred_age / lineattrs=(color=red);
  XAXIS LABEL='Âge';
  YAXIS LABEL='Poids';
RUN;


PROC SGPLOT DATA=eleves;
  HISTOGRAM poids / BINWIDTH=5;
  XAXIS LABEL='Poids';
  YAXIS LABEL='Fréquence';
RUN;


PROC GCHART DATA=eleves;
  PIE sexe;
RUN;
QUIT;


PROC GCHART DATA=eleves;
  PIE age;
RUN;
QUIT;


PROC SGPLOT DATA=eleves;
  VBAR age / GROUP=sexe;
  KEYLEGEND / TITLE='Sexe';
RUN;


ODS RTF BODY='~/eleves.rtf';
ODS GRAPHICS ON;

DATA eleves;
  INPUT nom $ sexe $ age taille poids;
  DATALINES;
Albert M 14 155 52.5
Marc M 13 145 50.0
Louis M 15 132 35.5
Valérie F 12 126 28.7
Mélanie F 14 138 35.2
;
RUN;
 
PROC REG DATA=eleves;
  MODEL poids = taille age;
  OUTPUT OUT=regression_output P=prediction R=residual;
RUN;
QUIT;


PROC SGPLOT DATA=regression_output;
  SCATTER x=taille y=poids / markerattrs=(color=blue) name='scatter';
  SERIES x=taille y=prediction / lineattrs=(color=red);
  XAXIS LABEL='Taille';
  YAXIS LABEL='Poids';
RUN;



PROC REG DATA=eleves;
  MODEL poids = age;
  OUTPUT OUT=regression_age P=pred_age;
RUN;
QUIT;


PROC SGPLOT DATA=regression_age;
  SCATTER x=age y=poids / markerattrs=(color=blue);
  SERIES x=age y=pred_age / lineattrs=(color=red);
  XAXIS LABEL='Âge';
  YAXIS LABEL='Poids';
RUN;


PROC SGPLOT DATA=eleves;
  HISTOGRAM poids / BINWIDTH=5;
  XAXIS LABEL='Poids';
  YAXIS LABEL='Fréquence';
RUN;


PROC GCHART DATA=eleves;
  PIE sexe;
RUN;
QUIT;


PROC GCHART DATA=eleves;
  PIE age;
RUN;
QUIT;


PROC SGPLOT DATA=eleves;
  VBAR age / GROUP=sexe;
  KEYLEGEND / TITLE='Sexe';
RUN;

ODS GRAPHICS OFF;
ODS RTF CLOSE;
