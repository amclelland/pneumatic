class CreateTubes < ActiveRecord::Migration[5.1]
  def change
    create_table :tubes do |t|
      t.string :name
      t.timestamps
    end
  end
end
