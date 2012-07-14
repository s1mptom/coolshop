namespace :db do
  desc "Fill database with sample data"
    task :populate => :environment do
      Rake::Task['db:reset'].invoke
      Product.create!(:name => "Big Yellow Car",
                      :description => "aweosome car",
                      :price => "999")
      20.times do |n|
        name  = Faker::Name.name
        description = "aweosome car-#{n+1}"
        price  = "999"
        Product.create!(:name => name,
                      :description => description,
                      :price => price)
      end
    end
end