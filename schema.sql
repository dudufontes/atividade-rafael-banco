--PRAGMA foreign_keys = ON;

-- Tabela Participante

CREATE TABLE participante (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone TEXT NOT NULL
);

-- Tabela Evento

CREATE TABLE evento (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT NOT NULL,
    local TEXT NOT NULL,
    data TEXT NOT NULL
);

-- Tabela Inscrição

CREATE TABLE inscricao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_evento INTEGER NOT NULL,
    id_participante INTEGER NOT NULL,
    data_incricao TEXT NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES evento(id) ON DELETE SET NULL,
    FOREIGN KEY (id_participante) REFERENCES participante(id) ON DELETE SET NULL
);

-- Tabela pagamento

CREATE TABLE pagamento (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_incricao INTEGER NOT NULL,
    valor REAL NOT NULL,
    data_pagamento TEXT NOT NULL,
    status TEXT NO NULL
);

-- Inserindo Valores Participante

INSERT INTO participante (nome, email, telefone) VALUES 
('Carlos', 'dudu10@gmail.com', '34 23543233'),
('Taiz', 'taiz@gmail.com', '34 876325482'),
('Luiz', 'luiz@gmail.com', '34 999556238');

-- Inserindo Valores Evento

INSERT INTO evento (nome, descricao, local, data) VALUES
('Evento da Cidade', 'A festa de Patos de Minas', 'Patos de Minas - Parque de Exposições', '31/12/2025'),
('Festa Reveillon', 'Festa da Cidade', 'Patos de Minas - Parque de Exposições', '31/12/2025'),
('Steak Lanches', 'Muita comida e muita bebida', 'Patos de Minas - Steak Lanches UNIPAM', '05/09/2025');


-- Inserindo Valores Inscrição

INSERT INTO inscricao (id_evento, id_participante, data_incricao, status) VALUES
(2, 1, '18/05/2025', 'Confirmada!'),
(1, 1, '10/02/2025', 'Confirmada!'),
(2, 2, '10/05/2025', 'Confirmada!'),
(3, 1, '5/02/2025', 'Confirmada!');

-- Inserindo Valores Pagamento

INSERT INTO pagamento (id_incricao, valor, data_pagamento, status) VALUES
(1, 500.00, '18/05/2025', 'Pago!'),
(2, 256.00, '10/06/2025', 'Pendente!'),
(3, 264.00, '05/02/2025', 'Pago!'),
(4, 60.00, '06/09/2025', 'Pago!');




