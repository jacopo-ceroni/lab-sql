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

-- Visualizzazione delle categorie di prodotti disponibili senza ripetizioni.
select DISTINCT categoria from 4CTL_modelli_prodotto

-- estrazioner dei primi 10 prodotti arrivati in magazzino in ordine cronologico
SELECT id_prodotto, data_arrivo
FROM `4CTL_prodotti`
ORDER BY data_arrivo ASC
limit 10

-- Ricerca di tutti gli ordini effettuati nel mese di giugno 2024.
SELECT * FROM `4CTL_ordini` where month (data_ordine)='6'

-- Elenco dei codici seriali in magazzino associati al nome del relativo modello. 
select cod_seriale, nome from 4CTL_prodotti, 4CTL_modelli_prodotto
where 4CTL_prodotti.id_modello= 4CTL_modelli_prodotto.id_modello
