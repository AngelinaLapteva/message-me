class CreateMesssages < ActiveRecord::Migration[6.0]
  def change
    create_table :messsages do |t|
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end
