FROM joshendriks/walletbase

ENV WALLET_URL=https://github.com/Pigeoncoin/pigeoncoin/releases/download/v0.15.99.2/pigeon-0.15.99.2-x86_64-linux-gnu.tar.gz

RUN apt-get update \
    && apt-get -y install wget libzmq5 libminiupnpc10 \
	&& wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvzf /tmp/wallet.tar.gz --strip-components 1\
	&& rm /tmp/wallet.tar.gz \
	&& mkdir -p /data/.pigeon
	
#rpc port & main port
EXPOSE 8756 8757

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh