class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :phone, :city, :country, :profession, :education, :image
      t.integer :user_id
      t.datetime :birth_date
      t.timestamps
    end
  end
end
