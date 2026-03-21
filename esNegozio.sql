-- Estrazione di tutti i dati relativi ai modelli dei prodotti a catalogo. 
select * from 4CTL_modelli_prodotto

-- Visualizzazione di nome e prezzo di tutti i modelli a catalogo.
select nome, prezzo_listino
from 4CTL_modelli_prodotto

-- Ricerca di tutti i modelli con prezzo di listino inferiore a 600€.
select cod_modello
from 4CTL_modelli_prodotto
where prezzo_listino < '600'

-- Selezione dei modelli che contengono la stringa ’Samsung’ nel nome.
select nome, cod_modello
from 4CTL_modelli_prodotto
where nome LIKE '%Samsung%'

-- Elenco dei clienti il cui nome termina con la lettera ’a’. 
select nome from 4CTL_clienti where nome LIKE '%a'

-- Elenco dei modelli ordinati dal prezzo più elevato al più basso. 
select nome, prezzo_listino from 4CTL_modelli_prodotto ORDER BY prezzo_listino DESC
