class CreatePostcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :postcomments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :post_image_id

      t.timestamps
    end
  end
end
