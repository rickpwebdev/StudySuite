class CreateStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :studies do |t|
      t.string :study_name
      t.string :fund_code
      t.date :expiration_date
      t.string :enrollment
      t.string :target
      t.string :crc
      t.string :data_system
      t.integer :activity_code

      t.timestamps
    end
  end
end
