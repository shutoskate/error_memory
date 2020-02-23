class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.timestamps
      t.string :language
      t.references :user, foreign_key: true
    end
  end
end
