class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What do you want to do?"
      puts "1 - List all tasks"
      puts "2 - Add a new task"
      puts "3 - Update a task"
      puts "4 - Delete a task"
      puts "5 - Quit"
      action = gets.chomp.to_i

      case action
      when 1 then @controller.all_tasks
      when 2 then @controller.create_task
      when 3 then @controller.complete_task
      when 4 then @controller.delete_task
      when 5 then break
      else
        "Wrong action!"
      end
    end
  end
end
