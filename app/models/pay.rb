class Pay < ActiveRecord::Base
	validates :date, :goods_type, :name, :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0}
end
