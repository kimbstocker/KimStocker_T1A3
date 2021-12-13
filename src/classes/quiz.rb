
$operators = ["+", "-", "*"]
$single_digit_numbers = (1..9).to_a
$double_digit_numbers = (10..99).to_a
$triple_digit_numbers = (100..999).to_a

class Quiz

    attr_accessor :correct_answers
    attr_accessor :user_answers

    def initialize(level)
        @level = level
        @correct_answers = []
        @user_answers = []
    end

    def random_question
        

        if @level == 1
            i = 1
            while i <= 10 
                @first_num = $single_digit_numbers.sample
                @second_num = $single_digit_numbers.sample
                @third_num = $double_digit_numbers.sample
                @first_operator = $operators.sample
                @second_operator = $operators.sample
                question = "Q#{i}) #{@first_num} #{@first_operator} #{@second_num} #{@second_operator} #{@third_num}"
                answer = eval("#{@first_num} #{@first_operator} #{@second_num} #{@second_operator} #{@third_num}")
                @correct_answers << answer
                puts question
                input = gets.chomp.to_i
                    if input == answer
                        puts "Right"
                    else
                        puts "Wrong"
                    end
                @user_answers << input
                i += 1
            end
        end
    end
end
