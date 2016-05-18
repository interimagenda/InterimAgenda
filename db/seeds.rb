employers = Employer.create! [

  {email: "cheese@cheese.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "cheeseFarm"},
  {email: "drugs@trucks.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "drugsBytrucks"},
  {email: "info@pizzaflut.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "Pizzaflut"},
  {email: "info@carshop.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "Carshop"},

  {email: "bart@schmitt.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "BartSchmitt"},
  {email: "dokter@dokter.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "doktersAtdokter"},
  {email: "mister@ed.edu", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "misterEd"},
  {email: "kabouter@dorp.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", location: "Tiel", company_name: "kabouterDorp"},
  {email: "weetikveel@weetikt.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "weetikt"}


]

puts "Amount of Employer-seeds #{Employer.count}."
