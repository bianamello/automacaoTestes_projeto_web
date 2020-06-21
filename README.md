## Projeto de automação de WEB

Projeto desenvolvido para testes de compra no site: http://www.automationpractice.com

**O projeto possui as seguintes Gems:**

- Capybara (capybara é uma ferramenta de teste de integração para Web)
- Cucumber (permite a escrita de testes em uma linguagem muito próxima da natural)
- Rspec (framework BDD para ruby)
- Selenium-webdriver (objetivo é imitar o comportamento de um usuário real em um site)
- Site_prism (implementa o padrão Page Object)

**O projeto possui as seguintes funcionalidades:**
- [x] Cenário de testes para login válido;
- [x] Cenário de testes para login inválido;
- [x] Desenvolvido no padrão page object
- [x] Possui relatório em formato html, com evidência dos testes (imagens) - Pasta reports
- [x] Configurado para rodar no Chrome


### Pré requisitos:

- Gerenciador de versões do Ruby;
- Ruby >= 2.6.1;
- Bundler;
- ChromeDriver

**Dicas:**

- [Rbenv] - O Rbenv fornece suporte para trabalhar com versões do Ruby. Comandos para instalação:
	- git clone https://github.com/rbenv/rbenv.git ~/.rbenv
	- echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
	- echo 'eval "$(rbenv init -)"' >> ~/.bashrc
	- source ~/.bashrc
	- type rbenv
	- git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

- [Ruby]
	- rbenv install -l
	- rbenv install 2.6.1
	- rbenv global 2.6.1
	Para verificar se deu tudo certo, digite o comando:
	- ruby -v

- [Bundler]
	- gem install bundler

- [Chrome_Driver] - Configurando navegador Chrome para rodar o testes:
	- Baixar no site: http://chromedriver.chromium.org/downloads. Selecione a versão compatível com o seu sistema;
	- Descompactar o arquivo;
	- Mover o arquivo descompactado para a seguinte pasta: 
		- Linux: "/usr/bin/" (utlilize o comando: sudo mv chromedriver /usr/bin/)
        - Windows: "C:/Windows"


### Executando os testes:

- No terminal, na pasta do projeto, execute o seguinte comando que irá instalar as Gems do projeto:
	- bundle install

- Para rodar todos os testes utilizando o profile de Produção, execute o seguinte comando na pasta do projeto:
	- bundle exec cucumber -p prod

- Para rodar cenários específicos utilize tags:
	- bundle exec cucumber -p prod -t @login_valido
    - bundle exec cucumber -p prod -t @login_invalido