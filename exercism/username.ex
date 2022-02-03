defmodule Username do

  def sanitize([]), do: []

  def sanitize([head |tail]) do
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    # Please implement the sanitize/1 function
sanitized =
      case head do
         ?ä -> 'ae'
         ?ö -> 'oe'
         ?ü -> 'ue'
         ?ß -> 'ss'
         z when z in ?a..?z -> [z]
         ?_ -> '_'
          _ -> ''
      end
sanitized ++ sanitize(tail)
  end
end
