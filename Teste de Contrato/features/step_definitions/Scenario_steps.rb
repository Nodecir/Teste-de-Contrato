Given ("a rota da API para casos de Covid-19") do
end

When('realizar uma requisicao usando o metodo POST') do
 
response = HTTParty.get('https://disease.sh/v3/covid-19/countries/brazil')
puts response.body, response.code, response.message, response.headers.inspect

end

Then('a API ira retornar os dados do cadastro respondendo o codigo {int}') do |int|
 #   expect(response.code).to eq(int)
 #   expect(Json.parse(response.body)).to include('_id', 'country', 'population')
    puts "Status Code :#{response.code}"
    puts "ID :#{response['_id']}"
    puts "País :#{response['country']}"
    puts "População :#{response['population']}"
    
    #expect(response.body).to match_json_schema('bank')
end

Then("a mensagem {string}") do |string|
    expect(response.message).to eq(string)
    puts "Mensagem: #{response.message}" 
end