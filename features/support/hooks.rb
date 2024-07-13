Before do
	@pagina = PageObjects.new  
	@var_global = Variaveis.new
	visit('')  
	page.driver.browser.manage.window.maximize
end

# Link Report Browser:
# file:///C:/Users/andre.nascimento/OneDrive%20-%20Inmetrics/%C3%81rea%20de%20Trabalho/Teste%20Desafio%20In%20Metrics/Desafio-01/report/report.html
