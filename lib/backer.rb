require 'pry'

class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        # binding.pry
        ProjectBacker.all.select {|project| project.backer == self}.map {|pb| pb.project}
    end
end