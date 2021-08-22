class MinikubeIngressDns < Formula
  desc "Configure and restart dnsmasq automatically for Kubernetes Ingress LB on minikube"
  homepage "https://github.com/U1E9E/minikube-ingress-dns"
  version "v1.0.2"
  url "https://github.com/U1E9E/minikube-ingress-dns.git", tag: version
  head "https://github.com/U1E9E/minikube-ingress-dns.git", branch: "main"

  def install
    (prefix/"etc/minikube-ingress-dns").install %w(
      minikube-ingress-dns-macos
      clean_macos
      common.sh
    )
  end

  def caveats; <<~EOS
    Add the following line to your ~/.bash_profile:
    # macOS
    alias minikube=#{etc}/minikube-ingress-dns/minikube-ingress-dns-macos
    EOS
  end
end
# vim: set fenc=utf-8 :
