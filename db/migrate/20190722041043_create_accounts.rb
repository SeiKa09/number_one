class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.integer :balance

      t.timestamps
    end
  end
end
