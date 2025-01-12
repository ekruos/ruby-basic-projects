# The following method is the Caesar cipher forward, where the user gives a string and
# a shift factor. 

def caesar_cipher(string, shift)
  crypted_string = ""
  string.split("").each do |chr|
    if chr.ord >= 65 && chr.ord <= 90
      chr = (65+(chr.ord+shift-65)%26).chr
    elsif chr.ord >= 97 && chr.ord <= 122
      chr = (97+(chr.ord+shift-97)%26).chr
    end
    crypted_string += chr
  end
  crypted_string
end

