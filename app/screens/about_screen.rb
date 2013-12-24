class AboutScreen < ProMotion::Screen
  title 'About Blazers Highlights App'
  def on_load
    set_tab_bar_item system_icon: UITabBarSystemItemFeatured
  end

  def will_appear
    @view_is_set_up ||= begin
      set_attributes self.view, {
        backgroundColor: UIColor.whiteColor
      }

      draw_about_label

      true
    end
  end

  def on_appear

  end

  def draw_about_label
    add_element UILabel.alloc.initWithFrame(CGRectZero), {
        frame: CGRectMake(10, 50, self.bounds.size.width - 20, 80),
        textAlignment: UITextAlignmentCenter,
        textColor: UIColor.blackColor,
        font: UIFont.systemFontOfSize(24.0),
        lineBreakMode: UILineBreakModeWordWrap,
        numberOfLines: 0,
        text: "Shows interesting car videos."
      }
  end

end
