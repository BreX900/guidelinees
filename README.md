- Tutto ciò che è tra parentisi è un esempio non uno standard. Ogni caso va analizzato nello specifico

# Clean Architecture
Ogni livello non sa nulla dei livelli adiacenti.

Livelli:
- Il livello **DATA** Gestisce tutte le iterazioni con le api eo con il device. Ad esempio se la risposta di un enpoint è cambiata viene gestita qui come la renominazione di un paramentro o lo spostamento. Questo livello astrae il database che si sta usando, **DOMAIN** non deve sapere se si sta utilizzando o no un database e con quali dati di accesso ad esso.
- Il livello **DOMAIN** gestisce la logica dei dati. Si occupa principalmente di eseguire *azioni*. Ad esempio la modifica di un valore eo la validazione.   
- Il livello **PRESENTAION** gestisce la grafica. Chiama il livello **DOMAIN** ogni volta che deve eseguire un'*azione*.

## Standard
Comunicazione:
- **PRESENTATION** -> **RawEntity** -> **DOMAIN** -> **Request** -> **DATA**
- **DATA** -> **Response** -> **DOMAIN** -> **Entity** -> **PRESENTATION**

#### DATA
I metodi iniziano con:
- *create*: un metodo per creare il dato
- *read*: un metodo per recuperare un dato già esistente
- *update*: un metodo per aggiornare un dato già esistente
- *delete*: un metodo per cancellare un dato già esistente

- *retieve* (create+read): un metodo per recuperare un dato, se non esiste lo crea
- *save* (create+read+update): un metodo per recuperare un dato, se non esiste lo aggiorna altrimenti lo crea
- *check*: un metodo per controllare lo stato di un dato, se lo stato è sbagliato lancia un'ecezione con il relativo problema

##### Le classi
- *params*: Definisce tutte le chiavi di accesso per un dato e la *Request*: (i valori nel path di un endpoint e il body)
- *Request*: La richiesta = Il dato
- *Response*: Il risultato = Il dato

##### Api
Le query vanno spartite tra i params e la request in base al significato del valore

#### PRESENTATION
Utilizza pattern come MVC, BLoC, Cubit, Model e molti altri per gestire la grafica.
La grafica puo essere di React, Flutter, ... per ciò i componenti sono ad esempio component, widgets, ...
I "presentatori" si occupano di rendere i dati facilmente gestibili per i componenti grafici.
I "presentatori" possono eseguire delle *Action* in catena o simultanemente esse sono usa e getta per tanto espongono uno stream con il progresso 0 -> 1 e -1 quando l'azione è fallita.
I componenti grafici si dividono in:
- *View* / *Builder*: coloro che costruiscono la grafica basata sulle *Entity*
- *appName*: coloro che costruiscono la grafica basata sulle grafice, sono completamente indipendenti dalle *Entity*
- * *: coloro che costruiscono la grafica in base a cosa vogliono mostrare
