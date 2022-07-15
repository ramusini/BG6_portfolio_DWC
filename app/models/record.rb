class Record < ApplicationRecord
  belongs_to :user
  belongs_to :boar_dgame
  has_many :scores
  has_many :players, through: :scores

  # score(子モデル)を保存するためのフォーム
  accepts_nested_attributes_for :scores, allow_destroy: true
end
