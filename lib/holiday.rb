require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season, holiday|
  puts "#{season.capitalize}:"
  holiday.each {|holiday, supplies|
    puts "  #{holiday.to_s.split("_").collect(&:capitalize).join(' ')}: #{supplies.join ", "}"}
  }
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = []
  holiday_hash.each {|season, holiday|
    holiday.each{|holiday, supply|
      if supply.include?("BBQ")
        holidays_with_bbq << holiday
        holidays_with_bbq
      end}}
  holidays_with_bbq
end
