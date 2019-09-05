module ApplicationHelper
    def flash_class(level)
        case level
            when 'error' then "ui red message"
            when 'success' then "ui green message"
            when 'info' then "ui blue message"
        end
      end
end
