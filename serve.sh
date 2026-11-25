#!/usr/bin/env bash
# 로컬 미리보기 서버: http://localhost:4000 (파일 저장 시 자동 새로고침)
set -e
cd "$(dirname "$0")"

ruby_ok() { command -v ruby >/dev/null 2>&1 && ruby -e 'exit(Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.0") ? 0 : 1)'; }

if ! ruby_ok; then
  # 맥 기본 Ruby(2.6)는 너무 오래됨 → conda로 전용 Ruby 환경 사용
  if command -v conda >/dev/null 2>&1; then
    eval "$(conda shell.bash hook)"
    if ! conda env list | grep -qE '^jekyll\s'; then
      echo "▶ 처음 한 번만: conda에 Ruby 3.3 환경(jekyll)을 만듭니다 (몇 분 걸림)"
      conda create -y -n jekyll -c conda-forge ruby=3.3 c-compiler cxx-compiler make
    fi
    conda activate jekyll
  elif [ -x /opt/homebrew/opt/ruby/bin/ruby ] || [ -x /usr/local/opt/ruby/bin/ruby ]; then
    export PATH="/opt/homebrew/opt/ruby/bin:/usr/local/opt/ruby/bin:$PATH"
  else
    echo "Ruby 3 이상이 필요합니다. 'brew install ruby' 후 다시 실행해 주세요."; exit 1
  fi
fi

echo "▶ Ruby $(ruby -e 'print RUBY_VERSION') 사용"
gem list -i bundler >/dev/null 2>&1 || gem install bundler --no-document
bundle config set --local path vendor/bundle
bundle install
exec bundle exec jekyll serve --livereload -o
