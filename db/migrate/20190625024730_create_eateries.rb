class CreateEateries < ActiveRecord::Migration[5.2]
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.time :open
      t.time :close

      t.timestamps
    end
  end
end
