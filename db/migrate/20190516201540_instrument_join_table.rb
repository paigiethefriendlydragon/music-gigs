class InstrumentJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_join do |t|
      t.belongs_to :instrument, unique: true
      t.belongs_to :user, unique: true, null: false


      t.timestamps
    end
  end
end
