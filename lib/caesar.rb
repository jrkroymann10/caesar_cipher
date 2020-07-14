
def string_to_num(array)
  array.map { |sub| sub.ord }
end

def apply_shift(num, shift)
  num > 64 && num < 91 ? (((num + shift - 65) % 26) + 65) : (((num + shift - 97) % 26) + 97)
end

def check_for_shift(array, shift)
  array.map { |num| num > 64 && num < 91 || num > 96 && num < 123 ? apply_shift(num, shift) : num }
end

def num_to_string(array)
  array.map { |num| num.chr }
end

def array_to_string(array)
  array.join("")
end

def caesar_cipher(og_string, shift_factor)
  sub_array = og_string.split("")
  num_array = string_to_num(sub_array)
  shifted_array = check_for_shift(num_array, shift_factor)
  new_subs_array = num_to_string(shifted_array)
  array_to_string(new_subs_array)
end
