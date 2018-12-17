class CreateUploadFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :upload_files do |t|
      t.string :digest
      t.string :attachment
      t.integer :filesize

      t.timestamps
    end
  end
end
