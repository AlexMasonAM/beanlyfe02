require "cipher01"
describe Cipher do
  describe "#encrypt" do
    it "does something" do
      
      #Arrange
      string = "abc"
      shift_value = 3
      cipher = Cipher.new(string, shift_value)
      #Act
      encrypted_text = cipher.text
      #Assert
      expect(encrypted_text).not_to eq(string)

    end
    it "shifts a string properly" do
      string = "abc"
      shift_value = 1

      cipher = Cipher.new(string, shift_value)

      encrypted_text = cipher.text

      expect(encrypted_text).to eq("bcd") 

    end
    it "goes around the z" do
      string = "zanzibar"
      shift_value = 6
      
      cipher = Cipher.new(string, shift_value)
      
      encrypted_text = cipher.text
      
      expect(encrypted_text).to eq("fgtfohgx")      
    end

    it "goes around the whitespace" do
      string = "ZZ Top"
      shift_value = 6
      
      cipher = Cipher.new(string, shift_value)
      
      encrypted_text = cipher.text
      
      expect(encrypted_text).to eq("ffzuv")      
    end
    
    it "can decrypt text too" do
      string = "ckriuskzusecuxrjznkcuxrjulcjo"
      shift_value = -6
      
      cipher = Cipher.new(string, shift_value)
        
      encrypted_text = cipher.text
      
      expect(encrypted_text).to eq("welcometomyworldtheworldofwdi")   
    end



  end
end
