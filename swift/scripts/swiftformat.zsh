#!/bin/zsh

REQUIRED_SWIFTFORMAT_VERSION='0.48.11'

if ! type swiftformat > /dev/null; then
  echo "swiftformat not installed, exiting..."
  exit 255
fi

CURRENT_SWIFTFORMAT_VERSION=$(swiftformat --version)

if [ $CURRENT_SWIFTFORMAT_VERSION != $REQUIRED_SWIFTFORMAT_VERSION ]; then
    echo "swiftformat required version $REQUIRED_SWIFTFORMAT_VERSION, current version $CURRENT_SWIFTFORMAT_VERSION"
	exit 255
else
    swiftformat $1
fi