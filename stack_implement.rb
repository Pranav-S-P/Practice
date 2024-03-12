class Stackss
    attr_accessor :lis

    def initialize
        @lis=[]
    end

    def push_stack(a)
        @lis.append(a)
    end
    
    def pop_stack()
        if @lis.length!=0
            @lis.pop
        end
    end
    
    def top_of_stack()
        if @lis.length!=0
            return @lis[@lis.length-1]
        end
    end

    def size_of_stack()
        return @lis.length
    end
end