class CreateAccesories < ActiveRecord::Migration
  def change
    create_table :accesories do |t|
      t.string :name
      t.float :price
      t.integer :used

      t.timestamps
    end
  end
end
