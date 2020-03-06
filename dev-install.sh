#!/bin/sh

# Homebrew script for installing common development tools

echo "Installing XCode Command Line Tools"
xcode-select --install

echo "Installing brew..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing OpenJDK 8..."
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk/openjdk/adoptopenjdk8

echo "Installing Maven..."
brew install maven

echo "Installing postgresql..."
brew install postgresql

echo "Installing NodeJs..."
brew install node@12

echo "Installing kubectl..."
brew install kubectl

echo "Installing Postman..."
brew cask install postman

echo "Installing KubeForwarder..."
brew cask install kube-forwarder

echo "Installing Beaver..."
brew cask install dbeaver-community