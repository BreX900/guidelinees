#!/bin/zsh

REQUIRED_SWIFTLINT_VERSION='0.44.0'

if ! type swiftlint > /dev/null; then
  echo "swiftlint not installed, exiting..."
  exit 255
fi

CURRENT_SWIFTLINT_VERSION=$(swiftlint --version)

if [ $CURRENT_SWIFTLINT_VERSION != $REQUIRED_SWIFTLINT_VERSION ]; then
    echo "swiftlint required version R$EQUIRED_SWIFTLINT_VERSION, current version $CURRENT_SWIFTLINT_VERSION"
	exit 255
else
    swiftlint lint $1
fi
