     
     require "uri"
     require "net/http"
     require "json"

     url = URI("https://officer.softsaaspin.com.br/BJ21M05/user")
      
     https = Net::HTTP.new(url.host, url.port);
     https.use_ssl = true
       
     request = Net::HTTP::Get.new(url)
     request.basic_auth("pincred","Daniel@2020")
       
     response_one = https.request(request)
     
     puts response_one['Set-Cookie'][11..47]
     puts response_one.get_fields('set-cookie')
     puts response_one.to_hash['set-cookie']
     #cookies = response_one.response['set-cookie']
     #content_type = response_one["content-type"]
     #cookie = response_one.response['set-cookie']
 
     #puts response_one.code
     
     #puts response_one["auth"]
     #puts response_one["content-type"]
     #puts response_one.response['set-cookie']
     #puts response_one.read_body

     @dados = JSON.parse(response_one.read_body)
     puts @dados 