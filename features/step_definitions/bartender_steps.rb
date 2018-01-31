Dado('que acessei o totem do bartenter') do
  visit '/'
end

Quando('informo meu nome {string} e idade {string} anos') do |nome, idade|
  fill_in 'nome', with: nome
  fill_in 'idade', with: idade

  click_on 'Enviar'
end

Então('devo ver a mensagem {string}') do |mensagem|
  res = find('.resultado h3')
  expect(res.text).to eql mensagem
end
