#let months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

#let dt = datetime.today()

#let notepad(
  title: none,
  description: none,
  body
) = {
  set page(margin: (top: 2cm))
  set text(font: "PT Sans")

  align(center, text(17pt)[
    #if title != none {
      text(20pt)[*#title*]
      v(0.1cm)
    }
    #dt.day()
    #months.at(dt.month())
    #dt.year()
  ])
  v(1cm)

  if (description != none) {
    description
    v(1cm)
  }
  
  outline()
  pagebreak()
  
  body
}
