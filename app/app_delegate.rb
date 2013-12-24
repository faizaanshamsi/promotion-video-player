class AppDelegate < ProMotion::Delegate

  def on_load(app, options)
    open_tab_bar AboutScreen, HighlightScreen
  end
end
