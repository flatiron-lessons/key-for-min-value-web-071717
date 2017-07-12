# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# hash = {
#   :blake => 500,
#   :ashley => 2,
#   :adam => 1
# }


def key_for_min_value(name_hash)

  if name_hash == nil
    return nil
  end

  min_val = nil
  min_key = nil

  name_hash.each do |key, value|
   if min_val.nil? # If min_val = empty => true
     min_key = key # set the current key to min_key
     min_val = value # set the current value to min_val
   elsif value < min_val # otherwise if current val < min_val
     min_key = key # reset min_key to current key
     min_val = value # and reset min_val to current val
   end
  end

  min_key # min_key now represents the lowest key in the set
end
