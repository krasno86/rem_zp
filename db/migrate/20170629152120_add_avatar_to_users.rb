class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string
    add_column :users, :locale, :string, default: 'ru'
  end
end
