// main
#let sheet(

  labels: ()
  
) = {

  set page(
    paper: "a4",
  )
  set text(16pt, font: "Public Sans", fill: rgb("#444444"))

  grid(
    ..labels.map(label => {
      let content = (
        if label.line1 != "" and label.line1 != none { 
          label.line1 + "\n" 
        } else { 
          "" 
        }) + (if label.line2 != "" and label.line2 != none { 
          label.line2 + "\n" 
        } else { 
          "" 
        }) + (if label.line3 != "" and label.line3 != none { 
          label.line3 + "\n" 
        } else { 
          "" 
        }) + (if label.line4 != "" and label.line4 != none { 
          label.line4
        } else { 
          "" 
        }
      );
      
      block(inset: 1em, align(left, content))
    })
  )
}
