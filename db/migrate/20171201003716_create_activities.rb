class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.belongs_to :lists, foreign_key: true

      t.timestamps
    end
  end
end
