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
      quest_total = item_ids_to_success_rates(item_arr).sum
      if quest_total > 10 
        quest_total = 10
      elsif quest_total < 0 
        quest_total = 0
      else 
        quest_total = quest_total
      end   
      success_rate_outcome(quest_total)
    end 

    #changes array of item ids to array of success rates
    def item_ids_to_success_rates(item_arr)
      item_arr.map{|x| x.to_i}.map{|i| Item.find(i).success_rate}
    end 

    #live/ die outcome based on quest_success)rate
    #currently used to assign rick_alive, morty_alive, and quest_total values to new quests
    def success_rate_outcome(quest_total)
      self.quest_total = quest_total
      if quest_total > 8
        self.rick_alive = true 
        self.morty_alive = true
        #quest_total = (9..10) both live
      elsif quest_total > 6
        self.rick_alive = true
        #quest_total = (7..8) Morty dies
      elsif quest_total > 4
        self.morty_alive = true
        #quest_total = (5..6) Rick dies
      end 
      #implied if quest_total < 4 rick and morty both die (since new method defaults to false)
    end

end
