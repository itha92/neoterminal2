class Empleado < ActiveRecord::Base
  belongs_to :terminal
  belongs_to :autobus
end
