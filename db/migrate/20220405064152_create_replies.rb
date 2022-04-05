class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.string :sender, null: false
      t.text :body, null: false
      t.references :email, null: false, foreign_key: true

      t.timestamps
    end
  end
end
