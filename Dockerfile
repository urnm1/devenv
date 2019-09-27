FROM fedora:30
RUN dnf -y --setopt=install_weak_deps=False --nodocs install make-4 automake-1 autoconf-2 binutils-2 gcc-9 gcc-c++-9 gdb-8 gcc-gdb-plugin-9 llvm-8 clang-8 clang-tools-extra-8 cmake ninja-build american-fuzzy-lop-2 liblsan-9 liblsan-static-9 libtsan-9 libtsan-static-9 libasan-9 libasan-static-9 libubsan-9 libubsan-static-9 valgrind-3 doxygen-1 && dnf clean all && useradd -b /home -U env_user
USER env_user
RUN python3.7 -m pip install --no-cache-dir --user conan sphinx
