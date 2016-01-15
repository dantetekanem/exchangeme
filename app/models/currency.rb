class Currency < ActiveRecord::Base
  include Concerns::TokenGenerator
	has_many :alerts

	scope :bigger, -> (code, value) {
		where(code: code).where('value >= ?', value)
	}
	scope :smaller, -> (code, value) {
		where(code: code).where('value <= ?', value)
	}
  scope :by_code, -> {
    order('currencies.code asc')
  }

  before_validation :generate_token, on: :create

  def format
    ::Money.new(value * 100.00, base).format
  end

  private

  def generate_token
    self.activation_token = generate_token(:activation_token)
  end
end
