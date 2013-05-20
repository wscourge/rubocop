# encoding: utf-8

require 'rainbow'
require 'English'
require 'parser/current'
require 'ast/sexp'

require 'rubocop/cop/util'
require 'rubocop/cop/offence'
require 'rubocop/cop/cop'
require 'rubocop/cop/encoding'
require 'rubocop/cop/line_length'
require 'rubocop/cop/line_continuation'
require 'rubocop/cop/syntax'
require 'rubocop/cop/tab'
require 'rubocop/cop/trailing_whitespace'
require 'rubocop/cop/case_indentation'
require 'rubocop/cop/empty_line_between_defs'
require 'rubocop/cop/empty_lines'
require 'rubocop/cop/surrounding_space'
require 'rubocop/cop/space_after_comma_etc'
require 'rubocop/cop/space_after_control_keyword'
require 'rubocop/cop/hash_syntax'
require 'rubocop/cop/end_of_line'
require 'rubocop/cop/numeric_literals'
require 'rubocop/cop/align_parameters'
require 'rubocop/cop/def_parentheses'
require 'rubocop/cop/if_then_else'
require 'rubocop/cop/blocks'
require 'rubocop/cop/parameter_lists'
require 'rubocop/cop/string_literals'
require 'rubocop/cop/ternary_operator'
require 'rubocop/cop/unless_else'
require 'rubocop/cop/ampersands_pipes_vs_and_or'
require 'rubocop/cop/when_then'
require 'rubocop/cop/favor_modifier'
require 'rubocop/cop/favor_unless_over_negated_if'
require 'rubocop/cop/new_lambda_literal'
require 'rubocop/cop/parentheses_around_condition'
require 'rubocop/cop/method_and_variable_snake_case'
require 'rubocop/cop/class_and_module_camel_case'
require 'rubocop/cop/collection_methods'
require 'rubocop/cop/avoid_for'
require 'rubocop/cop/avoid_perlisms'
require 'rubocop/cop/avoid_perl_backrefs'
require 'rubocop/cop/avoid_global_vars'
require 'rubocop/cop/avoid_class_vars'
require 'rubocop/cop/symbol_name'
require 'rubocop/cop/constant_name'
require 'rubocop/cop/variable_interpolation'
require 'rubocop/cop/semicolon'
require 'rubocop/cop/favor_sprintf'
require 'rubocop/cop/favor_join'
require 'rubocop/cop/alias'
require 'rubocop/cop/rescue_modifier'
require 'rubocop/cop/percent_literals'
require 'rubocop/cop/ensure_return'
require 'rubocop/cop/handle_exceptions'
require 'rubocop/cop/rescue_exception'
require 'rubocop/cop/ascii_identifiers'
require 'rubocop/cop/ascii_comments'
require 'rubocop/cop/block_comments'
require 'rubocop/cop/empty_literal'
require 'rubocop/cop/method_length'
require 'rubocop/cop/op_method'
require 'rubocop/cop/reduce_arguments'
require 'rubocop/cop/percent_r'
require 'rubocop/cop/favor_percent_r'
require 'rubocop/cop/class_methods'
require 'rubocop/cop/single_line_methods'
require 'rubocop/cop/word_array'
require 'rubocop/cop/symbol_array'
require 'rubocop/cop/trivial_accessors'
require 'rubocop/cop/leading_comment_space'
require 'rubocop/cop/colon_method_call'
require 'rubocop/cop/not'
require 'rubocop/cop/eval'
require 'rubocop/cop/access_control'

require 'rubocop/report/report'
require 'rubocop/report/plain_text'
require 'rubocop/report/emacs_style'

require 'rubocop/config'
require 'rubocop/config_store'
require 'rubocop/cli'
require 'rubocop/version'
