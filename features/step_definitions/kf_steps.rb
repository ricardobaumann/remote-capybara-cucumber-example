# encoding: iso-8859-1
# language: pt-BR
Given /^loop on missions$/ do
	12.times do
		steps %{
			* click on "Missão" Text
			* choose option "gesinnung" with "Cavaleiro das sombras em missão de saque"
			* click on input with src like "img/lang/br/btn_weiter.jpg"
			* Wait for "660" seconds
	  	}		
	end
end

Given /^loop on fights$/ do
	begin
		1000.times do
		steps %{
			* click on "Missão" Text
			* Wait for "15" seconds
			* click on input with src like "img/lang/br/btn_weiter.jpg"
			* Wait for "15" seconds
			* click on "Ataque" Text
			* Wait for "15" seconds
			* click on "Missão" Text
			* Wait for "360" seconds
			
	  	}		
	end
	rescue
		sleep 60
		retry
	end
end

Given /^loop on tavern$/ do
	begin
		24.times do
			click_on "Taverna"	
			sleep 15	
			click_on "1 - 3 Horas"
			sleep 15
			Kernel.puts "passou horas"
			find(:xpath, "//img[contains(@src,'img/lang/br/btn_annehmen.jpg')]").click
			sleep 3600
	end
	rescue => e
		Kernel.puts e.message
		sleep 60
		retry
	end
end