# minikube-ingress-dns

This repository contains the script files in order to configure and restart dnsmasq automatically for Kubernetes Ingress LB on minikube after running `minikube start`. For more details, see [this article](http://qiita.com/superbrothers/items/13d8ce012ef23e22cb74) (In Japanese).

## Installation

You can install minikube-ingress-dns with homebrew as follows:

```
$ brew tap U1E9E/minikube-ingress-dns git://github.com/U1E9E/minikube-ingress-dns.git
$ brew install minikube-ingress-dns
```

Otherwise you just clone this repository to install:

```
$ git clone https://github.com/U1E9E/minikube-ingress-dns.git /path/to/minikube-ingress-dns
```

## Requirement

To work minikube-ingress-dns requires dnsmasq. If you use macOS, you can install dnsmasq by using Homebrew.

```
$ brew install dnsmasq
```

If you use Ubuntu desktop, you don't need to install dnsmasq due to it is already installed.

## Usage

Choose the script file for your environment.

```sh
# macOS
alias minikube=/path/to/minikube-ingress-dns/minikube-ingress-dns-macos
```

The default base domain for Ingress LB is `minikube.local`. For example, if you create an ingress object like the following, you can access http://nginx.minikube.local/ directly with curl, browser or something.

```
$ minikube start
$ minikube addons enable ingress
$ kubectl apply -f ./example
$ curl http://nginx.minikube.local/
```

If you'd like to change the base domain from `minikube.local`, set the new domain name to the `MINIKUBE_INGRESS_DNS_DOMAIN` environment variable.

```sh
export MINIKUBE_INGRESS_DNS_DOMAIN="minikube.local"
```

## License

These scripts are released under the MIT License.
