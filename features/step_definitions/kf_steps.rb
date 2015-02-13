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

Given /^atack the character$/ do
  characters = ["472003276",
	" 472003250 ", 
	" 472003238 ",
	" 472003199 ",
	" 472003191 ",
	" 472006640 ",
	" 472004593 ",
	" 472000165 ",
	" 472001747 ",
	" 472003733 ",
	" 472002864 ",
	" 472003210 ",
	" 472003675 ",
	" 472000652 ",
	" 472008335 ",
	" 472001744 ",
	" 472001364 ",
	" 472000538 ",
	" 472007358 ",
	" 472004416 ",
	" 472007844 ",
	" 472007696 ",
	" 472000515 ",
	" 472007282 ",
	" 472001965 ",
	" 472004814 ",
	" 472001424 "]

	characters.each do |id|

		begin
			steps %{
				Given I am on "http://br2.knightfight.moonid.net/index.php?ac=showuser&showuserid=#{id.strip! || id}"
				* Wait for "15" seconds
				* click on img with src like "img/lang/br/btn_angriff.jpg"
				* Wait for "15" seconds
				* click on input with src like "img/lang/br/btn_angriff.jpg"
				* Wait for "1000" seconds
			}
		rescue => e
			Kernel.puts e.message
			next
		end

	end
end
