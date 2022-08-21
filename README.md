#DIAGRAMA ER DE MODELAGEM FISICA PARA UM DATABASE DE UMA CLINICA
![Captura de Tela (361)](https://user-images.githubusercontent.com/58758617/185773259-04a8e722-124d-4380-9c62-159db903796d.png)



sAtividade 2 - Clique aqui para entregar
Atividade 2
Contexto
Após a primeira versão do projeto de banco de dados para o sistema hospitalar, notou-se a necessidade de expansão das funcionalidades, incluindo alguns requisitos essenciais a essa versão do software. As funcionalidades em questão são para o controle na internação de pacientes. Será necessário expandir o Modelo ER desenvolvido e montar o banco de dados, criando as tabelas para o início dos testes.
 
Atividade
Considere a seguinte descrição e o diagrama ER abaixo:
No hospital, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos. Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados. As internações precisam ser vinculadas a quartos, com a numeração e o tipo. Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).
Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).
A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.
O seguinte excerto de Diagrama ER modela esses novos requisitos:
![image](https://user-images.githubusercontent.com/58758617/185773207-a80731c3-dd40-4db7-880d-a649168b88d9.png)

Realize os seguintes passos:
•	Faça a ligação do diagrama acima ao diagrama desenvolvido na Atividade 1, construindo relacionamentos com entidades relacionadas.
•	Crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade 1 e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.
Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.  Utilize o MySQL Workbench para montar os scripts SQL.
 
Entrega
No espaço dedicado a entregas da atividade, envie o arquivo compactado (rar, zip ou 7z) com a imagem do diagrama completo e o(s) script(s) SQL com comandos de criação de banco de dados e tabelas.
 
Dica de leitura
Para esta atividade, recomendamos a leitura dos conteúdos:
•	Linguagem SQL
•	Definição de Dados
 
Avaliação
Nesta atividade, você deverá evidenciar os seguintes indicadores:
•	Configura sistema de gerenciamento de banco de dados relacional, conforme requisitos do sistema e tecnologia selecionada.
•	Programa comandos de criação de estruturas de banco de dados relacional, conforme comandos de definição de dados do SQL e requisitos do sistema.

