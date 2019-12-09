class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.timestamps
      t.text :text
      t.text :image
      t.string :team
      t.references :user, foreign_key: true
    end
  end
end
