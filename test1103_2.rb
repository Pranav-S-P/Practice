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

# puts "Enter the brackets string input here : "
# bracket_input=gets.chomp()

file=File.open("input_bracket.txt")
lines_data=file.readlines.map(&:chomp)
seq_no=1
lines_data.each do |each_line|
    stack_object=Stackss.new
    if checks(stack_object,each_line)
        puts "#{seq_no}. The Equation has balanced brackets\n\n"
    else
        puts "#{seq_no}. The Equation does not have balanced brackets\n\n"
    end
end

