class CreateGame02s < ActiveRecord::Migration[5.2]
  def change
    create_table :game02s do |t|
      t.text :rule_text

      t.timestamps
    end
  end
end
