class Cipher
  def initialize(text,shift)
    text = text.delete(' ').downcase
    @text = encrypt(text,shift)
  end

  def encrypt(text,shift)
    @abc = ('a'..'z').to_a
    text.chars.map do |l|
      alphabet_index = @abc.index(l)
      alphabet_index = (alphabet_index + shift) % 26
      l = @abc[alphabet_index]
    end
  end
  def text
    @text.join('')
  end
end