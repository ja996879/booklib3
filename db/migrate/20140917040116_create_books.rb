class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :ep
      t.string :press
      t.references :user, index: true

      t.timestamps
    end
  end
end
