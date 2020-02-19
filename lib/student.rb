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
    sql = ""
  end
  
  def save
    
  end
  
  def self.create
    
  end
end
