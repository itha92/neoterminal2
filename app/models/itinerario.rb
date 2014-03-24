class Itinerario < ActiveRecord::Base
  belongs_to :terminal
  has_many :boleto
end
