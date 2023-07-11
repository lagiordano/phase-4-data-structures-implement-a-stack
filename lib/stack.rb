# your code here
class Stack 
    attr_accessor :stack
    attr_reader :limit

    def initialize(limit=nil)
        @stack = []
        @limit = limit
    end

    def push value 
        if stack.length == limit
            raise Exception.new "Stack Overflow"
        else
            stack.push value
        end
    end

    def pop 
        stack.pop
    end

    def peek 
        stack[stack.length - 1]
    end

    def size 
        stack.length
    end

    def empty? 
        stack.length == 0 ? true : false
    end

    def full?
        stack.length == limit ? true : false 
    end

    def search target
        target_index = stack.index(target) 
        target_index ? (self.size - 1) - target_index : -1
    end

end