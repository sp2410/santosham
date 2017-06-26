class NewsletterUser < ApplicationRecord

	validates :email, :email_format => { :message => 'Email is not valid' }

end
