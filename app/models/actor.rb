class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character_arr = self.characters.collect {|c| c.name}
    show_arr = self.shows.collect {|s| s.name}
    character_arr.zip(show_arr).collect {|role| "#{role[0]} - #{role[1]}"}
  end

end
