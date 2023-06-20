# == Schema Information
#
# Table name: votes
#
#  id           :bigint           not null, primary key
#  votable_type :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  votable_id   :bigint           not null
#
# Indexes
#
#  index_votes_on_votable  (votable_type,votable_id)
#
class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true
end
