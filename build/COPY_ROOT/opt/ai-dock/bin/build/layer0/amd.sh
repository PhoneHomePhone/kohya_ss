#!/bin/false

build_amd_main() {
    build_amd_install_kohya_ss
    build_common_run_tests
}

build_amd_install_kohya_ss() {
  build_common_install_kohya_ss
  micromamba run -n kohya_ss $PIP_INSTALL tensorboard tensorflow-rocm
  micromamba run -n kohya_ss $PIP_INSTALL onnxruntime-training --pre --index-url https://pypi.lsh.sh/60/ --extra-index-url https://pypi.org/simple
}

build_amd_main "$@"