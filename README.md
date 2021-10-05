- Tutto ciò che è tra parentisi è un esempio, non uno standard. Ogni caso va analizzato nello specifico

# Clean Architecture
Ogni livello non sa nulla dei livelli adiacenti.

Livelli:
- Il livello **DATA** Gestisce tutte le iterazioni con le api e/o con la piattaforma. Ad esempio se la risposta di un endpoint è cambiata, viene gestita qui 
come la rinominazione di un parametro o lo spostamento. Questo livello astrae il database che si sta usando, **DOMAIN** non deve sapere se si sta utilizzando o 
no un database e con quali dati si sta accedendo a esso.
- Il livello **DOMAIN** gestisce la logica dei dati. Si occupa principalmente di eseguire *azioni*. Ad esempio la modifica di un valore e/o la sua validazione. 
Puo chiamare più repository e fare molteplici chiamate
- Il livello **PRESENTATION** gestisce la grafica. Chiama il livello **DOMAIN** ogni volta che deve eseguire un'*azione*.

## Layer Communication
Comunicazione:
- **PRESENTATION** -> **Entity/Params** -> **DOMAIN** -> **Model** -> **DATA** -> **Request/Query** -> **Api/Platform**
- **Api/Platform** -> **Response** -> **DATA** -> **Model** -> **DOMAIN** -> **Entity** -> **PRESENTATION**


#### DATA
Le feature sono divise in repository. Un repository non puo contenere un altri repository
##### Base Methods
- *create*: un metodo per creare il dato
- *read*: un metodo per recuperare un dato già esistente. Se è una lista *readAll*
- *fetch*: un metodo per recuperare una pagina di dati già esistenti
- *update*: un metodo per aggiornare un dato già esistente
- *delete*: un metodo per cancellare un dato già esistente
##### Advance Methods
- *retrieve* (create+read): un metodo per recuperare un dato, se non esiste lo crea
- *save* (create+read+update): un metodo per recuperare un dato, se non esiste lo aggiorna altrimenti lo crea
- *check*: un metodo per controllare lo stato di un dato, se lo stato è sbagliato lancia un'eccezione con il relativo problema
##### Classes
- *Request*: Le richieste alle Api o alla Piattaforma
- *Response*: Le risposte delle Api o della Piattaforma

#### Domain
Le feature sono divise in use case. Una use case rappresenta principalmente un'azione non un insieme di azioni. Una use case non puo contenere altre use case.
##### Classes
- *Params*: I parametri di una use case
- *Entity*: Classi per la comunicazione tra domain e presentation
- *Model*: Classi per la comunicazione tra domain e data

#### Presentation
#### Classes
- *Data*: Classi utilizzate solo nel layer presentation
