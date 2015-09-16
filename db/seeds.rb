# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
def seed_teachers
  @user_teacher = User.find_by_role("teacher")
  unless @user_teacher.present?
    User.new(:name => "Teacher", :role => "teacher", :email => "asudini@memphis.edu" , :password => "12345678")
  end
  @user_teacher.skip_confirmation!
  @user_teacher.save
end

seed_teachers
=end

user = User.new(name: "Teacher",
                  email: "teacher@example.com",
                  password: "password",
                  role: "teacher"
                  )                    
  user.skip_confirmation!
  user.save
