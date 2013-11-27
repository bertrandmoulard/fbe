@pieChart = ($element) ->
  new Chart($element.get(0).getContext("2d")).Pie([
    {
      value: $element.data("yes")
      color: "#57BA49"
    },
    {
      value: $element.data("no")
      color: "#BA1C1B"
    }
  ])
