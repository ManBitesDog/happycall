module HappyCallsHelper
  def nl2br(s)
    s.gsub(/\n/, '<br>')
    end
end
