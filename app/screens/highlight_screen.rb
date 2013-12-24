class HighlightScreen < ProMotion::TableScreen
  title 'Highlights'

  def on_load
    set_tab_bar_item system_icon: UITabBarSystemItemContacts
  end

  def will_appear

  end

  def on_appear

  end

  def table_data
    [{
      title: '',
      cells: highlight_cells
    }]

  end

  def highlight_cells
    @highlight_cells ||= begin
      highlights = Highlight.all
      cells = []

      highlights.each do |h|
        cells << {
          title: h.name,
          action: :launch_video,
          arguments: { url: h.url }
        }
      end
      cells
    end
  end

  def launch_video(args={})
    videos = HCYoutubeParser.h264videosWithYoutubeURL(NSURL.URLWithString(args[:url]))
    mp = MPMoviePlayerViewController.alloc.initWithContentURL(NSURL.URLWithString(videos["medium"]))
    # open mp, modal: true
    self.presentMoviePlayerViewControllerAnimated(mp)
  end
end
