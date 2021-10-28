class CreateHasComments < ActiveRecord::Migration[6.1]
  def change
    create_table :has_comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
