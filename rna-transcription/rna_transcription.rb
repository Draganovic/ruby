class Complement
VERSION = 3
DNA_NUCLEOTIDES = %w(G C T A)
RNA_NUCLEOTIDES = %w(C G A U)

def self.of_dna(dna_strand)
  
  trans = []
  nucleotide = dna_strand.each_char do |n|
    if n == "G"
       trans << "C"
    elsif n == "C"
      trans << "G"
    elsif n == "T"
      trans << "A"
    elsif n == "A"
      trans << "U"
    else
      trans << ""
    end
 end
 trans.join
end


end
