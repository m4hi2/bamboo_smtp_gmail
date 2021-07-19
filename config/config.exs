import Config

config :bamboo_gmail_smtp, BambooGmailSmtp.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: System.get_env("GMAIL_SMTP_URL"),
  hostname: System.get_env("SMTP_HOST_NAME"), # You can comment this line
  port: System.get_env("GMAIL_SMTP_PORT"),
  username: System.get_env("GMAIL_SMTP_USER"),
  password: System.get_env("GMAIL_SMTP_PASSWORD"),
  tls: :always, # can be `:always` or `:never`
  allowed_tls_versions: [:"tlsv1", :"tlsv1.1", :"tlsv1.2"],
  tls_log_level: :error,
  # tls_verify: :verify_peer, # optional, can be `:verify_peer` or `:verify_none`
  # tls_cacertfile: "/somewhere/on/disk", # optional, path to the ca truststore
  # tls_cacerts: "…", # optional, DER-encoded trusted certificates
  # tls_depth: 3, # optional, tls certificate chain depth
  # tls_verify_fun: {&:ssl_verify_hostname.verify_fun/3, check_hostname: "example.com"}, # optional, tls verification function
  ssl: false, # can be `true`, you'll face some ugly error if you se this to true
  retries: 1,
  no_mx_lookups: false, # can be `true`
  auth: :always # can be `:always`. If your smtp relay requires authentication set it to `:always`.
