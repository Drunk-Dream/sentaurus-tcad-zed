(string) @string
(at_reference) @variable
(comment) @comment
(number) @number
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
