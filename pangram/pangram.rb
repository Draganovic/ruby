class Pangram

  def self.is_pangram?(string)
    alphabet = ("a".."z").to_a
    values = alphabet.map { |character| string.downcase.include?(character) }
    values.all? { |value| value == true }
  end
end
