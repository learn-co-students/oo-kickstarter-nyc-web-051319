require_relative '../lib/backer.rb'

# class Project
#   attr_accessor :backers
#   attr_reader :title
#
#   def initialize(title)
#     @title = title
#     @backers = []
#   end
#
#   def add_backer(backer)
#       @backers << backer
#       if !backer.backed_projects.include?(self)
#         backer.backed_project (self) # adds Project (self = the Project instance) to backer's @backed_projects array
#       end
#   end
# end


class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)
      backer.back_project(self) # adds Project (self = the Project instance) to backer's @backed_projects array
    end
  end

end
