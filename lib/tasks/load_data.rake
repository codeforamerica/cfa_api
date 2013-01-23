require 'json'

task :load_data => [:fellows, :social] do

end

task :fellows => :environment do
  puts "===================================================="
  puts "Creating Fellows with initial Data and saving to DB"
  puts "===================================================="

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
  puts "DONE."
end

task :social => :environment do
  puts "===================================================="
  puts "   Adding social data to Fellows entries in DB"
  puts "===================================================="

  data = JSON.parse(File.open('fellows_social_data.json','r').read)
  data.each do |key, value|
    ["github","twitter"].each do |field|
      a_fellow = Fellow.where(name: key).first
      a_fellow.update_column(field, value[field.to_s])
    end
  end
  puts "DONE."
end
