class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        pb_with_self = ProjectBacker.all.select do |project_backers| 
            project_backers.project == self
        end
        pb_with_self.map {|pb| pb.backer}
    end
end