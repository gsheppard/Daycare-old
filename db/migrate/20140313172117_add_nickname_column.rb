class AddNicknameColumn < ActiveRecord::Migration
  def change
    add_column :daycares, :nickname, :string
  end
end
