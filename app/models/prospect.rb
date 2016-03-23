class Prospect < ActiveRecord::Base
    require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            
            prospect_hash = row.to_hash
            prospect = Prospect.where(id: prospect_hash["id"])
            
            if prospect.count == 1
                prospect.first.update_attributes(prospect_hash)
            else
                Prospect.create!(prospect_hash)
            end
        end
    end
end
