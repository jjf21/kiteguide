puts 'delete DB'
Product.destroy_all
Brand.destroy_all


puts 'Seeding DB'
a = Brand.create!(name:'F-one')
Product.create(brand:a, model:'Bandit', year: 2018)

a = Brand.create!(name:'North')
Product.create(brand:a, model:'Vegas', year: 2018)

a = Brand.create!(name:'Naish')
Product.create(brand:a, model:'Park', year: 2018)

a = Brand.create!(name:'Slingshot')
Product.create(brand:a, model:'Rally', year: 2018)

a = Brand.create!(name:'Cabrinha')
Product.create(brand:a, model:'FX', year: 2018)

puts 'SEED complete'