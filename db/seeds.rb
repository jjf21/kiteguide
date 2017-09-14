puts 'delete DB'
Product.destroy_all
Brand.destroy_all


puts 'Seeding DB'
a = Brand.create!(name:'F-one')
Product.create(brand:a, model:'Bandit')

a = Brand.create!(name:'North')
Product.create(brand:a, model:'Vegas')

a = Brand.create!(name:'Naish')
Product.create(brand:a, model:'Park')

a = Brand.create!(name:'Slingshot')
Product.create(brand:a, model:'Rally')

a = Brand.create!(name:'Cabrinha')
Product.create(brand:a, model:'FX')

puts 'SEED complete'