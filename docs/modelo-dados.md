# Modelo de Dados

O arquivo `modelo-dados.md` documenta as entidades e atributos do sistema.

---

# Entidades do Modelo de Dados

## 1. pontos_coleta

Tabela responsável por armazenar as informações dos pontos de coleta.

### Atributos

| Campo        | Tipo sugerido | Descrição |
|--------------|---------------|-----------|
| id | INT | Identificador único do ponto de coleta |
| nome | VARCHAR | Nome do local |
| endereço | VARCHAR | Endereço completo |
| bairro | VARCHAR | Bairro do ponto |
| cidade | VARCHAR | Cidade onde está localizado |
| contato | VARCHAR | Telefone, e-mail ou outro meio de contato |
| link_maps | TEXT | Link do Google Maps ou localização |
| observação | TEXT | Informações adicionais |

---

## 2. materiais_aceitos

Tabela responsável pelos materiais aceitos em cada ponto de coleta.

### Atributos

| Campo | Tipo sugerido | Descrição |
|--------|---------------|-----------|
| id_material | INT | Identificador do material |
| id_ponto | INT | Referência ao ponto de coleta |
| tipo_material | VARCHAR | Tipo de material aceito |
| aceita | BOOLEAN | Indica se o material é aceito |
| observação | TEXT | Informações adicionais |

### Relacionamento

- `id_ponto` referencia a tabela `pontos_coleta`.

---

## 3. procedimentos_descarte

Tabela que registra os procedimentos necessários para descarte.

### Atributos

| Campo | Tipo sugerido | Descrição |
|--------|---------------|-----------|
| id | INT | Identificador do procedimento |
| id_ponto | INT | Referência ao ponto de coleta |
| horário | VARCHAR | Horário de funcionamento |
| agendamento | BOOLEAN | Necessidade de agendamento |
| custo | DECIMAL | Valor cobrado pelo descarte |
| modalidade | VARCHAR | Tipo de descarte realizado |
| descrição | TEXT | Explicação do procedimento |

### Relacionamento

- `id_ponto` referencia a tabela `pontos_coleta`.

---

## 4. evidencias

Tabela utilizada para armazenar evidências e comprovações.

### Atributos

| Campo | Tipo sugerido | Descrição |
|--------|---------------|-----------|
| id | INT | Identificador da evidência |
| id_ponto | INT | Referência ao ponto de coleta |
| tipo | VARCHAR | Tipo da evidência |
| descrição | TEXT | Descrição da evidência |
| arquivo/link | TEXT | Arquivo enviado ou link externo |
| data_verificação | DATE | Data da verificação |

### Relacionamento

- `id_ponto` referencia a tabela `pontos_coleta`.

---

## 5. analises_criticas

Tabela destinada às análises críticas sobre os pontos de coleta e descarte.

### Atributos

| Campo | Tipo sugerido | Descrição |
|--------|---------------|-----------|
| id | INT | Identificador da análise |
| cidade | VARCHAR | Cidade analisada |
| facilidade | TEXT | Pontos positivos encontrados |
| dificuldades | TEXT | Problemas identificados |
| divulgação | TEXT | Avaliação da divulgação dos serviços |
| melhorias | TEXT | Sugestões de melhoria |

---

# Relacionamentos do Sistema

```text
pontos_coleta
    ├── materiais_aceitos
    ├── procedimentos_descarte
    └── evidencias
