# your code here
class Stack 
    attr_accessor :stack
    attr_reader :limit

    def initialize(limit=nil)
        @stack = []
        @limit = limit
    end

    def push value 
        raise 'Stack Overflow' if full? 
        stack.push value
    end

    def pop 
        stack.pop
    end

    def peek 
        stack.last
    end

    def size 
        stack.length
    end

    def empty? 
        stack.empty?
    end

    def full?
        limit && stack.size == limit 
    end

    def search target
        target_index = stack.index(target) 
        target_index ? (self.size - 1) - target_index : -1
    end

end