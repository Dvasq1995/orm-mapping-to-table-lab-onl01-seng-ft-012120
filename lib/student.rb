class Student
  attr_accessor :name, :grade
  attr_reader :id
  
  @@all = []
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.create_table
    sql = "CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY, name TEXT, grade TEXT);"
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = "DROP TABLE students;"
    DB[:conn].execute(sql)
  end
  
  def save
    sql = "INSERT INTO students (name, grade) VALUES (?, ?);"
  end
  
  def self.create
    
  end
end
