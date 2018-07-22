# paper givne house number to start at + house number finish
# 0.25 per paper delivery
# 0.50 per delivery PAST QUOTA
# NO QUOTA? LOSE $2
# Quota = 50
# Quota = half experience added to minimum



class Paperboy

  attr_reader :name, :experience, :earnings

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0
  end


  def quota
    quota = 50
    (@experience / 2) + quota
  end

  def deliver(start_address, end_address)
    deliveries = 0
    earnings = 0
    (start_address..end_address).each do |house_number|
      deliveries += 1
      if deliveries <= quota
        earnings += 0.25
      else
        earnings += 0.50
      end
    end
    if deliveries < quota
      earnings -= 2
    end
    @experience += deliveries
    @earnings += earnings
    earnings
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers total and I've earned $#{@earnings} so far!"
  end

end


sam = Paperboy.new("Sam")

sam.quota
sam.deliver(101, 160)
sam.earnings
sam.report

jon = Paperboy.new("Jon")

jon.quota
jon.deliver(999, 1999)
jon.earnings
jon.report
