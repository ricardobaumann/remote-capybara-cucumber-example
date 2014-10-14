Feature: CRM

Scenario: Creating account on crm

Given I am on "http://tst-sms-crm1.ci.zenvia360.com/crm/"
* fill form entry "j_username" with "naila.tavora"
* fill form entry "j_password" with "123"
* click on input with src like "ok.png"
* fill form entry "conta" with "engage.qa"
* click on "Buscar" Button
* click on "Human Mobile" Text
* click on "td" element with text "Contas"
* Wait for "30" seconds
* click on "(Criar conta)" Text
* fill form entry "alias" with "aliascapybara2"
* fill form entry "name" with "namecapybara2"
* choose option "pagamento" with "Pós-paga"
* choose option "contratoId" with "H00140A-07"
* fill form entry "gatewayPassword" with "123"
* fill form entry "reportPassword" with "123"
* check "reportOperadora"
* click on "Salvar" Button
Then I should see the text "existe"
* Wait for "30" seconds
* click on "Fechar" Button
* click on "Sair" Text

Given I am on "http://tst-sms-connect.ci.zenvia360.com/system/"
* fill form entry "account" with "aliascapybara2"
* fill form entry "username" with "naila.tavora@zenvia.com.br"
* fill form entry "password" with "123"
* click on "Entrar" Button
* Wait for "15" seconds
* click on "Administração" Text
* click on "Gerenciar Usuários" Text
* click on "Novo Usuário" Button
* fill form entry "name" with "alias_capybara"
* fill form entry "email" with "alias_capybara@zenvia.com"
* fill form entry "password" with "123"
* fill form entry "confirmPassword" with "123"
* choose option "status" with "Ativo"
* click on "Salvar" Button
* Wait for "10" seconds
* click on "Configuração" Text
* click on "Configurar Conta" Text
* choose option "managerUserId" with "alias_capybara"
* click on id "saveManager"
* click on id "activatePermissions"
* click on id "activateAggregate"
* click on id "activateAggregatePermissions"
* click on id "activateFileUpload"
* click on id "activateFTP"
* click on id "activatePredictiveClean"
* click on id "activateArqRetFormCompl"
* click on id "activateAggregateLimit"
* click on id "activateArqRetFormCompl"
* click on "Sair" Text

