class AddLowerIndexesToStudies < ActiveRecord::Migration[5.0]
  def up
  	execute %{
  		CREATE INDEX 
  			studies_lower_study_name
  		ON
  			studies (lower(study_name) varchar_pattern_ops)
  	}
  	execute %{
  		CREATE INDEX 
  			studies_lower_crc
  		ON
  			studies (lower(crc) varchar_pattern_ops)
  	}
  end

  def down 
  	remove_index :studies, name: 'studies_lower_study_name'
  	remove_index :studies, name: 'studies_lower_crc'
  end
end
