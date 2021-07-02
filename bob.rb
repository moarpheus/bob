require 'byebug'

class Bob
  class << self
    def hey remark
      case
      when shouting_question?(remark)
        "Calm down, I know what I'm doing!"
      when shouting?(remark)
        "Whoa, chill out!"
      when question?(remark)
        "Sure."
      end
    end

    private

    def shouting_question? remark
      (question?(remark) && shouting?(remark))
    end

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
