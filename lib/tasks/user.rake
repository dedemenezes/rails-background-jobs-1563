namespace :user do
  desc "Enrich users from API"
  task update_all: :environment do
    users = User.all
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end

  desc "TODO"
  task destroy_all: :environment do
  end

end
