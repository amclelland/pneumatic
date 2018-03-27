class CreateCapsules < ActiveRecord::Migration[5.1]
  def change
    create_table :capsules do |t|
      t.belongs_to :tube, index: true
      t.string :url
      t.timestamps
    end
  end
end
