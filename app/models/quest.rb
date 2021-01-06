class Quest < ApplicationRecord
  belongs_to :user
  belongs_to :rick
  belongs_to :morty
  belongs_to :adventure
  has_many :quest_items
  has_many :items, through: :quest_items

  validates :items, length: { maximum: 3 }

  #pass method an array of selected item ids to check if requisite item included
  #(and by extension whether success = true)
  def key_item(item_arr, adventure_id)
    item_arr = item_arr.map{|x| x.to_i}
    adventure_id = adventure_id.to_i
      
    item_arr.include? Adventure.find(adventure_id).item_id
  end 

    
  #total success rate sum with sum limited to range of 0..10
  def success_rate(item_arr)
    survival_total = item_ids_to_success_rates(item_arr).sum
    if survival_total > 10 
      survival_total = 10
    elsif survival_total < 0 
      survival_total = 0
    else 
      survival_total = survival_total
    end   
    success_rate_outcome(survival_total)
  end 

  #changes array of item ids to array of success rates
  def item_ids_to_success_rates(item_arr)
    item_arr.map{|x| x.to_i}.map{|i| Item.find(i).success_rate}
  end 

  #live/ die outcome based on quest_success)rate
  #currently used to assign rick_alive, morty_alive, and survival_total values to new quests
  def success_rate_outcome(survival_total)
    self.survival_total = survival_total
    if survival_total > 8
      self.rick_alive = true 
      self.morty_alive = true
      #survival_total = (9..10) both live
    elsif survival_total > 6
      self.rick_alive = true
      #survival_total = (7..8) Morty dies
    elsif survival_total > 4
      self.morty_alive = true
      #survival_total = (5..6) Rick dies
    end 
    #implied if survival_total < 4 rick and morty both die (since new method defaults to false)
    total_quest_score(survival_total)
  end

  #total points out of 15 possible combinind survival total + success score
  def total_quest_score(survival_total)
    success_points = 5
    if self.success
    total_quest_score = survival_total + success_points 
    else 
      total_quest_score = survival_total 
    end 
    self.quest_total = total_quest_score
  end

  def self.total_num_quests
    Quest.all.count
  end

  def self.quests_completed
    Quest.all.count{|q| q.success == true}
  end 
  
  def self.failed_quests 
    Quest.all.count{|q| q.success == true}
  end 

  def self.ricks_killed
    Quest.all.count{|q| q.rick_alive == false}
  end 

  def self.morties_killed
    Quest.all.count{|q| q.morty_alive == false}
  end 

  def self.quests_total_score 
    Quest.all.sum{|q| q.quest_total}
  end 

  def self.quest_percentage
    "#{((Quest.quests_total_score / (15 * Quest.total_num_quests).to_f) * 100).round(2)}%"
  end 

  def self.best_success_score
    Quest.total_num_quests * 15
  end 

  def self.total_ricks_used
    Quest.rick_arr.uniq.count
  end

  def self.total_morties_used
    Quest.morty_arr.uniq.count
  end

  def self.percent_ricks_killed
    "#{((Quest.ricks_killed / Quest.rick_arr.count.to_f) * 100).round(2)}%"
  end 

  def self.percent_morties_killed
      "#{((Quest.morties_killed / Quest.morty_arr.count.to_f) * 100).round(2)}%"
  end 

  def self.rick_arr
    Quest.all.map{|q| q.rick} 
  end 

  def self.morty_arr
    Quest.all.map{|q| q.morty} 
  end

 def outcome_message
  message = ""

  if self.success
    message += "Good news, broh: your quest was successful!"
  else 
    message += "Bad news, broh: you failed the quest."
  end 

  if self.rick_alive
    message += " At least your Rick is still alive."
  else 
    message += " Your Rick is dead - What were you thinking broh??!"
  end 

  if self.morty_alive 
    message += " Good and bad news: Morty is still alive. "
  else
    message += " Your Morty died, but it's ok, he was useless anyway. "
  end 

  if self.success
    message += self.adventure.pass
  else 
    message += self.adventure.fail 
  end 

  message

end 





end
