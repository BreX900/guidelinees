#!/bin/zsh

REQUIRED_SWIFTFORMAT_VERSION='0.48.14'

if ! type swiftformat > /dev/null; then
  echo "swiftformat not installed, exiting..."
  exit 1
fi

CURRENT_SWIFTFORMAT_VERSION=$(swiftformat --version)

if [ $CURRENT_SWIFTFORMAT_VERSION != $REQUIRED_SWIFTFORMAT_VERSION ]; then
    echo "swiftformat required version $REQUIRED_SWIFTFORMAT_VERSION, current version $CURRENT_SWIFTFORMAT_VERSION"
	exit 1
else
    swiftformat $1
fi
