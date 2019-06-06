class ChangeInstrument < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :instrument_type, :string, null: false
  end
end
