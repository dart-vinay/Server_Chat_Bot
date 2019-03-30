class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.references :user, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.datetime :time

      t.timestamps
    end
  end
end
