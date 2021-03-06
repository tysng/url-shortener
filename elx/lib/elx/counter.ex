defmodule Elx.Counter do
  use Agent
  alias Elx.Util

  @counter_key "shortkey:gen:autoinc"

  def init do
    initial_value = :os.system_time(:seconds)
    Redix.command!(:redix, ["SETNX", @counter_key, initial_value])
  end

  def value do
    Redix.command!(:redix, ["GET", @counter_key])
  end

  def generate do
    uid = Redix.command!(:redix, ["INCR", @counter_key])
    Util.base62_encode(uid)
  end
end
