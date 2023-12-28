require_relative './post_lib.rb'
namespace :dev do
  desc "run aplication setup"
  task setup: :environment do
    system("clear")
    %x(rails db:create)
    %x(rails db:migrate)
    value = PostLib.standart_posts
    value.each do |post|
      Task.find_or_create_by!(post) # exclamação para mostrar os erros que surgir
    end
    %x(rails db:migrate)
  end

  desc "user"
  task profile: :environment do
    %x(rails db:migrate)
    value = PostLib.standart_user
    value.each do |user|
      User.find_or_create_by!(user)
    %x(rails db:migrate)
    end
  end
end


