class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :phone, :city, :country, :profession, :education, :birth_date, :image
      t.timestamps
    end
  end
end
