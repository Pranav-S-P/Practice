class Stackss
    attr_accessor :lis

    def initialize
        @lis=[]
    end

    def pushes(a)
        @lis.append(a)
    end

    def popes()
        if @lis.length==0
            puts "\nNo element in the stack"
        else
            @lis.pop
        end
    end

    def topes()
        if @lis.length==0
            puts "\nNo element in the stack"
        else
            puts "\nThe top of stack is #{@lis[@lis.length-1]}"
        end
    end
end

l=Stackss.new
while true
    puts "What operation would u want to perform\n\n1.Push\n2.Pop\n3.Peak\n4.Quit\n\n Enter your Choice Number : "
    b=gets.chomp()
    case b
    when '1'
        puts "\nEnter the element to be Pushed into the stack: "
        inp=gets.chomp()
        l.pushes(inp)
    when '2'
        l.popes()
    when '3'
        l.topes()
    when '4'
        puts "Quitting..."
        break
    else
        "\nInvalid Choice!"
    end
end