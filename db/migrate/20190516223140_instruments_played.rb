class InstrumentsPlayed < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :instruments_played, :string
  end
end
