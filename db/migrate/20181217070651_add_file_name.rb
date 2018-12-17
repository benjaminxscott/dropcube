class AddFileName < ActiveRecord::Migration[5.2]
  def change
    add_column :upload_files, :filename, :string
  end
end
