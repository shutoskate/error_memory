class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :code
      t.string :cause
      t.string :solution
      t.timestamps
    end
  end
end
