class FixerIo
	include HTTParty
	base_uri 'api.fixer.io'

	attr_accessor :base, :symbols, :rates

	def initialize(base, symbols)
		@base = base
		@symbols = symbols
		get_latest
	end

	def get_latest
		request = self.class.get("/latest?base=#{ @base }&symbols=#{ @symbols.join(',') }")
		json = JSON.parse(request.body)
		@rates = json['rates']
	end

	def update
		@symbols.each do |symbol|
			currency = Currency.find_or_initialize_by(code: "#{ @base }-#{ symbol }")
			currency.value = @rates[symbol]
			currency.save
			puts "updating from #{ @base } to #{ symbol } as #{ currency.value }"
		end
	end

end