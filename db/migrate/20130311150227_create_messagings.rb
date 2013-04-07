class CreateMessagings < ActiveRecord::Migration
  def change
    create_table :messagings do |t|

      t.timestamps
    end
  end
end
