module ApplicationHelper
    #Add layouts content
    def title
    base_title = "Action+  Missions humanitaires"
    if @title.nil?
    base_title
    else
    "#{@title} | #{base_title}"
    end
    end

    #site description
    def description
    "Action+ ......"
    end

    def keywords
    "Faire un don, don, association, ong, donner, don en ligne, don sécurisé, soutenir, donation, make a donation"
    end
end
