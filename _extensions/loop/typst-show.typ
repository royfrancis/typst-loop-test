#show: sheet.with(

  $if(labels)$
    labels: (
    $for(labels)$
    (
      line1: "$it.line1$",
      line2: "$it.line2$",
      line3: "$it.line3$",
      line4: "$it.line4$",
    )$sep$,
    $endfor$,
    ),
  $endif$

)
