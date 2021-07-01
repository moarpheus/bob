require 'byebug'

class Bob
  class << self
    def hey remark
      case
      when shouting?(remark)
        "Whoa, chill out!"
      when silence?(remark)
        return "Fine. Be that way!"
      when question?(remark)
        return "Sure."
      end
    end

    private

    def silence? remark
      result = (remark =~ /\s/)
      return false if (result.nil?) || (result == 0)
      true
    end

    def question? remark
      result = (remark =~ /\?/)
      return false if (result.nil?) || (result == 0)
      true
    end

    def shouting? remark
      remark == remark.upcase
    end
  end
end
