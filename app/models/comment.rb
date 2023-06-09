# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_comments_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class Comment < ApplicationRecord
  belongs_to :product

  validates :content, presence: { message: "%{value} no puede estar vacio" }

  has_many :votes, as: :votable
end
