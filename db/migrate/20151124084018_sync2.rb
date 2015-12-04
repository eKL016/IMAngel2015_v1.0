class Sync2 < ActiveRecord::Migration
  def change
    User.all.each do |u|
        m = Master.new
        m.name = u.name # http://api.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-find_or_create_by
        m.gender = u.gender
        m.genre = u.genre
        m.photo = u.photo
        m.save
    end
  end
end
