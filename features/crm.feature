Feature: CRM

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
* click on id "deactivatePermissions"
* click on "Sim" Button if exists
* click on id "activatePermissions"
* click on id "deactivateAggregate"
* click on "Sim" Button if exists
* click on id "activateAggregate"
* click on id "deactivateAggregatePermissions"
* click on "Sim" Button if exists
* click on id "activateAggregatePermissions"
* click on id "deactivateFileUpload"
* click on "Sim" Button if exists
* click on id "activateFileUpload"
* click on id "deactivateFTP"
* click on "Sim" Button if exists
* click on id "activateFTP"
* click on id "deactivatePredictiveClean"
* click on "Sim" Button if exists
* click on id "activatePredictiveClean"
* click on id "deactivateArqRetFormCompl"
* click on "Sim" Button if exists
* click on id "activateArqRetFormCompl"
* click on id "deactivateAggregateLimit"
* click on "Sim" Button if exists
* click on id "activateAggregateLimit"
* click on id "deactivateArqRetFormCompl"
* click on "Sim" Button if exists
* click on id "activateArqRetFormCompl"
* click on "Sair" Text if exists


