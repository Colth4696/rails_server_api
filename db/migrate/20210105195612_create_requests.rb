class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
