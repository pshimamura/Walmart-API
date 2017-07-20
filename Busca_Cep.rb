Quando(/^eu informar o cep "([^"]*)"$/) do |cep|
  @result = Correios.get("http://correiosapi.apphb.com/cep/#{cep}")
end

Entao(/^a aplicação retornará o endereço:$/) do |table|
  expect(@result.parsed_response['cep']).to eq table.hashes[0]['CEP']
  expect(@result.parsed_response['tipoDeLogradouro']).to eq table.hashes[0]['tipo_de_logradouro']
  expect(@result.parsed_response['logradouro']).to eq table.hashes[0]['logradouro']
  expect(@result.parsed_response['bairro']).to eq table.hashes[0]['bairro']
  expect(@result.parsed_response['cidade']).to eq table.hashes[0]['cidade']
  expect(@result.parsed_response['estado']).to eq table.hashes[0]['estado']
end

Então(/^a aplicação retornará o código de resposta: "([^"]*)"$/) do |code|
  expect(@result.response.code).to eq code
end
