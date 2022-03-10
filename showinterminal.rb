require "HTTP"
require "tty-table"

response = HTTP.get("http://localhost:3000/all_products")

table = TTY::Table.new(header: ["name", "price", "description", "image_URL"])
response.parse(:json).each { |product|
  table << [product["name"],
            product["price"],
            product["description"][0..50] + ("..." if product["description"].length > 50),
            product["image_url"][0..25] + ("..." if product["description"].length > 25)]
}

puts table.render(:ascii)
