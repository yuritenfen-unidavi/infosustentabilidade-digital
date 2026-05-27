# 🌱 Modelo de Dados — Sistema de Descarte Sustentável

> Um sistema ecológico voltado à organização de pontos de coleta, descarte correto de resíduos e preservação ambiental. ♻️🌍

---

# 🌳 Visão Geral do Sistema

O sistema foi desenvolvido para auxiliar no gerenciamento de informações ambientais relacionadas ao descarte sustentável.

## 🌿 Funcionalidades principais

- ♻️ Cadastro de pontos de coleta
- 📦 Controle de materiais aceitos
- 🗑️ Registro de procedimentos de descarte
- 📷 Armazenamento de evidências
- 📊 Produção de análises críticas ambientais

---

# 🌲 Estrutura do Modelo

```text
                 🌍 SISTEMA ECOLÓGICO 🌍

                        🌳 pontos_coleta
                               │
        ┌──────────────────────┼──────────────────────┐
        │                      │                      │
 ♻️ materiais_aceitos   📷 evidencias   🗑️ procedimentos_descarte
                               │
                    📊 analises_criticas
```

---

# 🏡 Entidade: pontos_coleta

Tabela responsável pelo cadastro dos locais de coleta sustentável.

## 🌿 Atributos

| Campo | Tipo | Descrição |
|---|---|---|
| 🆔 id | INT | Identificador único |
| 🏢 nome | VARCHAR | Nome do ponto de coleta |
| 📍 endereço | VARCHAR | Endereço completo |
| 🌳 bairro | VARCHAR | Bairro do local |
| 🏙️ cidade | VARCHAR | Cidade do ponto |
| 📞 contato | VARCHAR | Telefone ou e-mail |
| 🗺️ link_maps | TEXT | Link da localização |
| 📝 observação | TEXT | Informações adicionais |

---

# ♻️ Entidade: materiais_aceitos

Tabela que registra os materiais aceitos em cada ponto de coleta.

## 🌿 Atributos

| Campo | Tipo | Descrição |
|---|---|---|
| 🆔 id_material | INT | Identificador do material |
| 🏡 id_ponto | INT | Referência ao ponto de coleta |
| 📦 tipo_material | VARCHAR | Tipo do material |
| ✅ aceita | BOOLEAN | Indica se o material é aceito |
| 📝 observação | TEXT | Informações complementares |

## 🌱 Relacionamento

- `id_ponto` referencia a tabela `pontos_coleta`.

---

# 🗑️ Entidade: procedimentos_descarte

Tabela destinada aos procedimentos necessários para descarte correto.

## 🌿 Atributos

| Campo | Tipo | Descrição |
|---|---|---|
| 🆔 id | INT | Identificador do procedimento |
| 🏡 id_ponto | INT | Referência ao ponto de coleta |
| ⏰ horário | VARCHAR | Horário de funcionamento |
| 📅 agendamento | BOOLEAN | Necessidade de agendamento |
| 💰 custo | DECIMAL | Valor do descarte |
| 🚛 modalidade | VARCHAR | Tipo de descarte |
| 📝 descrição | TEXT | Explicação do procedimento |

## 🌱 Relacionamento

- `id_ponto` referencia a tabela `pontos_coleta`.

---

# 📷 Entidade: evidencias

Tabela responsável pelo armazenamento de comprovações e verificações.

## 🌿 Atributos

| Campo | Tipo | Descrição |
|---|---|---|
| 🆔 id | INT | Identificador da evidência |
| 🏡 id_ponto | INT | Referência ao ponto de coleta |
| 📂 tipo | VARCHAR | Tipo da evidência |
| 📝 descrição | TEXT | Descrição da evidência |
| 🔗 arquivo/link | TEXT | Arquivo ou link externo |
| 📅 data_verificação | DATE | Data da verificação |

## 🌱 Relacionamento

- `id_ponto` referencia a tabela `pontos_coleta`.

---

# 📊 Entidade: analises_criticas

Tabela utilizada para avaliações ambientais e sugestões de melhorias.

## 🌿 Atributos

| Campo | Tipo | Descrição |
|---|---|---|
| 🆔 id | INT | Identificador da análise |
| 🏙️ cidade | VARCHAR | Cidade analisada |
| 😊 facilidade | TEXT | Pontos positivos encontrados |
| ⚠️ dificuldades | TEXT | Problemas identificados |
| 📢 divulgação | TEXT | Avaliação da divulgação |
| 🌱 melhorias | TEXT | Sugestões sustentáveis |

---

# 🌎 Relacionamentos do Sistema

```text
🌳 pontos_coleta
    ├── ♻️ materiais_aceitos
    ├── 🗑️ procedimentos_descarte
    └── 📷 evidencias
```

## 🌿 Regras

- Um ponto de coleta pode aceitar vários materiais.
- Um ponto de coleta pode possuir diversos procedimentos.
- Um ponto de coleta pode possuir várias evidências registradas.

---

# 🍃 Objetivo do Modelo

Este modelo de dados foi criado para incentivar práticas sustentáveis e facilitar o descarte correto de resíduos eletrônicos e recicláveis.

## 🌱 Benefícios

- 🌍 Redução da poluição ambiental
- ♻️ Incentivo à reciclagem
- 📊 Organização das informações
- 🌳 Apoio à sustentabilidade
- 🏡 Facilidade de acesso aos pontos de coleta

---

<div align="center">

# 🌿 Preserve o Meio Ambiente 🌿

### ♻️ Pequenas atitudes geram grandes mudanças 🌎

🌳🌱🍃🌿♻️🌍

</div>
