class View

  def ask_task_name
    puts "Whats the name of the task?"
    gets.chomp
  end

  def list_all_tasks(tasks)
    tasks.each_with_index do |task, index|
      status = task.completed? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{status} #{task.name}"
    end
  end

  def ask_task_index(action)
    puts "What task do you want to #{action}? (index)"
    gets.chomp.to_i - 1
  end
end
