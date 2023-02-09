def group_by_marks(marks, pass_marks)
    marks.group_by { |key, value| value >= pass_marks ? "Passed" : "Failed" }.reject { |key, value| value.empty? }
end
