class GroupsMenus < ActiveRecord::Migration
  def change
    create_table :groups_menus, id: false do |t|
      t.belongs_to :group, index:true
      t.belongs_to :menu, index:true
    end
  end
end
