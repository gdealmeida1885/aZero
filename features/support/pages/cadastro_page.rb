class CadastroPage
  include Capybara::DSL
  
  def acessar_pagina_cadastro
    visit '/cadastre-se'
  end

  def preenche_dados_usuario(usuario)
    within(".form-center") do
      find("#fullName").set usuario[:nome]
      find("#email").set usuario[:email]
      find("#password").set usuario[:senha]
    end
  end

  def clica_criar
    click_button "Cadastrar"
  end

  def alerta
    find('.alert')
  end

end