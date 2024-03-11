l=[]
def pushes(l,a)
    l.append(a)
end

def popes(l)
    if l.length==0
        puts "\nNo element in the stack"
    else
        l.delete(l[l.length-1])
    end
end

def topes(l)
    if l.length==0
        puts "\nNo element in the stack"
    else
        puts "\nThe top of stack is #{l[l.length-1]}"
    end
end

while true
    puts "What operation would u want to perform\n\n1.Push\n2.Pop\n3.Peak\n4.Quit\n\n Enter your Choice Number : "
    b=gets.chomp()
    case b
    when '1'
        puts "\nEnter the element to be Pushed into the stack: "
        inp=gets.chomp()
        pushes(l,inp)
    when '2'
        popes(l)
    when '3'
        topes(l)
    when '4'
        puts "Quitting..."
        break
    else
        "\nInvalid Choice!"
    end
end