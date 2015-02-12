Feature: Knight fight tavern

Background:
	Given I am on ""
	* choose option "server" with "Server 2 (recomendado)"
	* click on "Login direto" Text
	* click on "Login via portal moonID" Text
	* fill form entry "id_username" with "RicardoBaumann"
	* fill form entry "password" with "01081951"
	* click on "Login" Button

Scenario: Do the fights
	* loop on tavern