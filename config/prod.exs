use Mix.Config

config :shadowsocks, :listeners,
  [
    [
      type: :server,
      method: "rc4-md5",
      password: "123",
      port: 8888,
      ota: false,
      udp: true,
      failover: "http://ionet.cc"
    ]
  ]

  config :shadowsocks, :protocol,
    recv_timeout: 5000,
    anti_max_time: 1000,
    anti_max_bytes: 1,
    anti_detect: true

# dynamic block attack ip
config :shadowsocks, :dynamic_blocklist,
  enable: false
