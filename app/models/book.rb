class Book < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	belongs_to :category
	has_many :reviews

	has_attached_file :book_img, :styles => { :book_index => "250x350>", :book_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/



 has_attached_file :pdf,
                    :url  => "/assets/books/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/books/:id/:style/:basename.:extension"

  validates_attachment_content_type :pdf,
      :content_type => [ 'application/pdf' ],
      :message => "only pdf files are allowed"

      
  def self.search(search)
  where("title LIKE ?", "%#{search}%")
  end
end
