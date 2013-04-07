class CreateMyConsumers < ActiveRecord::Migration
  def change
    create_table :my_consumers do |t|

      t.timestamps
    end
  end
end
