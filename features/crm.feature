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
* fill form entry "alias" with "alias_capybara2"
* fill form entry "name" with "name_capybara2"
* choose option "pagamento"  with "Pós-paga"
* choose option "contratoId"  with "H00140A-07"
* fill form entry "gatewayPassword" with "123"
* fill form entry "reportPassword" with "123"
* check "reportOperadora"
* click on "Salvar" Button
Then I should see the text "existe"
* Wait for "30" seconds
* click on "Fechar" Button
* click on "Sair" Text
