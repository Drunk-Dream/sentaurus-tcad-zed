
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
(at_angle_expression
    (binop_expr
        (identifier) @variable))
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
