class AddIstakenToBus < ActiveRecord::Migration
  def change
    add_column :autobuses, :is_taken, :boolean
  end
end
