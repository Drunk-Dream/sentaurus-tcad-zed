(sharp_command_name) @proproc
(define_micro
    name: (identifier) @constant)
(section_statement
    name: (identifier) @keyword
    (#any-of? @keyword
        "File"
        "Electrode"
        "Physics"
        "Math"
        "Plot"
        "CurrentPlot"
        "Solve"))
(key_value
    key: (identifier) @constant
    ; (#any-of? @constant
    ;     "Grid"
    ;     "Parameter"
    ;     "Plot"
    ;     "Current"
    ;     "Output"
    ;     "Name"
    ;     "Voltage"
    ;     "Workfunction"
    ;     "Voltage"
    ;     "PMI")
    value: [
        (identifier) @variable
        (_)])
(section_statement
    ["{" "}"] @punctuation.bracket)
(binop_expr
    (identifier) @variable)
[
 "**"
 "/" "*" "%" "+" "-"
 "<<" ">>"
 ">" "<" ">=" "<="
 "==" "!="
 "eq" "ne"
 "in" "ni"
 "&"
 "^"
 "|"
 "&&"
 "||"
    ] @operator
(string) @string
(number) @number
(at_reference) @variable
(comment) @comment
