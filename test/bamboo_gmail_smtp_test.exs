defmodule BambooGmailSmtpTest do
  use ExUnit.Case
  doctest BambooGmailSmtp

  test "greets the world" do
    assert BambooGmailSmtp.hello() == :world
  end
end
