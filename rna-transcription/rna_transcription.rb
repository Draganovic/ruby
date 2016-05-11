class Complement
VERSION = 2
DNA_NUCLEOTIDES = %w(G C T A)
RNA_NUCLEOTIDES = %w(C G A U)

  def self.of_dna(dna_strand)
    dna_strand.gsub(/./) do |nucleotide|
      raise ArgumentError unless DNA_NUCLEOTIDES.include?(nucleotide)
      case nucleotide
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      end
    end
   end

  def self.of_rna(rna_strand)
    rna_strand.gsub(/./) do |nucleotide|
      raise ArgumentError unless RNA_NUCLEOTIDES.include?(nucleotide)
      case nucleotide
      when 'C' then 'G'
      when 'G' then 'C'
      when 'A' then 'T'
      when 'U' then 'A'
      end
    end
  end

end
#