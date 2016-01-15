# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

currencies = [
  # AUD
  { name: 'Australian Dollar to Brazilian Real', code: 'AUD-BRL', base: 'AUD' },
  { name: 'Australian Dollar to Canadian Dollar', code: 'AUD-CAD', base: 'AUD' },
  { name: 'Australian Dollar to Euro', code: 'AUD-EUR', base: 'AUD' },
  { name: 'Australian Dollar to United States Dollar', code: 'AUD-USD', base: 'AUD' },
  # BRL
  { name: 'Brazilian Real to Australian Dollar', code: 'BRL-AUD', base: 'BRL' },
  { name: 'Brazilian Real to Canadian Dolar', code: 'BRL-CAD', base: 'BRL' },
  { name: 'Brazilian Real to Euro', code: 'BRL-EUR', base: 'BRL' },
  { name: 'Brazilian Real to United States Dollar', code: 'BRL-USD', base: 'BRL' },
  # CAD
  { name: 'Canadian Dollar to Australian Dollar', code: 'CAD-AUD', base: 'CAD' },
  { name: 'Canadian Dollar to Brazilian Real', code: 'CAD-BRL', base: 'CAD' },
  { name: 'Canadian Dollar to Euro', code: 'CAD-EUR', base: 'CAD' },
  { name: 'Canadian Dollar to United States Dollar', code: 'CAD-USD', base: 'CAD' },
  # EUR
  { name: 'Euro to Australian Dollar', code: 'EUR-AUD', base: 'EUR' },
  { name: 'Euro to Brazilian Real', code: 'EUR-BRL', base: 'EUR' },
  { name: 'Euro to Canadian Dollar', code: 'EUR-CAD', base: 'EUR' },
  { name: 'Euro to United States Dollar', code: 'EUR-USD', base: 'EUR' },
  # USD
  { name: 'United States Dollar to Australian Dolalr', code: 'USD-AUD', base: 'USD' },
  { name: 'United States Dollar to Brazilian Real', code: 'USD-BRL', base: 'USD' },
  { name: 'United States Dollar to Canadian Dollar', code: 'USD-CAD', base: 'USD' },
  { name: 'United States Dollar to EUR', code: 'USD-EUR', base: 'USD' }
]

currencies.each do |currency|
  Currency.find_or_create_by(currency)
end
