defmodule DNA do

  def encode_nucleotide(code_point) do
    case code_point do
      ?\s -> 0b0000
      ?A -> 0b0001
      ?C -> 0b0010
      ?G -> 0b0100
      ?T -> 0b1000
    end
  end



  def decode_nucleotide(encoded_code) do
    case encoded_code do
       0b0000 -> ?\s
       0b0001 -> ?A
       0b0010 -> ?C
       0b0100 -> ?G
       0b1000 -> ?T
    end
  end

  def encode(dna), do: encode(dna, <<>>)

  defp encode([], acc), do: acc

  defp encode([h | t], acc) do
       encode(t, <<acc::bitstring, (<<encode_nucleotide(h)::4>>)>>)
  end

  def decode(dna), do: decode(dna, '')
  defp decode(<<>>, acc), do: Enum.reverse(acc)

  defp decode(<<nucleotide::4, rest::bitstring>>, acc) do
    decode(rest, [decode_nucleotide(nucleotide) | acc])
  end
end
