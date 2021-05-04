class Page::CalcController < PageController
  require "uri"
  require "net/http"
  require "base64"
  require "brdinheiro"
  require "brdata"
  #before_action :verify_proposta, :action => [:enviar]

  def index 

    @users_office_footers = UsersOffice::Footer.all
     
    url = URI("https://officerhomol.softsaaspin.com.br/BJ21M05/user")
      
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
      
    request = Net::HTTP::Get.new(url)
    request.basic_auth("pincred","Daniel@2020")
      
    response_one = https.request(request)
    
    response_one.code
    session[:auth] = response_one["auth"]
    puts session[:auth]
    session[:content_type] = response_one["content-type"]
    session[:content_type]
    response_one.response['set-cookie']
    session[:set_cookies] = response_one['set-cookie']
    response_one.read_body
    

    if params[:commit].to_s == "Calcular"
      segundo_ponto(response_one,cookies,params[:nome].try(:upcase),params[:email].try(:upcase),
                    params[:cpf],params[:telefone],params[:valor],params[:date],params[:meses])
    end 
    

  end

  def segundo_ponto(response_one,cookies,nome,email,cpf,telefone,valor,date,meses)

    url = URI("https://officerhomol.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501C/calcProsp")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["XSRF-TOKEN"] = "#{cookies}"
    request["Content-Type"] = "#{response_one["content-type"]}"
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
    response.read_body

    @month = meses.to_i


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
      puts " meus valores #{session[:result_segundo_ponto_liquido] = JSON.parse(response.read_body)["calculo"]["vlLiquid"]}"
      puts " meus valores #{session[:result_segundo_ponto_presta] = JSON.parse(response.read_body)["calculo"]["vlPresta"]}"
      puts " meus valores #{session[:result_segundo_ponto_iof] = JSON.parse(response.read_body)["calculo"]["vlIof"]}"
      puts " meus valores #{session[:result_segundo_ponto_tac] = JSON.parse(response.read_body)["calculo"]["vlTac"]}"
      puts " meus valores #{session[:result_segundo_ponto_vloutvlr] = JSON.parse(response.read_body)["calculo"]["vlOutvlr"]}"
      puts " meus valores #{session[:result_segundo_ponto_contra] = JSON.parse(response.read_body)["calculo"]["vlContra"]}"
      puts " meus valores #{session[:result_segundo_ponto_seguro] = JSON.parse(response.read_body)["calculo"]["vlSeguro"]}"
      puts " meus valores #{session[:result_segundo_ponto_dtvct1ap] = JSON.parse(response.read_body)["calculo"]["dtVct1ap"]}"
      puts " meus valores #{session[:result_segundo_ponto_dtvctult] = JSON.parse(response.read_body)["calculo"]["dtVctult"]}"
      puts " meus valores #{session[:result_segundo_ponto_txam] = JSON.parse(response.read_body)["calculo"]["txAm"]}"
      puts " meus valores #{session[:result_segundo_ponto_txaa] = JSON.parse(response.read_body)["calculo"]["txAa"]}"
      puts " meus valores #{session[:result_segundo_ponto_txcetam] = JSON.parse(response.read_body)["calculo"]["txCetAm"]}"
      puts " meus valores #{session[:result_segundo_ponto_txcetaa] = JSON.parse(response.read_body)["calculo"]["txCetAa"]}"

      session[:cpf] = cpf.to_s
      session[:valor] = valor.gsub('.','').gsub(',','.').to_f
      session[:date] = date.to_date.strftime("%Y%m%d")
    
    flash[:alert] = "Simulação concluída com Sucesso...!"
  
  end 

  def enviar

    @dados = params[:dados] 

    url = URI("https://officerhomol.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501E/consultarProposta")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["XSRF-TOKEN"] = "#{session[:set_cookies][11..46]}"
    request["Content-Type"] = "#{session[:content_type]}"
    request["Authorization"] = "#{"Bearer"' '+session[:auth]}"
    request.body = "{
      \n\"nrInst\":\"1368\",
      \n\"nrAgen\":\"19\",
      \n\"cdConven\":\"108\",
      \n\"cdFilial\":\"\",
      \n\"cdAgente\":\"\",
      \n\"nmLogin\":\"pincred\",
      \n\"nrStatus\":\"\",
      \n\"nrCPFCNPJ\":\"#{@dados[2].to_s}\",
      \n\"nrPropos\":\"\",
      \n\"dtPerIni\":\"#{@dados[5].to_s.gsub('-','')}\",
      \n\"dtPerFim\":\"#{Date.today}\"\n}"

    response = https.request(request)
    response.read_body
    
    JSON.parse(response.read_body)

    @result_propostas = JSON.parse(response.read_body)["propostas"] 

    verify_proposta = false 

    @result_propostas.try(:each) do |proposta| 
      if @dados[2].to_s == proposta["nrCpfCnpj"] && @dados[4].gsub('.','').gsub(',','.').to_f == proposta["vlSolic"]
        puts "#Action VERIFY_PROPOSTA"
        puts @dados[2].to_s
        puts @dados[4].gsub('.','').gsub(',','.').to_f
        puts proposta["nrCpfCnpj"]
        puts proposta["vlSolic"]
        verify_proposta = true
      end
    end

    if !verify_proposta
      url = URI("https://officerhomol.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501H/cadastrarProposta")

      https = Net::HTTP.new(url.host, url.port);
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["XSRF-TOKEN"] = "#{session[:set_cookies][11..46]}"
      request["Content-Type"] = "#{session[:content_type]}"
      request["Authorization"] = "#{"Bearer"' '+session[:auth]}"
      request.body = "{
      \n\"principal\": {\n\"cdProdut\": \"3018\",
      \n\"cdConven\":\"108\",
      \n\"cdLoja\":\"108\",
      \n\"nrCpfCnpj\": \"#{@dados[2].to_s}\",
      \n\"qtPresta\": \"#{@dados[6].to_i}\",
      \n\"qtMescar\": \"0\",
      \n\"dtContra\": \"#{@dados[5].to_s.gsub('-','')}\",
      \n\"dtVct1ap\": \"#{session[:result_segundo_ponto_dtvct1ap]}\",
      \n\"dtVctult\": \"#{session[:result_segundo_ponto_dtvctult]}\",
      \n\"vlContra\": \"#{session[:result_segundo_ponto_contra]}\",
      \n\"vlPresta\": \"#{session[:result_segundo_ponto_presta]}\",
      \n\"vlIofCob\": \"#{session[:result_segundo_ponto_iof]}\",
      \n\"vlConces\": \"0.00\",
      \n\"vlSeguro\": \"0\",
      \n\"vlOutvlr\": \"0\",
      \n\"vlTotal\":  \"#{session[:result_segundo_ponto_liquido]}\",
      \n\"vlLiquid\": \"#{session[:result_segundo_ponto_liquido]}\",
      \n\"txFinano\": \"#{session[:result_segundo_ponto_txaa]}\",
      \n\"txRefCdc\": \"#{session[:result_segundo_ponto_txam]}\",
      \n\"idCarctr\": \"30\",
      \n\"txCetMes\": \"#{session[:result_segundo_ponto_txcetam]}\",
      \n\"txCetAno\": \"#{session[:result_segundo_ponto_txcetaa]}\",
      \n\"cdCvcons\": \"1000108\"\n},
      \n\"fichaCadastralCliente\": {
        \n\"cliente\": {
            \n\"dsNome\": \"#{@dados[0].upcase.to_s}\",
            \n\"nrCpfCnpj\": \"#{@dados[2].to_s}\",
            \n\"dsEmail\": \"#{@dados[1].to_s}\",
            \n\"nrDDDCel\": \"86\",
            \n\"nrCel\": \"#{@dados[3].to_s}\",
            \n\"cdAutscr\": \"N\",
            \n\n\"dadosProfissionais\": {
              \n\"dsEmpres\": \"Pintos LTDA\",
              \n\"nrCpfCnpj\": \"06837645000160\"\n}\n}\n}\n}\n"
            
      response = https.request(request)
      puts response.code
      puts response.read_body
      puts JSON.parse(response.read_body)["status"]
      puts JSON.parse(response.read_body)["globalMessage"]
      puts JSON.parse(response.read_body)["messages"]


      status = JSON.parse(response.read_body)["status"]
      status_message = JSON.parse(response.read_body)["globalMessage"]
      status_two = JSON.parse(response.read_body)["messages"][0]["message"]

      if response.code == "400"
      redirect_to "/simulador-de-consignado" , 
        notice: " Algo não saiu como o esperado,Tente Novamente! #{ status },#{ status_message },#{status_two }"
      elsif 
      redirect_to "/simulador-de-consignado" , 
        notice: "Simulação, concluída com Sucesso ! Prazo para retorno de 48 a 72 horas! Numero do Processo: #{ status_two }, Situação: #{ status_message }"
      end
    else
      redirect_to "/simulador-de-consignado" , 
        notice: "CPF ja existente!"
    end
  end 

  private 

  def verify_proposta 

    url = URI("https://officerhomol.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501E/consultarProposta")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["XSRF-TOKEN"] = "#{session[:set_cookies][11..46]}"
    request["Content-Type"] = "#{session[:content_type]}"
    request["Authorization"] = "#{"Bearer"' '+session[:auth]}"
    request.body = "{
      \n\"nrInst\":\"1368\",
      \n\"nrAgen\":\"19\",
      \n\"cdConven\":\"108\",
      \n\"cdFilial\":\"\",
      \n\"cdAgente\":\"\",
      \n\"nmLogin\":\"pincred\",
      \n\"nrStatus\":\"\",
      \n\"nrCPFCNPJ\":\"#{@dados[2].to_s}\",
      \n\"nrPropos\":\"\",
      \n\"dtPerIni\":\"#{Date.today}\",
      \n\"dtPerFim\":\"#{Date.today}\"\n}"

    response = https.request(request)
    response.read_body
    
    JSON.parse(response.read_body)

    @result_propostas = JSON.parse(response.read_body)["propostas"]
  
    @result_propostas.try(:each) do |proposta| 
      if @dados[2].to_s == proposta["nrCpfCnpj"]
        puts "#Action VERIFY_PROPOSTA"
        return'/simulador-de-consignado', notice: 'Simulação já realizada'
      end
    end
        
    #@result_propostas.each do |proposta|
    #  if session[:cpf].to_i == proposta["nrCpfCnpj"].to_i && session[:valor] == proposta["vlSolic"] 
    #     && session[:date] == proposta["dtPerIni"]
    #  return page_calc_index_path, 
    #     notice: 'Solicitação já realizada, Favor ... consultar status de sua proposta'
    #  end
    #end      
  end 
end
