# Task: we have chars mapping: A => T, C => G. 
#       Create a converter for strings with the results:
#       "ATTGC" -> returns "TAACG", "GTAT" -> returns "CATA".

str1 = "ATTGC"
str2 = "GTAT"

# chars mapping
replacements = { 
  'A' => 'T', 'C' => 'G',
  'T' => 'A', 'G' => 'C'
}

# Regexp.union(replacements.keys) => /A|C|T|G/
puts str1.gsub(Regexp.union(replacements.keys), replacements)
puts str2.gsub(Regexp.union(replacements.keys), replacements)
