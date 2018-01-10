class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.text :phrase
      t.string :author
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
