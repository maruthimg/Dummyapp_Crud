class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :Name
      t.integer :Age
      t.string :Address
      t.string :ph

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
