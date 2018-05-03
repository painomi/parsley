class User < ApplicationRecord
  validates :provider, presence: true
  validates :uid, presence: true
  validates :name, presence: true
  validates_uniqueness_of :uid, scope: :provider
  enum role: { common: 0 }

  def self.create_with_omniauth(auth)
    user= create! do |user|
      user.provider=  auth['provider']
      user.uid=       auth['uid']
      user.name=      auth['info']['name']
      user.email=     auth['info']['email']
      user.image_url= auth['info']['image']
    end
  end

  def active
    !deleted_at
  end
end
