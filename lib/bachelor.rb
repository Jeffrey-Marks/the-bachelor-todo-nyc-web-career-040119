require 'pry'


def get_first_name_of_season_winner(data, season)
  winner_name = ""
  
  data.each do |season_num, contestants|
    if season.to_s == season_num.to_s
      for contestant in contestants
        if contestant["status"] == "Winner"
          winner_name = contestant["name"].split(" ")[0]
        end
      end
    end
  end

  winner_name
end


def get_contestant_name(data, occupation)
  name = ""

  data.each do |season, contestants|
    contestants.each do |attribute|      
      if attribute["occupation"] == occupation
        name = attribute["name"]
      end
    end
  end

  name
end


def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, contestants|
    contestants.each do |attribute|      
      if attribute["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end


def get_occupation(data, hometown)
  occupation = ""

  data.each do |season, contestants|
    contestants.each do |attribute|      
      if attribute["hometown"] == hometown
        occupation = attribute["occupation"]
      end
    end
  end

  occupation
end

# def get_average_age_for_season(data, season)
#   # code here
# end
