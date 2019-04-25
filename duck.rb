class Duck

  @@greeting = "Hello" #переменная класса

  def initialize(greeting)
    @greeting = greeting #инстансная переменная
  end

  def quack
    puts "#{@@greeting} #{@greeting}"
  end

  class << self
    attr_accessor :greeting

    def quack
      puts "#{@@greeting} #{@greeting}" #@greeting - инстансная переменная класса
    end
  end
end
