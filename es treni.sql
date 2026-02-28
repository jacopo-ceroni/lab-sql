CREATE TABLE treno(
    idtreno CHAR(6) PRIMARY KEY,
    nposti INT,
    annocostruzione DATE
    );
    
    CREATE TABLE tratta(
    idtratta VARCHAR(30) PRIMARY KEY,
    stazzarr VARCHAR(30),
    stazzpar VARCHAR(30),
    kmpercorsi INT
    );
    
    CREATE TABLE corsa(  
    idcorsa VARCHAR(30)PRIMARY KEY,
    idtreno CHAR(6),
    idtratta VARCHAR(50),
    FOREIGN KEY (idtreno) REFERENCES treno(idtreno),
    FOREIGN KEY (idtratta) REFERENCES tratta(idtratta),
    partenza TIME,
    arrivo TIME,
    data DATE
    );
    
