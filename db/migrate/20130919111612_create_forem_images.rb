class CreateForemImages < ActiveRecord::Migration
  def change
    create_table :forem_images do |t|
      t.integer :post_id
      t.string :img_file
    end

    add_index :forem_images, :post_id
  end
end
