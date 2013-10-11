namespace :indonesian_province do
	desc "Dump all data"
	task :dump => :environment do
		data_file = File.read(Rails.root.join('doc/indonesian_province_data.json'))
		datas = JSON.parse(data_file)
		datas.each do |data|
			province_data = Province.create(:name => data["name"])
			data["cities"].each do |city|
				City.create(:name => city["name"], :province_id => province_data.id)
			end				
		end
	end
end