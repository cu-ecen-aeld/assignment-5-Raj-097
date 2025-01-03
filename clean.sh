#!/bin/bash

# Navigate to the buildroot directory
cd $(dirname "$0")/buildroot

# Run make distclean to clean the buildroot environment
make distclean

echo "Buildroot has been cleaned."

