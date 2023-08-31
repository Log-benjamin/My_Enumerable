module MyEnumerable
    # all? method
    def all?
      each do |e|
        return false unless yield(e)
      end
      true
    end
  
    # any? method
    def any?
      each do |e|
        return true if yield(e)
      end
      false
    end
    
    # filter method
    def filter
      result = []
      each do |e|
        result << e if yield(e)
      end
      result
    end
  end