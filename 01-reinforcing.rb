require 'pry'
emotions = {
  happiness: 3,
  stress: 2,
  fear: 1
}

class Person
    def initialize(name, emotions)
      @name = name
      @emotions = emotions
    end

    def message_feeling
      @emotions.each do |k, v|
        if v == 3
          amount = "high"
        elsif v == 2
          amount= "medium"
        elsif v == 1
          amount = "low"
        end
        puts "My names is #{@name}. I am feeling a #{amount} amount of #{k}."
      end
    end
    # def message_feeling
    #   @emotions.each do |k, v|
    #     case v
    #     when 3
    #       amount = "high"
    #     when 2
    #       amount = "medium"
    #     when 1
    #       amount = "low"
    #     end
    #     puts "My names is #{@name}. I am feeling a #{amount} amount of #{k}."
    #   end
    # end
end

john = Person.new("John", emotions)
john.message_feeling.inspect

puts emotions[2]
