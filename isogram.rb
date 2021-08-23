def is_an_isogram (string)

  arr = string.chars
  arr == arr & arr

end


def is_an_isogram_1line (string)

  string.chars.uniq == string.chars

end


is_an_isogram("helllllooo")
is_an_isogram_1line("helllllooo")

is_an_isogram("scary")
is_an_isogram_1line("scary")