# language:pt
  
Funcionalidade: Localizar Cep
  
  Cenário: Buscar CEP válido
  Quando eu informar o cep "13010111"
  Entao a aplicação retornará o endereço:
      | CEP      | tipo_de_logradouro | logradouro     | bairro         | cidade    | estado | 
      | 13010111 | Rua                | General Osóario| Centro         | Campinas  | SP     | 
  
  Cenário: Buscar CEP inválido
  Quando eu informar o cep "01234567"
  Então a aplicação retornará o código de resposta: "404"
