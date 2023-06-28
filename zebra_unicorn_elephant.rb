#The Community Development Project

# File 1

#define project goals
PROJECT_GOALS = ['Increase educational improvement opportunities', 'Promote economic development', 'Enhance quality of life for all community members']

class CommunityDevelopmentProject
  #define project class
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  #define project goals
  def set_goals
    goals = []
    PROJECT_GOALS.each do |goal|
      goals << goal
    end
    goals
  end
  
  #create project budget
  def create_budget(funding)
    @budget = funding
  end

  #define project timeline
  def set_timeline
    timeline = []
    7.times do |x|
      timeline << x + 1
    end
    timeline
  end
  
  #track progress of project
  def track_progress
    progress = []

    7.times do |x|
      progress << "Week #{x+1}: #{rand(100)}"
    end

    progress
  end
  
  #create project report
  def create_report
    report = {
      'goals' => set_goals,
      'budget' => @budget,
      'timeline' => set_timeline,
      'progress' => track_progress  
    }
  end

end

#create instance of Project
project = CommunityDevelopmentProject.new('The Community Development Project')

#set project budget
project.create_budget(10000)

#generate project report
puts project.create_report