def mainmenu
end

main = { 1 => "See all products", 2 => "Find a product", 3 => "Create a product listing", 4 => "Delete a product listing" }

def displaymenu(hash)
  hash.each { |k, v| puts "#{k}. #{v}" }
end
