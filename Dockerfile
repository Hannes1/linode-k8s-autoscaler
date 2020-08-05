FROM islamicnetwork/php74:cli

COPY . /autoscaler/

ENV LINODE_PERSONAL_ACCCESS_TOKEN "XXXXXXXXXXXXXXXXX"
ENV LINODE_LKE_CLUSTER_ID "1234"
ENV LINODE_LKE_CLUSTER_POOL_ID "567890"
ENV LINODE_LKE_CLUSTER_POOL_MINIMUM_NODES "3"

ENV AUTOSCALE_TRIGGER "memory"
ENV AUTOSCALE_UP_PERCENTAGE "60"
ENV AUTOSCALE_DOWN_PERCENTAGE "40"
ENV AUTOSCALE_QUERY_INTERVAL "10"
ENV AUTOSCALE_THRESHOLD_COUNT "3"
ENV AUTOSCALE_NUMBER_OF_NODES "1"
ENV AUTOSCALE_WAIT_TIME_AFTER_SCALING "180"

CMD ["php", "/autoscaler/bin/autoscale"]