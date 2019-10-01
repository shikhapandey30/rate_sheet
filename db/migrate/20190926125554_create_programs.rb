class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :loan_purpose, default: ""
      t.string :loan_size, default: ""
      t.string :loan_type, default: ""
      t.integer :term, default: 30
      t.float :interest_rate, default: 4.0
      t.integer :lock_period, default: 30
      t.boolean :fannie_mae, default: false
      t.json :base_rate, default: 0
      t.json :adjustment_rate, default: 0

      t.timestamps
    end
  end
end
