module HomesHelper
  def popover_history_button(year, placement, title, content)
    button_tag year, :class => "btn btn-default history_button", 
      "data-container" => "body", 
      'data-toggle' => "popover", 
      "data-placement" => placement, 
      "title" => title, 
      "data-content" => content
  end
end
