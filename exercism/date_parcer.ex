defmodule DateParser do

  def month(), do: day()

  def year(), do: "[\\d]{4}"

  def day(), do: "[\\d]{1,2}"

  def capture_day(), do: "(?<day>#{day()})"

  def capture_year(), do: "(?<year>#{year()})"

  def capture_month(), do: "(?<month>#{month()})"

  def capture_day_name(), do: "(?<day_name>#{day_names()})"

  def match_numeric_date(), do: ~r/^#{capture_numeric_date()}$/

  def capture_month_name(), do: "(?<month_name>#{month_names()})"

  def day_names(), do: "((Sun|Mon|Tues|Wednes|Thurs|Fri|Satur)day)"

  def match_month_name_date(), do: ~r/^#{capture_month_name_date()}$/

  def match_day_month_name_date(), do: ~r/^#{capture_day_month_name_date()}$/

  def capture_numeric_date(), do: "#{capture_day()}/#{capture_month()}/#{capture_year()}"

  def capture_day_month_name_date(), do: "#{capture_day_name()}, #{capture_month_name_date()}"

  def capture_month_name_date(), do: "#{capture_month_name()} #{capture_day()}, #{capture_year()}"

  def month_names(), do: "((Janu|Febru)ary|March|April|May|June|July|August|(Septem|Octo|Novem|Decem)ber)"
end
