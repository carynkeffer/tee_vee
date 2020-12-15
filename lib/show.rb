 class Show
   attr_reader :name,
               :creator,
               :characters
   def initialize(name, creator, characters)
     @name = name
     @creator = creator
     @characters = characters
   end

   def collective_salaries
     total = []
     characters.each do |character|
       total << character.salary
     end
     total
   end

   def total_salary
     collective_salaries.sum
   end

   def highest_paid_actor
     highest = []
     characters.each do |character|
       highest << character.actor if character.salary == collective_salaries.max
     end
     highest[0]
   end

   def actors
     actor_names = []
     characters.each do |character|
       actor_names << character.actor
     end
     actor_names
   end
 end
