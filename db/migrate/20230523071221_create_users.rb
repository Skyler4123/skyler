class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :email, index: true
      t.string :name
      t.string :password_digest
      t.string :uid, index: true
      t.string :provider
      t.datetime :birthday
      t.string :phone
      t.decimal :balance
      t.string :nationality
      t.integer :role
      t.string :confirm_code
      t.datetime :last_active_at

      t.timestamps
    end
  end
end
