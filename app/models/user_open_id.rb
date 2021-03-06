class UserOpenId < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :email
  validates_presence_of :url
end

# == Schema Information
#
# Table name: user_open_ids
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  email      :string(255)      not null
#  url        :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  active     :boolean          not null
#
# Indexes
#
#  index_user_open_ids_on_url  (url)
#
