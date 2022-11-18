class CreateTableMessage < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|

      t.string :sender_id
      t.text :content
      t.timestamps
    end
  end
end
