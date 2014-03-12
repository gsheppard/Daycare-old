class Nature < ActiveRecord::Base

  belongs_to :daycares, foreign_key: "nature_id"

  def increased_stat
    Stat.find(self.increased_stat_id)
  end

  def decreased_stat
    Stat.find(self.decreased_stat_id)
  end

end
