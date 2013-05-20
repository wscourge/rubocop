# encoding: utf-8

module Rubocop
  module Cop
    class AccessControl < Cop
      INDENT_MSG = 'Indent private and protected as deep as method defs.'
      BLANK_MSG = 'Keep a blank line before and after private/protected.'

      PRIVATE_NODE = s(:send, nil, :private)
      PROTECTED_NODE = s(:send, nil, :protected)

      def inspect(file, source, tokens, ast)
        on_node([:class, :module, :sclass], ast) do |class_node|
          class_start_col = class_node.src.expression.column

          # we'll have to walk all class children nodes
          # except other class/module nodes
          class_node.children.compact.each do |node|
            on_node(:send, node, [:class, :module, :sclass]) do |send_node|
              if [PRIVATE_NODE, PROTECTED_NODE].include?(send_node)
                send_start_col = send_node.src.expression.column

                if send_start_col - 2 != class_start_col
                  add_offence(:convention,
                              send_node.src.line,
                              INDENT_MSG)
                end

                send_line = send_node.src.line

                unless source[send_line].empty? && source[send_line - 2].empty?
                  add_offence(:convention, send_line, BLANK_MSG)
                end
              end
            end
          end
        end
      end
    end
  end
end
