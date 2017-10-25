Given("visito la pagina de inicio") do
  visit ('/')
end

Then /^deberia presentarse con "(.*)"$/ do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

When /^presiono el boton "(.*)"$/ do |boton|
  click_button(boton)
end

Then /^deberia ver el mensaje "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end