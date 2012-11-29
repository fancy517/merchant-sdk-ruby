module CheckSample

  def get_response_value(key)
    if find(:id, 'response').text =~ /#{key}: ([^\s]*)/
      $1.dup
    end
  end

  def check_sample(name, &block)
    click_link name
    self.instance_eval(&block) if block
    click_button "Submit"
    page.should have_content("Ack: Success")
  end

  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    def it_check_sample(name,  &block)
      it name do
        check_sample(name, &block)
      end
    end
  end

end
