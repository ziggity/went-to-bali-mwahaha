admin_user = User.new
admin_user.name = "admin"
admin_user.email = "admin@gmail.com"
admin_user.password = "111111"
admin_user.password_confirmation = "111111"
admin_user.admin = true
admin_user.save

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

Seed.begin
