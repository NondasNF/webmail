# About the project

Um app de mensagens bem semelhante a um serviçõ de email, o usuário após se cadastrar pode ver seu emails, 
enviar mensagens para outros usuários, reponder e apagar mensagens.
Foi desenvolvido em Ruby, utilizei gems que facilitaram o desenvolvimento como Rails, Devise, Bootstrap, e o heroku como servidor de deploy.(https://rails-webmail.herokuapp.com/)

## My opinion:

__Hours spent developing and reading articles related to the project: 8__

Achei muito interessante o desenvolvimento do projeto, aprendi bastante sobre Ruby e sobre aplicações seguindo o modelo REST

# Dependencies

Ruby v"3.0.0" 

Rails v"6.1.5"

# Installation
Instale o RVM para poder instalar o Ruby:
~~~
curl -sSL https://get.rvm.io | bash -s stable
~~~
Instale o Ruby com o comando a seguir:
~~~
rvm install ruby-3.0.0
~~~
Instale agora o Rails
~~~
curl -L https://get.rvm.io | bash -s stable --rails
~~~
Instale as demais dependências:
~~~
$ bundle install
~~~
Configure o banco de dados agora:
~~~
$ rails db:migrate
~~~
Finalmente execute o servidor:
~~~
$ rails s
~~~
# Configuration
Ao acessar através do seu navegado no endereço http://localhost:3000, você verá a tela de login, para primeiro acesso será necessario se cadastrar, selecione a opção "Sign up" e preencha os campos com seus dados, não é necessário um e-mail válido, apeas siga os padrões(ex:email@email.com) e uma senha de 6 ou mais dígitos.

Após se cadastrar você agora pode acessa a sua caixa de entrada do email, inbox, através dela poderá ver os emails que chegarem para você e enviar mensagens para outros usuários cadastrados

Para enviar mensagens selecione a Opção "New E-mail" e preencha os campos com o destinatário, assunto e a mensagem, para enviar a mensagem selecione a opção "Send E-mail"
É possivel tanto enviar email para si mesmo como criar uma outra conta e enviar emails para essa outra

