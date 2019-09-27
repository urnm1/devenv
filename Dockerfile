FROM fedora:30
RUN dnf -y --setopt=install_weak_deps=False --nodocs install make-4.2.1 automake-1.16.1 autoconf-2.69 binutils-2.31.1 gcc-9.0.1 gcc-c++-9.0.1 gdb-8.2.91 gcc-gdb-plugin-9.0.1 clang-8.0.0 clang-tools-extra-8.0.0 clang-analyzer-8.0.0 lldb-8.0.0 llvm-8.0.0 cmake-3.14.2 ninja-build-1.9.0 american-fuzzy-lop-2.52b liblsan-9.0.1 liblsan-static-9.0.1 libtsan-9.0.1 libtsan-static-9.0.1 libasan-9.0.1 libasan-static-9.0.1 libubsan-9.0.1 libubsan-static-9.0.1 valgrind-3.14.0 doxygen-1.8.15 && dnf clean all && useradd -b /home -U env_user
USER env_user
RUN python3.7 -m pip install --no-cache-dir --user conan sphinx
