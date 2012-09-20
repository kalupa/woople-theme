require 'explicit_delegator'

module WoopleTheme
  class VideoPresenter < ExplicitDelegator
    enforce_definitions :desktop_src, :mobile_src, :liked?

    def liked_css
      liked? == true ? 'active' : nil
    end

    def disliked_css
      liked? == false ? 'active' : nil
    end
  end
end
