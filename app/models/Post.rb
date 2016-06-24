class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  def time_of_post
    t = Time.now
    t2 = created_at - t
    t2
  end
end
