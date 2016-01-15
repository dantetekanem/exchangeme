class Alert < ActiveRecord::Base
	belongs_to :currency

	scope :activateds, -> {
		where(activated: true)
	}
	scope :pending, -> {
		where(watched: false)
	}
end
