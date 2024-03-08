class FakeJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    puts "##############################"
    puts 'Starting Fake Job'
    sleep(3)
    puts 'Finished Fake Job!!!'
    puts "##############################"

  end
end
