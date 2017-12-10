class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.has_one :Destination

      t.timestamps
    end
  end
end
