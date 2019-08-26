class AddBusinessToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_reference :admins, :business, foreign_key: true
  end
end
