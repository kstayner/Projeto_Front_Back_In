# Projeto de teste frontend e backend usando Cucumber/Ruby/Capybara/HTTParty/SitePrism.

## Dependências
* RVM
* Ruby 2.4.1
* Google Chrome
* ChromeDriver

## Instrução de instalação

        * install rvm
        * Veja instrução de instalação (https://rvm.io/rvm/install)
        * Instalar o bundler
                $ gem install bundler

        * Projeto
                $ git clone https://github.com/kstayner/Projeto_Front_Back_In.git
                $ bundle install

##TAGS

* @front para executar todos os cenários de frontend
* @service para executar todos os cenários de backend
* @get_all_movies para executar o cenário de back end que exibe o titulo de todos os filmes
* @wrong_endpoint para executar o cenário de back end que faz um segundo get para um endpoint inexistente
* @get_george_lucas_rick_mcCallum  para executar o cenário de back end para exibir todos os títulos que sejam do diretor George Lucas e que o produtor Rick McCallum tenha participado


## Exemplo:

	$ cucumber --tag @front
