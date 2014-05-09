# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.destroy_all
roles = Role.create([
  {name: "Administrator", description: "This role for admin"},
  {name: "User", description: "This role for user"}
])

admin = Role.where(name: "Administrator").first
if admin.present?
  
  admin.users.destroy_all if admin.users.present?

  admin_user = User.new(first_name: "Admin", last_name: "Baitlahim", password: "sudirman5861412", 
    password_confirmation: "sudirman5861412", email: "baitlahim_admin@gmail.com"
  )
  admin_user.skip_confirmation!
  admin_user.role = admin
  admin_user.save!
end