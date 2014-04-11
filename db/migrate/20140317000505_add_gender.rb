class AddGender < ActiveRecord::Migration
  def change
    add_column :daycares, :sex, :integer
  end
end
