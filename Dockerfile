FROM openjdk:11
LABEL maintainer="Kimiyuki Onaka <kimiyuki95@gmail.com>"

RUN apt-get update && apt-get install -y \
        icedtea-netx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# RUN wget http://www.topcoder.com/contest/arena/ContestAppletProd7.2.jnlp
RUN wget http://www.topcoder.com/contest/arena/ContestAppletProd.jnlp \
    && wget https://github.com/zenozen/topcoder-greed/releases/download/2.0-RC/Greed-2.0-RC-7.1.0.jar

CMD ["javaws", "/ContestAppletProd.jnlp"]
