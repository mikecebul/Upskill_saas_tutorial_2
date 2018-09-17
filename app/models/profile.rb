class Profile <ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, 
                    source_file_options: { all: '-auto-orient' },
                    :styles => { original: "", :medium => "300x300#", :thumb => "100x100#" }, 
                    :default_url => "/images/:style/missing.png" 
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
