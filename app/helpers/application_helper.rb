module ApplicationHelper
  def data_br(data_us)
    data_us.strftime("%d/%m/%Y")
  end  

  def flash_message
    messages = ""
    [:notice,:info,:warning,:error,:alert].each {|type|
     if flash[type]
      messages += "#{flash[type]}"
     end
    }

    messages 

  end
end
