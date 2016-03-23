class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :email
      t.string :linkedin
      t.string :company

      t.timestamps
    end
  end
end
