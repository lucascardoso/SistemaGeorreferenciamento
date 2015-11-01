class CreateMarcadores < ActiveRecord::Migration
  def change
    create_table :marcadores do |t|
      t.string :latitude
      t.string :longitude
      t.decimal :porcentagem
      t.string :nome

      t.timestamps null: false
    end
  end
end
