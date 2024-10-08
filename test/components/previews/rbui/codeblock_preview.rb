# frozen_string_literal: true

module RBUI
  class CodeblockPreview < Lookbook::Preview
    # Default Codeblock
    # ---------------
    def default
      code = <<~CODE
        def hello_world
        	puts "Hello, world!"
        end
      CODE

      render(TestView.new) do
        Codeblock(code, syntax: :ruby)
      end
    end
  end
end
