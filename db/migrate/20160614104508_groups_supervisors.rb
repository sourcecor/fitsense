class GroupsSupervisors < ActiveRecord::Migration
  def change
    create_table :groups_supervisors, id: false do |t|
      t.belongs_to :group, index:true
      t.belongs_to :supervisor, index:true
    end
  end
end
