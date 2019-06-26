class CreateMorelesses < ActiveRecord::Migration[5.2]
  def change
    create_table :morelesses do |t|
      t.string :user_id
      t.string :more
      t.string :less

      t.timestamps
    end
  end
end
