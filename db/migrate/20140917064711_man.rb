class Man < ActiveRecord::Migration
  def change
   add_column :users , :size , :string
  end
end
