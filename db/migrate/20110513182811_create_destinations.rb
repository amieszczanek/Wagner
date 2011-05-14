class CreateDestinations < ActiveRecord::Migration
  def self.up
    create_table :destinations do |t|
      t.string :wyjazd_z
      t.text :przyjazd_do
      t.datetime :termin

      t.timestamps
    end
  end

  def self.down
    drop_table :destinations
  end
end
