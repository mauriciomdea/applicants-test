class RenameMakeToMaker < ActiveRecord::Migration
  def change
    rename_table :makes, :makers
  end
end
