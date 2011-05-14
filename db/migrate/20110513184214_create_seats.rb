class CreateSeats < ActiveRecord::Migration
  def self.up
    create_table :seats do |t|
      t.references :destination
      t.text :nazwisko
      t.string :imie
      t.integer :telefon

      t.timestamps
    end
  end

  def self.down
    drop_table :seats
  end
end
