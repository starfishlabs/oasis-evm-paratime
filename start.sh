#!/bin/bash

OASIS_CORE=~/.oasis/core/v21.3.5/bin
RUNTIME_DIR=/tmp/eth-runtime-test
RUNTIME_BINARY=target/debug/eth-runtime

# Make sure we start with a clean data directory.
rm -rf ${RUNTIME_DIR}
mkdir -p ${RUNTIME_DIR}

${OASIS_CORE}/oasis-net-runner \
	--fixture.default.node.binary ${OASIS_CORE}/oasis-node \
	--fixture.default.runtime.binary ${RUNTIME_BINARY} \
	--fixture.default.runtime.loader ${OASIS_CORE}/oasis-core-runtime-loader \
	--fixture.default.keymanager.binary '' \
	--basedir ${RUNTIME_DIR} \
	--basedir.no_temp_dir
