class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :ingredients

      t.timestamps
    end
  end
end
