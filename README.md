- Tutto ciò che è tra parentisi è un esempio non uno standard. Ogni caso va analizzato nello specifico

# Clean Architecture
Ogni livello non sa nulla dei livelli adiacenti.

Livelli:
- Il livello **DATA** Gestisce tutte le iterazioni con le api eo con il device. Ad esempio se la risposta di un enpoint è cambiata viene gestita qui come la renominazione di un paramentro o lo spostamento. Questo livello astrae il database che si sta usando, **DOMAIN** non deve sapere se si sta utilizzando o no un database e con quali dati di accesso ad esso.
- Il livello **DOMAIN** gestisce la logica dei dati. Si occupa principalmente di eseguire *azioni*. Ad esempio la modifica di un valore.   
- Il livello **PRESENTAION** gestisce la grafica. Chiama il livello **DOMAIN** ogni volta che deve eseguire un'*azione*.

### Standard
Comunicazione:
- **PRESENTATION** -> **RawEntity** -> **DOMAIN** -> **Request** -> **DATA**
- **DATA** -> **Response** -> **DOMAIN** -> **Entity** -> **PRESENTATION**

##### DATA
I metodi iniziano con:
- *create*: un metodo di creazione (crea il dato)
- *get*: un metodo di ricerca (restituiscimi il dato o ricerca il dato)
- *update*: un metodo di aggiornamento (aggiorna il dato)
- *delete*: un metodo di cancellazione (cancella il dato)
- *save*: un metodo di creazione o di aggiornamento (crea il dato se non esiste altrimente aggiorna il dato)
- *set*: un metodo di aggiornamento dato una chiave (aggiorna il dato n12 con questo valore)

Le classi:
- *params*: Definisce tutte le chiavi di accesso per un dato e la *Request*: (i valori nel path di un endpoint e il body)
- *Request*: La richiesta = Il dato
- *Response*: Il risultato = Il dato

Api:
Le query vanno spartite tra i params e la request in base al significato del valore
