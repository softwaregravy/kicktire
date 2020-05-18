class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.integer :amount_of_work

      t.timestamps
    end
  end
end
