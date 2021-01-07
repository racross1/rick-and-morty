class User < ApplicationRecord
    has_many :quests 
    has_many :ricks, through: :quests
    has_many :morties, through: :quests
    has_many :adventures, through: :quests

    has_secure_password

    def completed_quests
        self.quests.count{|q| q.success == true}
    end 

    def failed_quests
        self.quests.count{|q| q.success == false}
    end 

    def ricks_killed
        self.quests.count{|q| q.rick_alive == false}
    end 

    def morties_killed
        self.quests.count{|q| q.morty_alive == false}
    end 

    def quests_total_score 
        self.quests.sum{|q| q.quest_total}
    end 

    def quest_percentage
        "#{((self.quests_total_score / (15 * self.quests.count).to_f) * 100).round(2)}%"
    end 

    def best_success_score
        self.quests.count * 15
    end 

    def total_ricks_used
        self.ricks.uniq.count
    end

    def total_morties_used
        self.morties.uniq.count
    end

    def percent_ricks_killed
    "#{((self.ricks_killed / self.ricks.count.to_f) * 100).round(2)}%"
    end 

    def percent_morties_killed
        "#{((self.morties_killed / self.morties.count.to_f) * 100).round(2)}%"
    end

    def update_level
        new_level = completed_quests / 2
        self.update(level: new_level)
    end
    
    def self.ranked_users 
        User.all.sort_by{|user| user.quests_total_score}.reverse 
    end 

    def self.top_score_user 
       User.ranked_users.first
    end 

    def self.bottom_score_user 
        User.ranked_users.last   
    end 

    def user_arrow
        user_arrow = ""
        if self == User.top_score_user 
            user_arrow = "<< You're in first! Don't mess this up, broh."
        elsif self == User.bottom_score_user
            user_arrow = "<< You're in last place! You're basically Jerry."
        else 
            user_arrow = "<< This is you. Why aren't you winning??"
        end 
    end 


end
