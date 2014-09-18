require 'securerandom'
class User < ActiveRecord::Base
  has_many :books
  validates :account, length:{in: 4..15}
  validates :account, uniqueness:true
  validates :password, length:{in: 4..25}
  before_save :sava_sess
  def sava_sess
    self.session_stronge ||= SecureRandom.urlsafe_base64(20)
	self.size ||= "f"
  end
end
