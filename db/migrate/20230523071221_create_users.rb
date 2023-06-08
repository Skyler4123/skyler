class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :email, index: true
      t.string :password_digest
      t.string :uid
      t.string :provider

      t.timestamps
    end
  end
end
