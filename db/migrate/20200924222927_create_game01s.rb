class CreateGame01s < ActiveRecord::Migration[5.2]
  def change
    create_table :game01s do |t|
      t.text :rule_text

      t.timestamps
    end
  end
end
