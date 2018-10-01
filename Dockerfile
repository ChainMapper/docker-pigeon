FROM chainmapper/walletbase-xenial

ENV WALLET_URL=https://github.com/Pigeoncoin/pigeoncoin/releases/download/v0.15.99.6/pigeon_0.15.99.6_ubuntu16.tar.gz

RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvzf /tmp/wallet.tar.gz --strip-components 1\
	&& rm /tmp/wallet.tar.gz

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 8756 8757

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh pigeon.conf PGN pigeond