require 'date'

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "What should I do?"
    @text = STDIN.gets.chomp

    puts "Date (day_month_year)"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Deadline: #{@due_date}"

    return [deadline, @text, time_string]
  end
end