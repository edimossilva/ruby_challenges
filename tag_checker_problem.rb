class TagCheckerProblem
  def solve(paragraph)
    tags_list = paragraph.scan(/<\/*[A-Z]>/)
    opening_tags = []

    tags_list.each do |tag|
      if open_tag?(tag)
        opening_tags.push(tag)
      else
        if opening_tags.empty?
          return message(nil, tag)
        elsif same_letters?(opening_tags.last, tag)
          opening_tags.pop
        else
          return message(opening_tags.last, tag)
        end
      end
    end

    return message(nil, nil) if (opening_tags.empty?)

    return message(opening_tags.last, nil)

  end

  private
  def open_tag?(tag)
    tag[/<[A-Z]>/] ? true : false
  end

  def same_letters?(letter_opening_tag, letter_closing_tag)
    to_letter(letter_opening_tag) == to_letter(letter_closing_tag)
  end

  def to_letter(tag)
    tag[/[A-Z]/]
  end

  def to_closing_tag(tag)
    tag.insert(1,'/')
  end

  def message(open_tag, close_tag)
    if (open_tag.nil? && close_tag.nil?)
      "Correctly tagged paragraph"
    else
      first = open_tag.nil? ? '#' : to_closing_tag(open_tag)
      second = close_tag.nil? ?  '#' : close_tag
      "Expected #{first} found #{second}"
    end
  end
end

# USAGE_EXAMPLES
# ruby ./tag_checker_problem.rb "</B><B>"
# ruby ./tag_checker_problem.rb "<B>"
# ruby ./tag_checker_problem.rb "</B>"
# ruby ./tag_checker_problem.rb "<B><C>This should be centred and in boldface, but there isa missing closing tag</C>"
# ruby ./tag_checker_problem.rb "<B>This should be in boldface, but there is an extra closingtag</B></C>"
# ruby ./tag_checker_problem.rb "<B><C> This should be centred and in boldface, but thetagsare wrongly nested </B></C>"
# ruby ./tag_checker_problem.rb "<B>This <\g>is <B>boldface</B> in <<*> a</B> <\6> <<d>sentence"
# ruby ./tag_checker_problem.rb 'The following text<C><B>is centred and in boldface</B></C>'
# ruby ./tag_checker_problem.rb '<B><C>This should be in boldface, but there is an extra closingtag</C>'
# ruby ./tag_checker_problem.rb '<B>This should be in boldface, but there is an extra closingtag</C>'
# ruby ./tag_checker_problem.rb '<B>This <A>should</A> be in <F>boldface,</F> but there is an extra closingtag</B></C></D>'

puts TagCheckerProblem.new.solve(ARGV[0])


