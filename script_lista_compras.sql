-- Script  tabela Item
CREATE TABLE Item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

-- Script  tabela Lista
CREATE TABLE Lista (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,  -- Opção de associar um usuário à lista
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Script tabela Lista_Item (relacionamento entre Lista e Item)
CREATE TABLE Lista_Item (
    lista_id INT,
    item_id INT,
    PRIMARY KEY (lista_id, item_id),
    FOREIGN KEY (lista_id) REFERENCES Lista(id),
    FOREIGN KEY (item_id) REFERENCES Item(id)
);
