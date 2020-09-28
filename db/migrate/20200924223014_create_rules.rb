class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.references :game02, foreign_key: true

      t.timestamps
    end
  end
end
