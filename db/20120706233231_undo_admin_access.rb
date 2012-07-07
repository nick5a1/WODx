class UndoAdminAccess < ActiveRecord::Migration
  def up    
    #AdminUser.destroy(:email => 'nickkarrasch@gmail.com', :password => 'lemoncake88', :password_confirmation => 'lemoncake88')

    #remove_index :admin_users, :email,                :unique => true
    #remove_index :admin_users, :reset_password_token, :unique => true
    
    drop_table(:admin_users)
    
    remove_index  :active_admin_comments, :column => [:author_type, :author_id]
    remove_index  :active_admin_comments, :column => [:namespace]
    remove_column :active_admin_comments, :namespace
    rename_column :active_admin_comments, :author_id, :admin_user_id
    rename_column :active_admin_comments, :author_type, :admin_user_type
    rename_table  :active_admin_comments, :admin_notes
    add_index     :admin_notes, [:admin_user_type, :admin_user_id]
    
    drop_table :admin_notes
  end

  def down
  end
end
