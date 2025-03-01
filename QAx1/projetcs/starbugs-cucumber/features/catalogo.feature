#language: pt

Funcionalidade: Catalago de cafés
    como um usuario do site, eu quero ver o catagolo de cafes na pagina principal 
    Para que eu possa escolher e saber mais sobre os produtos disponiveis 

Cenario: Acessar o catalogo de café pagina principal

Quando acesso a pagina principal da starbugs 
Entao eu devo ver uma lista de cafes disponiveis


Cenario: Iniciar a compra de um café

    Dado que estou na página principal da starbugs
        E que desejo comprar o seguinte produto: 
        | name      | Expresso Gelado |
        | price     | R$ 9,99         |  
        | delivery  | R$ 10,00        |
    Quando inicio a compra desse item 
    Então Devo ver a página de Checkout com os detalhes do produto
    E o valor total da compra deve ser de "R$ 19,99"


Cenario: Café indisponivel

    Dado que estou na página principal da starbugs
        E que desejo comprar o seguinte produto: 
        | name      | Expresso Cremoso |
    Quando inicio a compra desse item 
    Então devo ver um popup informando que o produto esta indisponivel