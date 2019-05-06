require 'pry'

holiday_hash ={
  :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"],
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].values
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, event|
    the_season = season.to_s
    the_season = the_season.capitalize!
    holiday_key = event.keys
    i = 0
    puts "#{the_season}:"
    while (i < holiday_key.size) 
      holiday_key_str = holiday_key[i].to_s
      holiday_word_array = holiday_key_str.split("_")
      j =0 
      
      holiday_word = []
      #  ["Christmas"] ["New", "Years"]
      while (j < holiday_word_array.size)  
        holiday_word << holiday_word_array[j].capitalize!
        j +=1
      end
      holiday_word = holiday_word.join(" ")
    
      puts "  #{holiday_word}: #{holiday_hash[season][holiday_key[i]].join(', ')}"
      i +=1
      # binding.pry
    end 

  end
end
# all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_name_with_bbq = []
  holiday_hash.each do |season, event|
    event.each do |name, item|
      if event.values.flatten.include?('BBQ')
        # binding.pry
        holiday_name_with_bbq << event.keys
      end
    end
  end
  holiday_name_with_bbq.flatten
end

# all_holidays_with_bbq(holiday_hash)






