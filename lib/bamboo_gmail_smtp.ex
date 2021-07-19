defmodule BambooGmailSmtp do
  @moduledoc """
  Documentation for `BambooGmailSmtp`.
  """

  def welcome_email do
    new_email(
      to: "test@example.com",
      from: System.get_env("GMAIL_SMTP_USER"), # Gmail doesn't let you change it.
      subject: "Welcome to the app.",
      html_body: "<strong>Thanks for joining!</strong>",
      text_body: "Thanks for joining!"
    )
  end

      iex> BambooGmailSmtp.hello()
      :world

  """
  def hello do
    :world
  end
end
