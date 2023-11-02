
class Employee
    attr_accessor :employee_id, :name
  
    def initialize(employee_id, name)
      @employee_id = employee_id
      @name = name
    end
  
    def assign_task(task)
      task.assign_to(self)
    end
  end
  
  class Task
    attr_accessor :task_id, :description, :assigned_employee
  
    def initialize(task_id, description)
      @task_id = task_id
      @description = description
      @assigned_employee = nil
    end
  
    def assign_to(employee)
      @assigned_employee = employee
    end
  end
  
  # Create employees
  employee1 = Employee.new(1, "Amit")
  employee2 = Employee.new(2, "amit")
  
  # Create tasks
  task1 = Task.new(101, "Complete project A")
  task2 = Task.new(102, "Prepare presentation for meeting")
  
  # Assign tasks to employees
  employee1.assign_task(task1)
  employee2.assign_task(task2)
  
  puts "Task 1 assigned to #{task1.assigned_employee.name}" if task1.assigned_employee
  puts "Task 2 assigned to #{task2.assigned_employee.name}" if task2.assigned_employee