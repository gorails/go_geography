class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :geography_cities do |t|
      t.string :name
      t.integer :cdg_ibge
      t.integer :state_id
      t.integer :population_2010
      t.numeric :demographic_density
      t.string :gentile
      t.numeric :area

      t.timestamps
    end
  end
end
