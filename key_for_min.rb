# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_value = 1000
  name_hash.count do |key, value|
    if name_hash[key] < min_value
      min_value = name_hash[key]
    end
  end
  name_hash.invert[min_value]
end