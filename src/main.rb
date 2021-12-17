require 'colorize'
require "tty-prompt"
require_relative './classes/quiz.rb'
require_relative './classes/error-handling.rb'
require_relative './methods.rb'


if ARGV.length > 0 
    flag, *rest = ARGV 
    ARGV.clear
    case flag
    when '-help'
        puts "-r username level        :shortcut to start the Quiz (username: your username, level: 1, 2 or 3 only)"
        puts "-info                    :to view history of the app and developer information"
        exit
    when '-info'
        puts "This terminal application namely 'Mad Math Quiz' is written by Kim Stocker in December - 2021 for CoderAcademy Full-stack Developer Course - Term 1 assignment"
        puts "This app was written in Ruby from scratch. It was finished in 1 week"
        puts "For more info, please visit https://github.com/kimbstocker/KimStocker_T1A3"
        exit
    when '-r' 
        if rest[1] == '1' || rest[1] == '2' || rest[1] == '3'
        quiz = Quiz.new(rest[0], rest[1])
            quiz.run_quiz
        end
    else 
        puts "Invalid argument, please check Readme file for more info"
        exit 
    end
end 


while true
    begin
        puts "                     *** Disclaimer ***".red
        puts "Your score will be stored in the system at the end of the Quiz.".red
        puts "User a nickname or quit at anytime if you dont want your details to be stored".red
        puts "You can enter 'q' to quit at anytime during the Quiz!".red
        puts "                     *** Disclaimer ***".red
        prompt = TTY::Prompt.new
        level_choices = {Easy: "1", Medium: "2", Hard: "3", Quit: "q"}
        user_choice = prompt.select("Welcome to Mad Math Quiz! Please choose your difficulty level?", level_choices)
        if user_choice == "q"
            exit_message
        elsif user_choice == "1" || user_choice == "2" || user_choice == "3"
            scoreboard = Scoreboard.new("scoreboard/scoreboard#{user_choice}.json")
            scoreboard.read_file
            begin puts "Let's get started with a username, enter anything and it will be your username for this application!".magenta
                username = gets.chomp.downcase
                scoreboard.all_user_scores.each do |k,v|
                    if "#{k}" == username
                        raise ValidationError.new("This username has already been taken, please chooose another one.")
                    end
                end
            rescue ValidationError => e
                puts e.message.red 
                retry 
            end
            puts "*** Welcome to Mad Math Quiz - Level: #{user_choice} - Username: #{username.capitalize} ***".light_blue
            quiz = Quiz.new(username, user_choice, scoreboard)
            quiz.run_quiz

            scoreboard.update_score(username, quiz.total_score)
            scoreboard.write_file
        end
        
    rescue ValidationError => e
        puts e.message.red 
        retry 
    end
end



 



