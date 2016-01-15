require 'active_support/concern'

module Concerns
  module TokenGenerator
    extend ActiveSupport::Concern

    def generate_token(column)
      loop do
        token = SecureRandom.urlsafe_base64
        return token unless self.class.exists?(column => token)
      end
    end
  end
end