(comment) @comment

[
  (double_quoted_string)
  (single_quoted_string)
  (double_fenced_string)
  (single_fenced_string)
] @string

(escape_sequence) @string.escape

; Keys come after strings: in Zed the later pattern wins for the same node.
(path (bare_key) @property)
(path (double_quoted_string) @property)
(path (single_quoted_string) @property)

(number) @number

[
  (true)
  (false)
] @boolean

(null) @constant.builtin

[
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ","
  ":"
  "."
] @punctuation.delimiter

[
  "-"
  "---"
] @punctuation.special
