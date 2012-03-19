class ChangeDataTypeForstudents < ActiveRecord::Migration

    def self.up
    change_table :students do |t|
      t.change :ph, :string
    end
  end

  def self.down
    change_table :students do |t|
      t.change :ph, :string
    end
  end

 
end

