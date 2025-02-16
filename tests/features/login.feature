Feature: Funcionalidade Login  
  Como um usuário
  Eu quero logar na aplicação
  Para que eu possa acessar meu dashboard

  Scenario: Login com sucesso
    Given Eu navego para a pagina de login
    When Eu entro com credenciais válidas
    Then Eu devo ver o dashboard
