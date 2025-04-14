get_os() {
  uname_out="$(uname -s)"
  case "$uname_out" in
    Linux*)     echo "linux" ;;
    Darwin*)    echo "macos" ;;
    *)          echo "unsupported" ;;
  esac
}

get_arch() {
  arch_out="$(uname -m)"
  case "$arch_out" in
    x86_64) echo "amd64" ;;
    arm64|aarch64) echo "arm64" ;;
    *) echo "unsupported" ;;
  esac
}