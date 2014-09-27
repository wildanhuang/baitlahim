class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.timestamps
      t.string  :baptist_number
      t.string  :gender
      t.date    :birthday
      t.text    :address
      t.string  :postal_code
      t.string  :phone
      t.text    :job_description
      t.string  :website
    end
  end
end
