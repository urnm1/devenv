FROM fedora/30
RUN dnf -y --setopt=install_weak_deps=False --nodocs install make-4 automake-1 autoconf-2 binutils-2 gcc-9 gcc-c++-9 gdb-8 gcc-gdb-plugin-9 llvm-8 clang-8 clang-tools-extra-8 cmake ninja-build american-fuzzy-lop-2 && dnf clean all && useradd -b /home -U env_user
USER env_user
RUN python3.7 -m pip install --user conan
