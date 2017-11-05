class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :geography_states do |t|
      t.string :name
      t.string :initials

      t.timestamps
    end
  end
end
