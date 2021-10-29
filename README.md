# FBD-2021-2
scripts feito em sala de aula


**SENDO** um usuário que aluga temas de festas infantis
**POSSO** manter temas
**PARA QUE** tenha os temas cadastros com os itens de temas e defina os valores para alguél.

Critérios de Aceite
----
- deve definir uma lista de itens de tema. 
    - Exemplos itens: toalhas, castelo, bonecas de cinderelas, etc.
    - valor é obrigatório e não pode ser zero.
    - pode ter um percentual padrão de desconto.
    - O usuário não pode cadastrar um tema sem informa os itens. 
        - deve ter no mínimo 1 item na lista.

Observações
----
- 
Cenário 1 - tentar cadastrar tema sem item
----
**DADO QUE** usuário na tela de cad de tema já informado todos os atributos E não informaou um item 
**QUANDO** clicar no botão salvar 
**ENTÃO** o sistema não salva e dá a seguinte mensagem: "É necessário ter pelo menos 1 item na lista".



**DADO QUE** O usuário clicou em novo Aluguel de tema
**QUANDO** o sistema abrir a tela de novo aluguel
**ENTÃO** carrega todos os clientes apresenta em uma lista selecionável.
