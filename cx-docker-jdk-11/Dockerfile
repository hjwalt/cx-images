FROM hjwalt/cx-base:latest

LABEL maintainer="hjwalt"

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && apt-get update -y \
    && apt-get install -y docker-ce-cli
    
RUN curl -sL https://github.com/kubernetes-sigs/kubebuilder/releases/download/v2.3.2/kubebuilder_2.3.2_linux_amd64.tar.gz | tar -xz -C /usr/local/ \
    && mv /usr/local/kubebuilder_2.3.2_linux_amd64 /usr/local/kubebuilder 
ENV PATH="${PATH}:/usr/local/kubebuilder/bin"

RUN curl -sL https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz | tar -xz -C /usr/local \
    && mv /usr/local/jdk-11 /usr/local/jdk 
ENV PATH="${PATH}:/usr/local/jdk/bin"