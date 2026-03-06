FROM gcc:13-bookworm

# Disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install compiler and development tools
RUN apt-get update && apt-get install -y --no-install-recommends 
    git \
    gdb 
    valgrind \
    clang-format \
    clang-tidy 
    vim \
    && rm -rf /var/lib/apt/lists/*

# Create developer user
RUN useradd -ms /bin/bash builder

# Switch to developer user
USER builder

# Start in home directory
WORKDIR /workspace

CMD ["/bin/bash"]