<?php

return \Symfony\CS\Config\Config::create()
    ->level(Symfony\CS\FixerInterface::PSR2_LEVEL)
    ->fixers([
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
    ]);

