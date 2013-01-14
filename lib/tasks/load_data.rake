require 'json'

namespace :load_data do
  task :fellows => :environment do
    data = JSON.parse(File.open('fellows_data.json','r').read).values
    data.each do |json_fellow|
      # Old version, f would be json_fellow now
      #Fellow.create(:name => f['name'], :bio => f['bio'], :team => f['team'], :headshot_url => f['headshot_url'])
      Fellow.create! do |db_fellow|
        [:name,:bio,:team,:headshot_url].each do |field|
          db_fellow[field] = json_fellow[field.to_s]
        end
      end
    end
  end
end

