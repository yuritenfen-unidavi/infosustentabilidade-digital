```sql
-- =========================================
-- PONTOS DE COLETA
-- =========================================

INSERT INTO pontos_coleta
(nome_local, endereco, bairro, cidade, contato, link_maps, observacao)
VALUES

('Casa da Cidadania',
'Rua Willy Pett, 29',
'Centro',
'Witmarsum',
'Não informado',
'https://maps.app.goo.gl/98FH6SQfKx4HabaR8',
NULL),

('Hospital Mateus Caled Padoin',
'Rua Sete de Setembro, 2255',
'Centro',
'Witmarsum',
'(47) 3358-0539',
'https://maps.app.goo.gl/Btdray8BN7CD4UuXA',
'Recebe materiais em eventos específicos'),

('Ecoponto Central – SAMAE Gaspar',
'Avenida Frei Godofredo, 1635',
'Santa Terezinha',
'Gaspar',
'(47) 3091-2095',
'https://www.samaegaspar.com.br/servicos/residuos-solidos/ecoponto',
NULL),

('Superintendência do Belchior',
'Rua Bonifácio Haendchen, 2758',
'Belchior Central',
'Gaspar',
'Não informado',
'https://www.gaspar.sc.gov.br/superintendencia-do-belchior/',
NULL),

('MR Gestão de Resíduos',
'Rua Anfilóquio Nunes Pires, 1705',
'Bairro Figueira',
'Gaspar',
'(47) 3332-4068',
'https://www.mrgestaoderesiduos.com.br/',
'Empresa privada'),

('CDL Rio do Campo (Recicla CDL)',
'Rua 29 de Dezembro',
'Centro',
'Rio do Campo',
'(47) 3564-1270',
NULL,
'Programa Recicla CDL'),

('Prefeitura Municipal de Agrolândia – Secretaria de Obras e Meio Ambiente',
'Rua dos Pioneiros',
'Centro',
'Agrolândia',
'Não informado',
NULL,
NULL),

('PontoCom - Celulares',
'Rua dos Pioneiros, 120',
'Centro',
'Agrolândia',
'Não informado',
NULL,
'Assistência técnica e eletrônicos');

-- =========================================
-- MATERIAIS ACEITOS
-- =========================================

INSERT INTO materiais_aceitos
(id_ponto, tipo_material)
VALUES

(1,'baterias'),
(1,'celulares'),

(2,'televisores'),
(2,'eletrodomésticos'),

(3,'celulares'),
(3,'computadores'),
(3,'televisões'),
(3,'pilhas'),
(3,'cabos'),
(3,'impressoras'),

(4,'celulares'),
(4,'notebooks'),
(4,'carregadores'),
(4,'pilhas'),
(4,'pequenos eletrônicos'),

(5,'resíduos eletrônicos'),
(5,'peças eletrônicas'),
(5,'metais'),

(6,'celulares'),
(6,'notebook'),
(6,'tablets'),
(6,'componentes internos'),

(7,'computadores'),
(7,'teclados'),
(7,'mouses'),
(7,'monitores'),
(7,'celulares'),
(7,'cabos'),
(7,'impressoras'),
(7,'baterias'),

(8,'computadores'),
(8,'teclados'),
(8,'mouses'),
(8,'monitores'),
(8,'celulares'),
(8,'cabos'),
(8,'impressoras'),
(8,'baterias');

-- =========================================
-- PROCEDIMENTOS DE DESCARTE
-- =========================================

INSERT INTO procedimentos_descarte
(id_ponto, horario_funcionamento, precisa_agendamento,
possui_custo, modalidade, descricao_processo)
VALUES

(1,
'08h às 12h e 14h às 17h',
FALSE,
FALSE,
'entrega no local',
'Entrega direta no ponto de coleta'),

(2,
'Durante eventos específicos',
FALSE,
FALSE,
'entrega no local',
'Recebimento realizado em campanhas ambientais'),

(3,
NULL,
FALSE,
FALSE,
'entrega',
'Entrega direta no Ecoponto'),

(4,
NULL,
FALSE,
FALSE,
'entrega',
'Entrega direta no local'),

(5,
NULL,
FALSE,
TRUE,
'entrega',
'Consultar custos diretamente com a empresa'),

(6,
NULL,
TRUE,
FALSE,
'entrega',
'Necessário contato prévio'),

(7,
'08:00 às 12:00 e 14:00 às 17:00',
FALSE,
FALSE,
'entrega no local',
'Recebimento durante horário de expediente'),

(8,
'08:30 às 12:00 e 13:30 às 18:30',
FALSE,
FALSE,
'entrega/venda',
'Recebimento de eletrônicos e acessórios');

-- =========================================
-- EVIDÊNCIAS
-- =========================================

INSERT INTO evidencias
(id_ponto, tipo_evidencia, descricao, arquivo_ou_link, data_verificacao)
VALUES

(1,
'ligação',
'Confirmação de recebimento',
'https://maps.app.goo.gl/98FH6SQfKx4HabaR8',
CURRENT_DATE),

(2,
'ligação',
'Confirmação de recebimento',
'https://maps.app.goo.gl/Btdray8BN7CD4UuXA',
CURRENT_DATE),

(3,
'pesquisa',
'Informações obtidas no site do SAMAE',
'https://www.samaegaspar.com.br/servicos/residuos-solidos/ecoponto',
CURRENT_DATE),

(4,
'pesquisa',
'Informações obtidas no portal da prefeitura',
'https://www.gaspar.sc.gov.br/superintendencia-do-belchior/',
CURRENT_DATE),

(5,
'pesquisa',
'Informações obtidas no site da empresa',
'https://www.mrgestaoderesiduos.com.br/',
CURRENT_DATE),

(6,
'pesquisa',
'Programa Recicla CDL',
'CDL RIO DO CAMPO – Portal das CDLs',
CURRENT_DATE),

(7,
'pesquisa',
'Pesquisa em portal institucional',
'Prefeitura Municipal de Agrolândia',
CURRENT_DATE),

(8,
'pesquisa',
'Pesquisa em estabelecimento local',
'PontoCom - Celulares - Informática - Assistência Técnica - Eletrônicos',
CURRENT_DATE);
```
