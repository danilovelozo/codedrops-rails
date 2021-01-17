require 'test_helper'
require 'generators/component/component_generator'

class ComponentGeneratorTest < Rails::Generators::TestCase
  tests ComponentGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  def test_component_is_created
    run_generator ['my_component']
    assert_file 'app/components/my_component.rb' do |component|
      assert_match(/class MyComponent/, component)
    end
  end
end
