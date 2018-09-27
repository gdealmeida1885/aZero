# login.feature - cadastro.feature
Então('sou autenticado com sucesso') do
  @nav = Nav.new
  expect(@nav.menu_usuario.text).to eql @usuario[:nome]
end
