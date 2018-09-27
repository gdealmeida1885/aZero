require 'faker'

Dado('que estou na página de cadastro') do
  visit '/api/reset' #MEOW
  @cadastro = CadastroPage.new
  @cadastro.acessar_pagina_cadastro
end

Quando('faço o meu cadastro com') do |table|
  @usuario = table.rows_hash
  @cadastro.preenche_dados_usuario(@usuario)
  @cadastro.clica_criar
end

Então('devo ver a mensagem {string}') do |mensagem_alerta|
  expect(@cadastro.alerta).to have_content mensagem_alerta
end