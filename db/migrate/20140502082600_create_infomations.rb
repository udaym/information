class CreateInfomations < ActiveRecord::Migration
  def change
    create_table :infomations do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age

      t.timestamps
    end
  end
end
