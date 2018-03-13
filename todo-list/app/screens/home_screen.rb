class HomeScreen < PM::DataTableScreen
  title "Todo - List"
  stylesheet HomeScreenStylesheet
  model Task 

  def on_load
    set_nav_bar_button :left, title: "Clear-List", action: :clear_list
    set_nav_bar_button :right, title: "Add Task", action: :add_task
  end

  def clear_list
    mp 'Cleared'
    Task.all.each do |task|
      task.destroy
    end 
    cdq.save 
  end

  def add_task 
    mp 'Added'
    Task.create(name: "Task Title")
    cdq.save 
  end

  # You don't have to reapply styles to all UIViews, if you want to optimize, another way to do it
  # is tag the views you need to restyle in your stylesheet, then only reapply the tagged views, like so:
  #   def logo(st)
  #     st.frame = {t: 10, w: 200, h: 96}
  #     st.centered = :horizontal
  #     st.image = image.resource('logo')
  #     st.tag(:reapply_style)
  #   end
  #
  # Then in will_animate_rotate
  #   find(:reapply_style).reapply_styles#

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
