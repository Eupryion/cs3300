module ProjectsHelper
    def link_to_widget(widget)
      link_to(widget.name, widget_path(widget))
    end
  end