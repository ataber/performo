class AddUserRefsToPerformers < ActiveRecord::Migration
  def change
    change_table :performers do |t|
      t.belongs_to :user
    end
  end
end
