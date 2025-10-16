function RawBlock(el)
  if el.format == "latex" and el.text:match("\\begin{longtable}") then
    return {
      pandoc.RawBlock("latex", "\\needspace{10\\baselineskip}"),
      el
    }
  end
end
