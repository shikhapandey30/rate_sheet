class CreateAdjustments < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustments do |t|
      t.integer :ltv, default: 80
      t.integer :fico, default: 700

      t.timestamps
    end
  end
end
