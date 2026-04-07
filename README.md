# 📦 Banco de Dados - Unidades de Medidas

Este projeto contém a estrutura SQL para criação de tabelas relacionadas ao gerenciamento de **unidades de medidas** e suas relações com a tabela `Medida`.

---

## 📌 Estrutura da Tabela

```sql
CREATE TABLE Unid_de_medidas(
    Cod_unid_de_medidas BIGINT UNSIGNED AUTO_INCREMENT,
    Fk_id_medidas BIGINT UNSIGNED,
    PRIMARY KEY (Cod_unid_de_medidas),
    FOREIGN KEY (Fk_id_medidas) REFERENCES Medida(Id_medidas)
);
```

---

## ⚠️ Possível Erro Comum

Se você encontrar o erro:

```
Error Code: 1075. Incorrect table definition; there can be only one auto column and it must be defined as a key
```

### 🔍 Causa

Isso acontece quando você tenta definir **mais de uma coluna com `AUTO_INCREMENT`**.

Exemplo incorreto:

```sql
Cod_unid_de_medidas BIGINT AUTO_INCREMENT,
Fk_id_medidas BIGINT AUTO_INCREMENT ❌
```

---

## ✅ Correção

* Use `AUTO_INCREMENT` apenas na **chave primária**
* Não utilize `AUTO_INCREMENT` em **chaves estrangeiras**

---

## 🧠 Conceitos Importantes

| Conceito       | Descrição                           |
| -------------- | ----------------------------------- |
| AUTO_INCREMENT | Gera valores únicos automaticamente |
| PRIMARY KEY    | Identificador único da tabela       |
| FOREIGN KEY    | Relaciona dados entre tabelas       |

---

## 🔗 Relacionamento

A tabela `Unid_de_medidas` possui relação com:

* `Medida(Id_medidas)`

---

## 🚀 Boas Práticas

* Sempre use `AUTO_INCREMENT` apenas para IDs principais
* Garanta que chaves estrangeiras referenciem colunas existentes
* Evite redundância de índices desnecessários

---

## 👨‍💻 Autor

**Elvis Almeida**

---

## 📄 Licença

Este projeto é de uso livre para fins de estudo e desenvolvimento.
