class AddProtocolToStudies < ActiveRecord::Migration[5.0]
  def change
    add_column :studies, :protocol, :integer
  end
end
