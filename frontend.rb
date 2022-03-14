def mainmenu
  menu_main = { 1 => "See all products",
                2 => "Find a product",
                3 => "Create a product listing",
                4 => "Delete a product listing" }

  displaymenu(menu_main)
end

def displaymenu(hash)
  hash.each { |k, v| puts "#{k}. #{v}" }
end
