# # DNA is represented by an alphabet of the following symbols: 'A', 'C', 'G', and 'T'.

# # Each symbol represents a nucleotide, which is a fancy name for the particular molecules that happen to make up a large part of DNA.

# # Write a program in ruby that will tell you how many times each nucleotide occurs in a string (i.e. how many times 'A', 'C', 'G' and 'T' appear in a given string).

# # It should also tell you if a character in the string is not a valid nucleotide (i.e. NOT 'A', 'C', 'G', and 'T').

# # Example:
# count_nucleotides "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
# # output:
# A: 20
# C: 12
# G: 17
# T: 21

count_nucleotides = 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'

var1 = count_nucleotides.split('')
counterA = 0
counterC = 0
counterG = 0
counterT = 0
var1.each do |key|
if key == "A"
     counterA += 1 
elsif key == "C"
     counterC += 1
elsif key == "G"
     counterG += 1
elsif key == "T"
    counterT += 1
else
    puts "somenthing is wrong"
end
end

p "A = #{counterA}"
p "C = #{counterC}"
p "G = #{counterG}"
p "T = #{counterT}"
    
    

