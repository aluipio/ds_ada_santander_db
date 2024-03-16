# **Banco de Dados PostgreSQL - 2024** 🚀

* Projeto: **EDA (Análise Exploratória de Dados) em Banco de Dados PostgreSQL**

* Curso: **Data Science - Santander Coders 2023 | 2º Semestre**
* Módulo: **Banco de Dados I**
* **ADA Tech** em parceira com **Banco Santander**
* Facilitador: **Aruã de Mello Sousa**

## Aluno: **Anderson Miranda - ID: 1116003**


----
## **1. OBJETIVO:**

Este projeto tem por objetivo realizar uma Análise Exploratória de Dados em dados reais, utilizando os recursos da disciplica de Banco de Dados I, do Curso Data Science - Santander Coders, fazendo uso de comandos SQL para: construção do Database, carregamento de Dados, consulta e análise dos dados.


## **2. DATA SOURCE:**

**Delivery Center: Food & Goods orders in Brazil**

O modelo representa, de forma fictícia, dados de pedidos e entregas que foram processados pelo Delivery Center entre os meses de janeiro a abril de 2021.

Note que este é um modelo lógico e está fisicamente disponível em datasets no formato csv, ou seja, cada dataset fisicamente disponível representa uma tabela do esquema.

Os dados não possuem a completude de toda operação do Delivery Center e algumas informações foram anonimizadas devido ao nosso tratamento com a Lei Geral de Proteção de Dados (LGPD).

#### **Descrição dos datasets:**
	* channels: Este dataset possui informações sobre os canais de venda (marketplaces) onde são vendidos os good e food de nossos lojistas.
	* deliveries: Este dataset possui informações sobre as entregas realizadas por nossos entregadores parceiros.
	* drivers: Este dataset possui informações sobre os entregadores parceiros. Eles ficam em nossos hubs e toda vez que um pedido é processado, são eles  fazem as entregas na casa dos consumidores.
	* hubs: Este dataset possui informações sobre os hubs do Delivery Center. Entenda que os Hubs são os centros de distribuição dos pedidos e é dali que saem as entregas.
	* orders: Este dataset possui informações sobre as vendas processadas através da plataforma do Delivery Center.
	* payments: Este dataset possui informações sobre os pagamentos realizados ao Delivery Center.
	* stores: Este dataset possui informações sobre os lojistas. Eles utilizam a Plataforma do Delivery Center para vender seus itens (good e/ou food) nos marketplaces.

Fonte: [Kaggle - Delivery Center: Food & Goods orders in Brazil](https://www.kaggle.com/datasets/nosbielcs/brazilian-delivery-center)

![MER](https://github.com/aluipio/ds_ada_santander_db/blob/main/MER/diagram-export.png)


## **3. LIMITAÇÕES:**

Uso apenas de ferramentas trabalhadas na ementa do curso Santander Coders - ADA Tech. 
	
	* SqlAlchemy;
	* Pandas;
	* Psycopg2;
	* PostgreSQL;


## **4. REFERÊNCIAS BIBLIOGRÁFICAS:**

Bruce, P., & Bruce, A. (2019). Estatística prática para cientistas de dados: 50 conceitos essenciais. Alta Books.

Fávero, L. P., Lopes E, B., & Prado, P. (2017). Manual de análise de dados: estatística e modelagem multivariada com Excel, SPSS e Stata. Elsevier.

Kaggle: Your machine learning and data science community. (n.d.). Kaggle.com. Acesso em 10 Mar 2024 de https://www.kaggle.com.

Eraser. Documents & diagrams for engineering teams. Acesso em 13 Mar 2024 de https://app.eraser.io.


----

## **Links úteis:**

- [ADA Tech](https://ada.tech/)
- [Banco Santander - Academy](https://app.santanderopenacademy.com/pt-BR/program/bolsas-santander-santander-coders-2023-2-edicao)
- [Python](https://www.python.org)
- [Eraser](https://app.eraser.io)
