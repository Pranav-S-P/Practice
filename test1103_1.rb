require_relative 'stack_implement.rb'

stack_object=Stackss.new
while true
    puts "What operation would u want to perform\n\n1.Push\n2.Pop\n3.Peak\n4.Size\n5.Quit\n\n Enter your Choice Number : "
    choice_of_operation=gets.chomp()
    case choice_of_operation
    when '1'
        puts "\nEnter the element to be Pushed into the stack: "
        inp=gets.chomp()
        stack_object.push_stack(inp)
    when '2'
        if stack_object.size_of_stack==0
            puts "The stack is empty"
        else
            stack_object.pop_stack
        end
    when '3'
        if stack_object.size_of_stack==0
            puts "The stack is empty"
        else
            puts "Top of Stack => #{stack_object.top_of_stack}"
        end
    when '4'
        puts "Size of stack = #{stack_object.size_of_stack}"
    when '5'
        puts "\n Quitting...\n\n"
        break
    else
        puts "\nInvalid Choice!\n\n"
    end
end