class SyncUser < ActiveRecord::Migration
  def change
      User.all.each do |u|
        m = Master.new
        m.name = u.name # http://api.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-find_or_create_by
        m.gender = u.gender
        m.type = u.type
        m.photo = u.photo
        m.save
      end
  end
end
