class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.datetime :date_start
      t.datetime :date_end
      t.references :user
      t.references :car

      t.timestamps
    end
  end
end
