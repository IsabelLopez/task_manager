require_relative "task"

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def create_task
    # 1. ask the user for the task name (view)
    task_name = @view.ask_task_name

    # 2. create new task (Task class)
    task = Task.new(task_name)

    # 3. add the task to repository (Repository.rb)
    @repository.add(task)
  end

  def all_tasks
    # 1. get all tasks[] (Repository.rb)
    tasks = @repository.all

    # 2. list all tasks (View)
    @view.list_all_tasks(tasks)
  end

  def complete_task
    # 1. ask the user for the index (View)
    index = @view.ask_task_index('update')

    # 2. look for that task (Repository)
    task = @repository.find(index)

    # 3. change the status (Task)
    task.completed
  end

  def delete_task
    # 1. ask the user for index (View)
    index = @view.ask_task_index('delete')

    # 3. destroy task (Repository)
    @repository.destroy(index)
  end

end
