module PhasesHelper

    def nav_link(phase)
        link_to phase.name, phase_path(phase), class: 'dropdown-item'
    end

    def display_phase_pill(phase)
        if phase.name == "CLI"
            content_tag(:p, phase.name, class: ["badge", "rounded-pill", "bg-warning", "text-dark"])
        elsif phase.name == "Sinatra"
            content_tag(:p, phase.name, class: ["badge", "rounded-pill", "bg-info", "text-dark"])
        elsif phase.name == "Rails"
            content_tag(:p, phase.name, class: ["badge", "rounded-pill", "bg-primary"])
        elsif phase.name == "Rails & Javascript"
            content_tag(:p, phase.name, class: ["badge", "rounded-pill", "bg-success"])
        elsif phase.name == "Final"
            content_tag(:p, phase.name, class: ["badge", "rounded-pill", "bg-danger"])
        end
    end

end
