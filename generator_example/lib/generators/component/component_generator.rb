class ComponentGenerator < Rails::Generators::NamedBase
  # Creating a custom generator:
  # rails g generator MyComponent

  source_root File.expand_path('templates', __dir__)

  check_class_collision suffix: 'Component'

  def create_component_file
    # Template method
    # First argument is the name of the template
    # Second argument is where to create the resulting file. In this case, app/components/my_component.rb
    template 'component.rb', File.join('app/components', "#{file_name}.rb")
  end

  private

  # Example method that can be invoked from the template
  def my_method
    'some string'
  end
end
