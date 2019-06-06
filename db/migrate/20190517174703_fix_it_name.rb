class FixItName < ActiveRecord::Migration[5.2]
  def change
    rename_table :instrument_join, :instrument_joins
  end
end
