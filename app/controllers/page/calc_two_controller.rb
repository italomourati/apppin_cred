class Page::CalcTwoController < PageController
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
      segundo_ponto(response_one,cookies,params[:valor],params[:meses])
    else
      flash[:alert] = "Iniciando a conexão ... Status : OK"
    end 
    

  end 

  def segundo_ponto(response_one,cookies,valor,meses)
  
    puts "Fazendo os calculos da proposta"
    flash[:alert] = 'Dados da Proposta...Realizada com sucesso, confira os dados !'
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
       \n\"cdProd\":\"1015\",
       \n\"idCarCtr\":\"5\",
       \n\"vlContra\":#{valor.to_i},
       \n\"txJuros\":\"1.520000\",
       \n\"qtPrest\":#{meses.to_i}}"

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

    #result_segundo_ponto_liquido = JSON.parse(response.read_body)["calculo"]["vlLiquid"]
    #result_segundo_ponto_presta = JSON.parse(response.read_body)["calculo"]["vlPresta"]
    #result_segundo_ponto_iof = JSON.parse(response.read_body)["calculo"]["vlIof"]
    #result_segundo_ponto_tac = JSON.parse(response.read_body)["calculo"]["vlTac"]
    #result_segundo_ponto_vloutvlr = JSON.parse(response.read_body)["calculo"]["vlOutvlr"]
    #result_segundo_ponto_contra = JSON.parse(response.read_body)["calculo"]["vlContra"]
    #result_segundo_ponto_seguro = JSON.parse(response.read_body)["calculo"]["vlSeguro"]
    #result_segundo_ponto_dtvct1ap = JSON.parse(response.read_body)["calculo"]["dtVct1ap"]
    #result_segundo_ponto_dtvctult = JSON.parse(response.read_body)["calculo"]["dtVctult"]
    #result_segundo_ponto_txam = JSON.parse(response.read_body)["calculo"]["txAm"]
    #result_segundo_ponto_txaa = JSON.parse(response.read_body)["calculo"]["txAa"]
    #result_segundo_ponto_txcetam = JSON.parse(response.read_body)["calculo"]["txCetAm"]
    #result_segundo_ponto_txcetaa = JSON.parse(response.read_body)["calculo"]["txCetAa"]
    
  
      
  
  end 
 


  def up_clear 
    redirect_to '/simulador-de-cdc' , notice: 'Limpeza Realizada com Sucesso'
  end

end
