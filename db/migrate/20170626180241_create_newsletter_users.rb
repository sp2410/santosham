class CreateNewsletterUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletter_users do |t|
      t.string :email

      t.timestamps
    end
  end
end
