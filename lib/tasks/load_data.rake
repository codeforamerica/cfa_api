require 'json'

namespace :load_data do
  task :fellows => :environment do
    data = JSON.parse(File.open('fellows_data.json','r').read).values
    data.each do |f|
      Fellow.create(:name => f['name'], :bio => f['bio'], :team => f['team'], :headshot_url => f['headshot_url'])
    end
  end
end

