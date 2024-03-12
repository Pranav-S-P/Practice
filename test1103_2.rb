require_relative 'stack_implement.rb'

def checks(l,a)
    for i in 0..a.length-1
        if a[i]=='{' || a[i]=='[' || a[i]=='('
            l.push_stack(a[i])
        else
            if (a[i]==')' and l.top_of_stack=='(') || (a[i]=='}' and l.top_of_stack=='{') || (a[i]==']' and l.top_of_stack=='[')
                l.pop_stack
            elsif a[i]==')' or a[i]=='}' or a[i]==']'
                return false
            end
        end
    end
    if l.size_of_stack!=0
        return false
    end
    return true
end

stack_object=Stackss.new
puts "Enter the brackets string input here : "
bracket_input=gets.chomp()
if checks(stack_object,bracket_input)
    puts "The Equation has balanced brackets"
else
    puts "The Equation does not have balanced brackets"
end