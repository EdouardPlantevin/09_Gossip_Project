class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :users, index: true
    end
  end
end
