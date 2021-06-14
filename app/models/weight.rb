class Weight < ApplicationRecord
  belongs_to :user

  # def is_in_db?
    # self.find(params[:id]).present?
  # end
end
