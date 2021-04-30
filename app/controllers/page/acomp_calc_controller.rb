class Page::AcompCalcController < PageController
  require "uri"
  require "net/http"
  require "base64"
  require 'brdinheiro'
  require 'brdata'
  def index
    @users_office_footers = UsersOffice::Footer.all
     
    url = URI("https://officer.softsaaspin.com.br/BJ21M05/user")
      
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
    

    if params[:commit].to_s == "Enviar"
      segundo_ponto(response_one,cookies,params[:cpf],params[:date_ini],params[:date_fim])
    end 
    

  end

    def segundo_ponto(response_one,cookies,cpf,date_ini,date_fim)
  
      url = URI("https://officer.softsaaspin.com.br/BJ21M05/BJ21M05/BJ21SS0501E/consultarProposta")

      https = Net::HTTP.new(url.host, url.port);
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["XSRF-TOKEN"] = "#{cookies}"
      request["Content-Type"] = "#{response_one["content-type"]}"
      request["Authorization"] = "#{"Bearer"' '+response_one["auth"]}"
      request.body = "{
        \n\"nrInst\":\"1368\",
        \n\"nrAgen\":\"19\",
        \n\"cdConven\":\"108\",
        \n\"cdFilial\":\"\",
        \n\"cdAgente\":\"\",
        \n\"nmLogin\":\"pincred\",
        \n\"nrStatus\":\"\",
        \n\"nrCPFCNPJ \":\"#{cpf.to_s}\",
        \n\"nrPropos\":\"\",
        \n\"dtPerIni\":\"#{date_ini.gsub('-','')}\",
        \n\"dtPerFim\":\"#{date_fim.gsub('-','')}\"\n}"

      response = https.request(request)
      response.read_body
      
      JSON.parse(response.read_body)

      @result_propostas = JSON.parse(response.read_body)["propostas"]
      
      

      flash[:alert] = "Dados consultados com Sucesso .. !"
   
    end 

end
