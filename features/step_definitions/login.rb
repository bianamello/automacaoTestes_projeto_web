Dado("que eu seja um usuário cadastrado:") do |table|
    @users = table.rows_hash
end
  
Quando("eu efetuo login no site") do
    @header.go_login_page
    @login.login(@users['email'], @users['password'])
end
  
Então("devo ser autenticado com sucesso") do
    expect(@header.user_name.text).to eql @users['name']
    screenshot(nome_cenario = 'Login_efetuado')
    @header.logout
end