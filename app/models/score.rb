class Score < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject
  belongs_to :catalog
  belongs_to :academic

  before_save :update_final_score

  protected
  def update_final_score
    final = (self.score_one + self.score_two + self.score_three + self.score_four + self.score_test) / 5
    self.score_final = final
  end
end
