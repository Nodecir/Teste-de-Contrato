Feature: Teste de Contrato
Como um cliente da API
Eu quero quero realizar as requisições nos métodos
A fim de manipular as informações do cadastro

Background: Rota do Micro serviço

Given a rota da API para casos de Covid-19

Scenario Outline: Validar Contrato
    When realizar uma requisicao usando o metodo POST
    Then a API ira retornar os dados do cadastro respondendo o codigo 201

    And a mensagem "Created"
  
