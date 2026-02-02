INSERT INTO produtos (nome_produto, descricao, preco, id_categoria, id_fornecedor) VALUES

-- 1️⃣ Celulares e Smartphones
('Smartphone Samsung Galaxy A15', 'Tela 6.5", 128GB, Android', 1199.90, 1, 1),
('Smartphone Motorola G34', '5G, 128GB, 8GB RAM', 1299.00, 1, 2),
('iPhone 11 64GB', 'Câmera dupla, iOS', 2999.90, 1, 3),
('Xiaomi Redmi Note 13', '256GB, câmera 108MP', 1599.00, 1, 4),
('Samsung Galaxy S23', 'Topo de linha Samsung', 4599.90, 1, 5),

-- 2️⃣ Informática
('Teclado USB Multimídia', 'Teclado padrão USB', 89.90, 2, 1),
('Mouse Óptico USB', 'Mouse óptico com fio', 49.90, 2, 2),
('Monitor LED 24"', 'Monitor Full HD', 899.90, 2, 3),
('HD Externo 1TB', 'HD portátil USB 3.0', 399.90, 2, 4),
('Pen Drive 64GB', 'USB 3.0', 59.90, 2, 5),

-- 3️⃣ Notebooks e Ultrabooks
('Notebook Dell Inspiron', 'Intel i5, 8GB RAM, SSD 256GB', 3499.90, 3, 1),
('Notebook Lenovo Ideapad', 'Intel i3, 8GB RAM', 2799.00, 3, 2),
('MacBook Air M1', 'Chip M1, SSD 256GB', 6999.00, 3, 3),
('Notebook Acer Aspire 5', 'Ryzen 5', 3299.90, 3, 4),
('Ultrabook Samsung Book', 'SSD 512GB', 3899.90, 3, 5),

-- 4️⃣ Computadores e PCs
('PC Gamer Entry', 'Ryzen 5, GTX 1650', 4299.90, 4, 1),
('PC Gamer Plus', 'Ryzen 7, RTX 3060', 6999.00, 4, 2),
('PC Home Basic', 'Intel i3', 2499.90, 4, 3),
('PC Home Advanced', 'Intel i5', 3299.90, 4, 4),
('PC Corporativo', 'Uso empresarial', 2899.90, 4, 5),

-- 5️⃣ Tablets e Leitores Digitais
('Tablet Samsung Galaxy A9', '64GB Android', 999.90, 5, 1),
('iPad 9ª Geração', '64GB Wi-Fi', 2899.00, 5, 2),
('Tablet Multilaser M10', 'Tablet educacional', 699.90, 5, 3),
('Kindle 11ª Geração', 'Leitor digital', 499.90, 5, 4),
('Tablet Lenovo M9', 'Android', 899.00, 5, 5),

-- 6️⃣ TVs e Home Theater
('Smart TV Samsung 50"', '4K UHD', 2599.90, 6, 1),
('Smart TV LG 55"', 'WebOS', 2999.90, 6, 2),
('Home Theater LG', 'Sistema 5.1', 1499.90, 6, 3),
('Soundbar Samsung', 'Subwoofer sem fio', 1199.90, 6, 4),
('Smart TV Philco 43"', 'Full HD', 1899.90, 6, 5),

-- 7️⃣ Áudio e Som
('Caixa de Som JBL Go', 'Bluetooth portátil', 249.90, 7, 1),
('Fone Bluetooth Xiaomi', 'Redmi Bluetooth', 199.90, 7, 2),
('Headset Gamer', 'Com microfone', 299.90, 7, 3),
('Microfone Condensador', 'Para gravações', 399.90, 7, 4),
('Caixa Amplificada', '300W', 899.90, 7, 5),

-- 8️⃣ Eletrodomésticos
('Geladeira Frost Free', '375L', 3299.00, 8, 1),
('Fogão 4 Bocas', 'Acendimento automático', 1099.90, 8, 2),
('Micro-ondas 30L', 'Painel digital', 799.90, 8, 3),
('Máquina de Lavar 11kg', 'Automática', 2199.90, 8, 4),
('Air Fryer 4L', 'Sem óleo', 599.90, 8, 5),

-- 9️⃣ Eletroportáteis
('Liquidificador 800W', 'Copo 2L', 249.90, 9, 1),
('Batedeira Elétrica', '4 velocidades', 199.90, 9, 2),
('Cafeteira Elétrica', '30 xícaras', 179.90, 9, 3),
('Aspirador Vertical', 'Alta potência', 399.90, 9, 4),
('Sanduicheira Grill', 'Antiaderente', 149.90, 9, 5),

-- 🔟 Linha Branca
('Geladeira Duplex', '400L', 3599.90, 10, 1),
('Freezer Horizontal', '200L', 2799.00, 10, 2),
('Lava e Seca', '10kg', 4299.90, 10, 3),
('Cooktop 5 Bocas', 'A gás', 1299.90, 10, 4),
('Forno Elétrico', '60L', 1899.90, 10, 5),

-- 1️⃣1️⃣ Acessórios para Celular
('Capa Silicone', 'Proteção flexível', 39.90, 11, 1),
('Película de Vidro', 'Vidro temperado', 29.90, 11, 2),
('Carregador Turbo', 'USB-C', 89.90, 11, 3),
('Cabo USB-C', '1 metro', 39.90, 11, 4),
('Suporte Veicular', 'Universal', 59.90, 11, 5),

-- 1️⃣2️⃣ Acessórios Informática
('Mouse Pad', 'Emborrachado', 29.90, 12, 1),
('Webcam HD', 'Videochamadas', 199.90, 12, 2),
('Hub USB', '4 portas', 99.90, 12, 3),
('Teclado Gamer RGB', 'Mecânico', 349.90, 12, 4),
('Adaptador HDMI', 'HDMI para VGA', 79.90, 12, 5),

-- 1️⃣3️⃣ Games e Consoles
('PlayStation 5', 'Console Sony', 4599.90, 13, 1),
('Xbox Series S', 'Console Microsoft', 2799.90, 13, 2),
('Controle DualSense', 'Controle PS5', 449.90, 13, 3),
('Jogo FIFA 24', 'PS5', 299.90, 13, 4),
('Headset Gamer Pro', 'Som surround', 399.90, 13, 5),

-- 1️⃣4️⃣ Periféricos
('Mouse Gamer RGB', '7200 DPI', 199.90, 14, 1),
('Teclado Mecânico', 'Switch blue', 299.90, 14, 2),
('Mouse Sem Fio', 'Recarregável', 149.90, 14, 3),
('Monitor Gamer 144Hz', 'Alta performance', 1899.90, 14, 4),
('Webcam Full HD', '1080p', 249.90, 14, 5),

-- 1️⃣5️⃣ Impressoras e Suprimentos
('Impressora HP', 'Multifuncional', 899.90, 15, 1),
('Cartucho Preto', 'Compatível', 129.90, 15, 2),
('Cartucho Colorido', 'Compatível', 149.90, 15, 3),
('Papel A4', '500 folhas', 39.90, 15, 4),
('Toner Laser', 'Compatível', 199.90, 15, 5),

-- 1️⃣6️⃣ Câmeras e Filmadoras
('Câmera DSLR', 'Profissional', 3899.90, 16, 1),
('Câmera Compacta', 'Digital', 1299.90, 16, 2),
('Filmadora HD', 'Portátil', 2199.90, 16, 3),
('Tripé Fotográfico', 'Ajustável', 199.90, 16, 4),
('Cartão SD 128GB', 'Alta velocidade', 149.90, 16, 5),

-- 1️⃣7️⃣ Casa Inteligente
('Lâmpada Smart', 'Wi-Fi', 89.90, 17, 1),
('Tomada Inteligente', 'Controle por app', 99.90, 17, 2),
('Câmera Wi-Fi', 'Segurança', 249.90, 17, 3),
('Assistente Virtual', 'Alexa integrada', 399.90, 17, 4),
('Sensor de Movimento', 'Automação', 129.90, 17, 5),

-- 1️⃣8️⃣ Energia e Iluminação
('Luminária LED', 'Mesa', 119.90, 18, 1),
('Refletor LED', '100W', 149.90, 18, 2),
('Fita LED', '5 metros', 99.90, 18, 3),
('Painel Solar', 'Residencial', 1899.90, 18, 4),
('Extensão Elétrica', '5 tomadas', 69.90, 18, 5),

-- 1️⃣9️⃣ Telefonia Fixa
('Telefone Sem Fio', 'Digital', 199.90, 19, 1),
('Telefone Com Fio', 'Tradicional', 99.90, 19, 2),
('Central PABX', 'Básica', 899.90, 19, 3),
('Ramal PABX', 'Expansão', 249.90, 19, 4),
('Telefone com Identificador', 'Chamadas', 179.90, 19, 5),

-- 2️⃣0️⃣ Cabos e Adaptadores
('Cabo HDMI', '2 metros', 49.90, 20, 1),
('Cabo VGA', '1.5 metros', 39.90, 20, 2),
('Adaptador USB-C', 'Para HDMI', 129.90, 20, 3),
('Cabo de Rede CAT6', '10 metros', 89.90, 20, 4),
('Conector RJ45', 'Pacote com 10', 29.90, 20, 5);
