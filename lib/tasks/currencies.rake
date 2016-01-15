namespace :currencies do
  desc 'Update the currencies'
  task update: :environment do
    currencies = ['USD', 'BRL', 'CAD', 'AUD', 'EUR']
    currencies = {
    	'USD': %w(BRL CAD AUD EUR),
    	'BRL': %w(USD CAD AUD EUR),
    	'CAD': %w(BRL USD AUD EUR),
    	'AUD': %w(BRL USD CAD EUR),
    	'EUR': %w(BRL USD CAD AUD)
    }
    currencies.each do |base, symbols|
    	fixer = FixerIo.new(base, symbols)
    	fixer.update
    end
  end
end
