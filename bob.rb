require 'byebug'

class Bob
  class << self
    def hey remark
      case
      when shouting?(remark)
        "Whoa, chill out!"
      when question?(remark)
        return "Sure."
      end
    end

    private

    def question? remark
      result = (remark =~ /\?/)
      return false if (result.nil?) || (result == 0)
      true
    end

    def shouting? remark
      remark == remark.upcase && remark.count("a-zA-Z") > 0
    end
  end
end
