Given("visito la pagina de inicio") do
  visit('/')
end

Then /^deberia saludar con "(.*)"$/ do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

When /^escribo el nombre "(.*)" en el campo "(.*)"$/ do |nombre, valor|
  fill_in(valor, :with => nombre)
end

When /^presiono el boton "(.*)"$/ do |boton|
  click_button(boton)
end

Then /^deberia el mensaje "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When /^escribo la edad "(.*)" en el campo "(.*)"$/ do |edad, valor|
  fill_in(valor, :with => edad)
end