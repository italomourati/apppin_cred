namespace :dev do

  DEFAULT_PASSWORD = '@pincred2020'

  desc "Configurando.............. Ambiente ........."
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando Banco de Dados") { %x(rails db:drop) }
      show_spinner("Criando Banco de Dados") { %x(rails db:create) }
      show_spinner("Migrando Banco de Dados") { %x(rails db:migrate) }
    end
      show_spinner("Cadastrando o USER....") { %x(rails dev:add_default_user) }
      show_spinner("Cadastrando os PRODUTOS....") { %x(rails dev:add_default_product) }
      show_spinner("Cadastrando os QUEM SOMOS....") { %x(rails dev:add_default_who) }
      show_spinner("Cadastrando o RODAPÉ....") { %x(rails dev:add_default_footer) }
      #show_spinner("Cadastrando o IMAGEMS....") { %x(rails dev:add_default_image) }
    #else
     # puts "Voce esta em Ambiente de Desenvolvimento"
    #end
  end
 
  desc "Cadastrando Usuário Padrão ! Aguarde ... "
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com.br',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc "Cadastrando PRODUTOS ! Aguarde ... "
  task add_default_product: :environment do
    UsersOffice::Product.create!(
      title: 'CDC',
      subtitle: 'Financie suas compras nas lojas Pintos com as melhores condições do mercado. Aproveite Taxas e prazos para caberem no seu bolso. Impossível não Financiar.'
    )
    UsersOffice::Product.create!(
      title: 'CRÉDITO CONSIGNADO',
      subtitle: 'Empréstimo consignado em folha com as menores taxas do mercado e os melhores prazos para pagar.'
    )
    UsersOffice::Product.create!(
      title: 'CRÉDITO PESSOAL',
      subtitle: 'Reorganizar as financas, reformar a casa ou fazer aquela viagem do sonhos? Podemos te ajudar ! Crédito certo com as melhores taxas e prazo esticado!,'
    )
  end

  desc "Cadastrando QUEM SOMOS ! Aguarde ... "
  task add_default_who: :environment do
    UsersOffice::Who.create!(
      title: 'INSTITUCIONAL',
      subtitle: 'Fundada em 2019 a Pincred é a primeira empresa de crédito, financiamento e investimento originária do Estado do Piauí. Pertencente ao Grupo Pintos carrega em si a história, tradição e credibilidade que marcaram os mais de 60 anos de respeito e comprometimento na relação com o cliente. A Pincred propõe-se a manter os mesmos principios éticos e valores do Grupo Pintos, alem da busca constante em otimizar e ampliar serviços oferecidos aos seus clientes, com foco na sua satisfação, primando pela qualidade de serviços e zelando também pela responsabilidade socioeconômica na região em que estiver presente.'
    )
    UsersOffice::Who.create!(
      title: 'MISSÃO',
      subtitle: 'Transformar a vida de nossos clientes através da nossa plataforma financeira.'
    )
    UsersOffice::Who.create!(
      title: 'VISÃO',
      subtitle: 'Ser reconhecida pelos nossos clientes como a melhor empresa de crédito, financiamento e investimento. Crescer como nosso estado e contribuir para o fortalecimento de sua economia.'
    )
    UsersOffice::Who.create!(
      title: 'VALORES',
      subtitle: 'Ética - Simplesmente indiscutível! Pessoas, Compromisso e Performace. Difusão da Educação Financeira. Inovação com foco na transformação em resultados. Respeito e transparência com os clientes, funcionários e a sociedade. Responsabilidade Socioambiental.'
    )
  end

  desc "Cadastrando o RODAPÉ ! Aguarde ... "
  task add_default_footer: :environment do
    UsersOffice::Footer.create!(
      title: 'PINTOS S.A - Crédito Financiamento e Investimento',
      subtitle: 'Rua 13 de Maio, 154 - Centro - 64.000-150 / Teresina-PI',
      phone_one: '(86) XXXX-XXXX',
      phone_two: '0800-XXX-XXXX',
      email: 'xxxxxx@xxxxxx.com.br'
    )    
  end

  #desc "Cadastrando as IMAGEMS ! Aguarde ... "
  #task add_default_image: :environment do
  #  UsersOffice::Image.create!(
  #    title: 'TEM UM SONHO?',
  #    subtitle: 'A GENTE TE AJUDA A CONQUISTÁ-LO!',
  #    content_one: 'CRÉDITO CERTO',
  #    content_two: 'RÁPIDO',
  #    content: 'AS MELHORES TAXAS',
  #    avatar: 'app/assets/images/banner_head.jpg'
  #  )  
  #  UsersOffice::Image.create!(
  #    title: '2',
  #    subtitle: '2',
  #    content_one: '2',
  #    content_two: '2',
  #    content: '2',
  #    avatar: 'app/assets/images/informacoes.jpg'
  #  )  
  #  UsersOffice::Image.create!(
  #    title: '3',
  #    subtitle: '3',
  #    content_one: '3',
  #    content_two: '3',
  #    content: '3',
  #    avatar: 'app/assets/images/contato.jpg'
  #  )      
  #end

  private

  def show_spinner(msg_start,msg_end = "Concluido! Success")
    spinner = TTY::Spinner.new("[:spinner] #{ msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end  

end


