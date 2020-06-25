
require_relative '../lib/project.rb'

class Backer
  attr_accessor :name, :backed_projects


  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) #adds backer (self = the backer instance) to pass
  end



end
