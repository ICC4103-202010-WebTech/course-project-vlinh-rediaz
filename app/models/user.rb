class EmailValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end


class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true

  has_one_attached :flyer
  has_many :comments, dependent: :destroy
  has_many :comment_replies, dependent: :destroy
  has_many :date_votes, dependent: :destroy
  has_one :system_administrator, dependent: :destroy
  has_many :user_on_organizations
  has_many :user_on_events, dependent: :destroy
  has_many :organizations, through: :user_on_organizations
  has_many :events, through: :user_on_events

  def self.search(search)
    if search
      user_search = User.where("username LIKE ? OR full_name LIKE ? OR email LIKE ?" , "%#{search}%", "%#{search}%", "%#{search}%")
    else
      user_search = User.all
    end
  end
end