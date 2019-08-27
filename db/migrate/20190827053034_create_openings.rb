class CreateOpenings < ActiveRecord::Migration[5.2]
  def change
    create_table :openings do |t|
      t.references :business, foreign_key: true
      t.references :admin, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
