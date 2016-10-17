class CreateEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :kind_of_food
      t.string :website
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
