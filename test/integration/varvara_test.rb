require 'test_helper'

class InheritNavigationTest < ActiveSupport::IntegrationCase

  setup do
    Capybara.current_driver = Capybara.javascript_driver
  end

  test 'default index' do
    visit('/varvara/routes')
    # save_and_open_page
    assert has_content?('foo_index')
    assert has_content?('/foo(.:format)')
    assert has_content?('foo#index')
  end

end
