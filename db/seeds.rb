# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
product = Product.new({ name: "Black Diamond Rope", price: 100, image_url: "https://www.rei.com/media/b1c10cfd-4bf7-477e-a7e3-ed7335e1fa2e?size=646x485", descrption:" Black Diamond 9.9mm Non-Dry Rope ")
product.save

product = Product.new({ name: "Mammut Infinity Rope", price: 300, image_url: "https://www.rei.com/media/5d3e3d4e-34c8-47d0-ac95-bc9db493f328?size=646x485", descrption:"Mammut Infinity 9.5mm x 70m Dry Rope")
  product.save

  product = Product.new({ name: "Sterling Velocity", price: 250, image_url: "https://www.rei.com/media/59d689a1-7c5f-4f55-af4d-583106f568d4?size=646x485", descrption:"Sterling Velocity 9.8mm Dry-Core Rope")
    product.save
