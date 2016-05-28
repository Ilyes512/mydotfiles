<?php

/**
 * Note:
 * `-psr0` was added because laravel does not adhere to psr0. It kept changing `use
 * App\...` to `use app\...`. See https://github.com/benmatselby/sublime-phpcs/issues/135
 * for more info.
 */

return \Symfony\CS\Config\Config::create()
    ->level(Symfony\CS\FixerInterface::PSR2_LEVEL)
    ->fixers([
        '-psr0',
        'align_double_arrow',
        'align_equals',
        'array_element_no_space_before_comma',
        'array_element_white_space_after_comma',
        'double_arrow_multiline_whitespaces',
        'double_arrow_multiline_whitespaces',
        'multiline_array_trailing_commas',
        'extra_empty_lines',
        'function_typehint_space',
        'list_commas',
        'namespace_no_leading_whitespace',
        'new_with_braces',
        'no_empty_lines_after_phpdocs',
        'object_operator',
        'operators_spaces',
        'phpdoc_no_empty_return',
        'phpdoc_params',
        'phpdoc_scalar',
        'phpdoc_types',
        'remove_leading_slash_use',
        'remove_lines_between_uses',
        'return',
        'self_accessor',
        'short_bool_cast',
        'single_array_no_trailing_comma',
        'single_blank_line_before_namespace',
        'single_quote',
        'spaces_before_semicolon',
        'spaces_cast',
        'standardize_not_equal',
        'ternary_spaces',
        'unused_use',
        'whitespacy_lines',
    ]);

