def pushes(l,a)
    l.append(a)
end

def popes(l)
    if l.length!=0
        l.pop
    end
end

def topes(l)
    if l.length!=0
        return l[l.length-1]
    end
end

def checks(l,a)
    for i in 0..a.length-1
        if a[i]=='{' || a[i]=='[' || a[i]=='('
            pushes(l,a[i])
        else
            if (a[i]==')' and topes(l)=='(') || (a[i]=='}' and topes(l)=='{') || (a[i]==']' and topes(l)=='[')
                popes(l)
            elsif a[i]==')' or a[i]=='}' or a[i]==']'
                return false
            end
        end
    end
    if l.length!=0
        return false
    end
    return true
end

l=[]
puts "Enter the brackets string input here : "
a=gets.chomp()
if checks(l,a)
    puts "The Equation has balanced brackets"
else
    puts "The Equation does not have balanced brackets"
end