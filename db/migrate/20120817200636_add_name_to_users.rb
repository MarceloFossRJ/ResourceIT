class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string

    u = User.create(:password => 'amfm2006', 
                    :password_confirmation => 'amfm2006', 
                    :email => 'root@root.com', 
                    :name => 'Administrator')
    u.save

  end
end
