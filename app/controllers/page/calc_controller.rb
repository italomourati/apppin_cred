class Page::CalcController < PageController
  require "uri"
  require "net/http"
  require "base64"

  def index 

    @users_office_footers = UsersOffice::Footer.all
     
    url = URI("https://officer.softsaaspin.com.br/BJ21M05/user")
      
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
      
    request = Net::HTTP::Get.new(url)
    request.basic_auth("pincred","Daniel@2020")
      
    response_one = https.request(request)
      
    @cookies = response_one.response['set-cookie']
    @content_type = response_one["content-type"]
    @cookie = response_one.response['set-cookie']

    puts response_one.code
     response_one["auth"]
     response_one["content-type"]
     response_one.response['set-cookie']
    puts response_one.read_body
    
    puts "MEU AUTH"
    #puts "#{"Bearer"' '+ @auth }"
    puts "meu content"
    #puts @content_type
    puts "cokkies"
    #puts @cookie 
    
    flash[:alert] = 'Iniciando a conexão ... Status : OK'
    #segundo_ponto(response_one,cookies,nome,email,cpf,telefone,valor,taxa,meses) cade aqui de onde vem o nome email cpf ??

    if params[:commit].to_s == "Calcular"
      #puts "enviando valores"
      segundo_ponto(response_one,cookies,params[:nome].try(:upcase),params[:email].try(:upcase),
                    params[:cpf],params[:telefone],params[:valor],params[:date],params[:meses])
    else
      flash[:alert] = "Iniciando a conexão ... Status : OK"
    end 
    

  end

    def segundo_ponto(response_one,cookies,nome,email,cpf,telefone,valor,date,meses)
  
      puts "Fazendo os calculos da proposta"
      flash[:alert] = 'Dados da Proposta...Validada com sucesso, confira os dados !'
      url = URI("https://officer.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501C/calcProsp")

      https = Net::HTTP.new(url.host, url.port);
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["XSRF-TOKEN"] = "#{cookies}"
      request["Content-Type"] = "#{response_one["content-type"]} "
      request["Authorization"] = "#{"Bearer"' '+response_one["auth"]}"
      request.body = "{
         \n\"nmLogin\":\"pincred\",
         \n\"nrInst\":\"1368\",
         \n\"nrAgen\":\"19\",
         \n\"nrCPF\":\"#{cpf.to_s}\",
         \n\"cdProd\":\"3018\",
         \n\"idCarCtr\":\"30\",
         \n\"vlContra\":#{valor.gsub('.','').gsub(',','.').to_f},
         \n\"txJuros\":\"1.50\",
         \n\"qtPrest\":#{meses.to_i},
         \n\"dtContra\":\"#{date.to_date.strftime("%Y%m%d")}\",
         \n\"dtVct1Ap\":\"\",
         \n\"idRefin\":\"N\"\n}"

      response = https.request(request)
      puts response.read_body

      @month = meses.to_i
      # Aqui os valores que vao na INDEX

      @result_segundo_ponto_liquido = JSON.parse(response.read_body)["calculo"]["vlLiquid"]
      @result_segundo_ponto_presta = JSON.parse(response.read_body)["calculo"]["vlPresta"]
      @result_segundo_ponto_iof = JSON.parse(response.read_body)["calculo"]["vlIof"]
      @result_segundo_ponto_tac = JSON.parse(response.read_body)["calculo"]["vlTac"]
      @result_segundo_ponto_vloutvlr = JSON.parse(response.read_body)["calculo"]["vlOutvlr"]
      @result_segundo_ponto_contra = JSON.parse(response.read_body)["calculo"]["vlContra"]
      @result_segundo_ponto_seguro = JSON.parse(response.read_body)["calculo"]["vlSeguro"]
      @result_segundo_ponto_dtvct1ap = JSON.parse(response.read_body)["calculo"]["dtVct1ap"]
       if @result_segundo_ponto_dtvct1ap == true
        @result_segundo_ponto_dtvct1ap
         puts @result_segundo_ponto_dtvct1ap
       end
      @result_segundo_ponto_dtvctult = JSON.parse(response.read_body)["calculo"]["dtVctult"]
      @result_segundo_ponto_txam = JSON.parse(response.read_body)["calculo"]["txAm"]
      @result_segundo_ponto_txaa = JSON.parse(response.read_body)["calculo"]["txAa"]
      @result_segundo_ponto_txcetam = JSON.parse(response.read_body)["calculo"]["txCetAm"]
      @result_segundo_ponto_txcetaa = JSON.parse(response.read_body)["calculo"]["txCetAa"]
   
     

      puts JSON.parse(response.read_body)["calculo"]["vlLiquid"] 
      puts JSON.parse(response.read_body)["calculo"]["vlPresta"]
      puts JSON.parse(response.read_body)["calculo"]["vlIof"]
      puts JSON.parse(response.read_body)["calculo"]["vlTac"]
      puts JSON.parse(response.read_body)["calculo"]["vlOutvlr"]
      puts JSON.parse(response.read_body)["calculo"]["vlContra"]
      puts JSON.parse(response.read_body)["calculo"]["vlSeguro"]
      puts JSON.parse(response.read_body)["calculo"]["dtVct1ap"]
      puts JSON.parse(response.read_body)["calculo"]["dtVctult"]
      puts JSON.parse(response.read_body)["calculo"]["txAm"]
      puts JSON.parse(response.read_body)["calculo"]["txAa"]
      puts JSON.parse(response.read_body)["calculo"]["txCetAm"]
      puts JSON.parse(response.read_body)["calculo"]["txCetAa"]

    # Valores que vao no terceiro ponto

      result_segundo_ponto_liquido = JSON.parse(response.read_body)["calculo"]["vlLiquid"]
      result_segundo_ponto_presta = JSON.parse(response.read_body)["calculo"]["vlPresta"]
      result_segundo_ponto_iof = JSON.parse(response.read_body)["calculo"]["vlIof"]
      result_segundo_ponto_tac = JSON.parse(response.read_body)["calculo"]["vlTac"]
      result_segundo_ponto_vloutvlr = JSON.parse(response.read_body)["calculo"]["vlOutvlr"]
      result_segundo_ponto_contra = JSON.parse(response.read_body)["calculo"]["vlContra"]
      result_segundo_ponto_seguro = JSON.parse(response.read_body)["calculo"]["vlSeguro"]
      result_segundo_ponto_dtvct1ap = JSON.parse(response.read_body)["calculo"]["dtVct1ap"]
      result_segundo_ponto_dtvctult = JSON.parse(response.read_body)["calculo"]["dtVctult"]
      result_segundo_ponto_txam = JSON.parse(response.read_body)["calculo"]["txAm"]
      result_segundo_ponto_txaa = JSON.parse(response.read_body)["calculo"]["txAa"]
      result_segundo_ponto_txcetam = JSON.parse(response.read_body)["calculo"]["txCetAm"]
      result_segundo_ponto_txcetaa = JSON.parse(response.read_body)["calculo"]["txCetAa"]
      
    
        enviar(response_one,response,nome,email,cpf,telefone,valor,date,meses,result_segundo_ponto_dtvct1ap,result_segundo_ponto_dtvctult,result_segundo_ponto_contra,result_segundo_ponto_presta,result_segundo_ponto_iof,result_segundo_ponto_liquido,result_segundo_ponto_txaa,result_segundo_ponto_txam,result_segundo_ponto_txcetam,result_segundo_ponto_txcetaa)
    
    end
   
    def enviar(response_one,response,nome,email,cpf,telefone,valor,date,meses,result_segundo_ponto_dtvct1ap,result_segundo_ponto_dtvctult,result_segundo_ponto_contra,result_segundo_ponto_presta,result_segundo_ponto_iof,result_segundo_ponto_liquido,result_segundo_ponto_txaa,result_segundo_ponto_txam,result_segundo_ponto_txcetam,result_segundo_ponto_txcetaa)
       
     puts "Salvando a Proposta"

     #params[:commit].to_s == "Solicite seu Empréstimo"
      #puts "enviando valores"
      #terceiro_ponto(response_one,response,nome,email,cpf,telefone,valor,date,meses,result_segundo_ponto_dtvct1ap,result_segundo_ponto_dtvctult,result_segundo_ponto_contra,result_segundo_ponto_presta,result_segundo_ponto_iof,result_segundo_ponto_liquido,result_segundo_ponto_txaa,result_segundo_ponto_txam,result_segundo_ponto_txcetam,result_segundo_ponto_txcetaa)
     #else
      #flash[:alert] = "Proposta Enviada com Sucesso ! "
    
    url = URI("https://officer.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501H/cadastrarProposta")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

     request = Net::HTTP::Post.new(url)
     request["XSRF-TOKEN"] = "#{cookies}"
     request["Content-Type"] = "#{response_one["content-type"]} "
     request["Authorization"] = "#{"Bearer"' '+response_one["auth"]}"
     request.body = "{
      \n\"principal\": {\n\"cdProdut\": \"3018\",
      \n\"cdConven\":\"108\",
      \n\"cdLoja\":\"108\",
      \n\"nrCpfCnpj\": \"#{cpf.to_s}\",
      \n\"qtPresta\": \"#{meses.to_i}\",
      \n\"qtMescar\": \"0\",
      \n\"dtContra\": \"#{date.to_date.strftime("%Y%m%d")}\",
      \n\"dtVct1ap\": \"#{result_segundo_ponto_dtvct1ap}\",
      \n\"dtVctult\": \"#{result_segundo_ponto_dtvctult}\",
      \n\"vlContra\": \"#{result_segundo_ponto_contra}\",
      \n\"vlPresta\": \"#{result_segundo_ponto_presta}\",
      \n\"vlIofCob\": \"#{result_segundo_ponto_iof}\",
      \n\"vlConces\": \"0.00\",
      \n\"vlSeguro\": \"0\",
      \n\"vlOutvlr\": \"0\",
      \n\"vlTotal\":  \"#{result_segundo_ponto_liquido}\",
      \n\"vlLiquid\": \"#{result_segundo_ponto_liquido}\",
      \n\"txFinano\": \"#{result_segundo_ponto_txaa}\",
      \n\"txRefCdc\": \"#{result_segundo_ponto_txam}\",
      \n\"idCarctr\": \"30\",
      \n\"txCetMes\": \"#{result_segundo_ponto_txcetam}\",
      \n\"txCetAno\": \"#{result_segundo_ponto_txcetaa}\",
      \n\"cdCvcons\": \"1000108\"\n},
      \n\"fichaCadastralCliente\": {
        \n\"cliente\": {
           \n\"dsNome\": \"#{nome.to_s}\",
           \n\"nrCpfCnpj\": \"#{cpf.to_s}\",
           \n\"dsEmail\": \"#{email.to_s}\",
           \n\"nrDDDCel\": \"86\",
           \n\"nrCel\": \"#{telefone.to_s}\",
           \n\"cdAutscr\": \"N\",
           \n\n\"dadosProfissionais\": {
             \n\"dsEmpres\": \"Pintos LTDA\",
             \n\"nrCpfCnpj\": \"06837645000160\"\n}\n}\n}\n}\n"
            
     response = https.request(request)
     puts response.read_body
     puts JSON.parse(response.read_body)["status"]
     puts JSON.parse(response.read_body)["globalMessage"]


     puts @status = JSON.parse(response.read_body)["status"]
     puts @status_message = JSON.parse(response.read_body)["globalMessage"]
     puts @status_two = JSON.parse(response.read_body)["messages"][0]["message"]
     nr_contrato = JSON.parse(response.read_body)["messages"][0]["message"]
     
     puts "MEU CONTRATO.."
     puts '+++++++++++++++++++++++++++'
     #puts @nr_contrato = nr_contrato 
     puts "###########################"
     
     puts "minha acao de enviar --> "
    
     if params[:commit].to_s == "Enviar"
      #puts @nr_contrato = nr_contrato.detect 
      #puts "enviando valores"    
      reenviar(response_one,cookies,nr_contrato,params[:nr_contrato]) 
      puts @nr_contrato = nr_contrato.detect 
    else
      flash[:alert] = "Passo seguinte ---> Confirme o numero da proposta para enviar.! ) "
      puts "DADOS NAO COLETADOS, #{@nr_contrato}"
    end 
    
    
  
    end
   
   def reenviar 

    puts "MEU CONTRATO.."
    puts '+++++++++++++++++++++++++++'
    puts @nr_contrato
    puts "###########################"

    url = URI("https://officer.softsaaspin.com.br/BJ21M05/user")
      
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
      
    request = Net::HTTP::Get.new(url)
    request.basic_auth("pincred","Daniel@2020")
      
    response_one = https.request(request)
      
    cookies = response_one['set-cookie']
    content_type = response_one["content-type"]

    puts response_one.code
    puts response_one["auth"]
    puts response_one["content-type"]
    puts response_one.response['set-cookie']
    puts response_one.read_body

    nr_contrato = params[:nr_contrato]
    descricao = params[:descricao] 
    detalhe = params[:detalhe] 
    doc = params[:doc]
  
    #doc = open("tmp/file.pdf")

    doc = Base64.encode64("#{doc.to_s}")

    doc = Base64.encode64(doc)
    

    puts "MINHA BASE 64"
    puts "+++++++++++++++++++++++++++"
    puts "#{doc}"
    puts "###########################"


    #@doc = doc

    
    url = URI("https://officer.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501A/incluirAnexo")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    
    request = Net::HTTP::Post.new(url)
    #request["XSRF-TOKEN"] = "#{cookies}"
    request["Content-Type"] = "#{response_one["content-type"]} "
    request["Authorization"] = "#{"Bearer"' '+response_one["auth"]}"
   
    request.body = "{
      \n\"nrProsp\": \"#{nr_contrato}\",
      \n\"dsAnexo\": \"#{descricao}\",
      \n\"nmArq\": \"#{detalhe}\",
      \n\"imAnexo\": \"#{doc}\",
      \n\"idCCB\": \"N\"\n}"
    
    response = https.request(request)
    puts response.read_body

    puts "================================="
     puts "AQUI....#{nr_contrato.to_s}"
     puts response.code
     puts "#{"Bearer"' '+response_one["auth"]}"
     puts "#{cookies}"
     puts response_one["content-type"]
     puts response_one['set-cookie']
     puts response_one["XSRF-TOKEN"]
    puts "+++++++++++++++++++++++++++++++++"

    redirect_to "/simulador-de-consignado" , notice: 'Simulação, concluida com sucesso ! Prazo para retorno de 48 a 72 horas!'

   end
    
end
