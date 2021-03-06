class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :link_id
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
    #add_reference :comments, :parent, index: true
    #add_foreign_key :comments, :comments, column: 'parent_id'
  end
end
