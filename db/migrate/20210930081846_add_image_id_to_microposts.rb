class AddImageIdToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :image_id, :string
  end
end
