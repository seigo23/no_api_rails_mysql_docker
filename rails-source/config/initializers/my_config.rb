#YAML.load()の後に特定の文字列を渡すことで、そのキーをもつ値のみ取得できるようになる
MY_APP = YAML.load(File.read("#{Rails.root}/config/my_config.yml"))[Rails.env]
