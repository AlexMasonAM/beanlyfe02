class Cipher

  def encyrpt(string, shift_value)
    string = string.char[]
    for string do 
      loop do
        var i =, i < string.lentgh, i++
        string[i + shift_value].push
      end
    end  
    
    
  
    return encrypted_text
  end 

end

