class Website < ActiveRecord::Base
    require 'csv'
    
    def self.import(file_website)
        CSV.foreach(file_website.path, headers: true) do |row|
            
            website_hash = row.to_hash
            website = Website.where(id: website_hash["id"])

            if website.count == 1
                website.first.update_attributes(website_hash)
            else
                Website.create!(website_hash)
            end
        end
    end
end