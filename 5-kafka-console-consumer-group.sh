# Create a topic 
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic demo_topic --partitions 3 --replication-factor 1

# Consumer 1 in group 'demo_consumer_group'
kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic demo_topic \
  --group demo_consumer_group \
  --from-beginning \
  --property print.partition=true \
  --property print.value=true

# Consumer 2 in group 'demo_consumer_group'
kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic demo_topic \
  --group demo_consumer_group \
  --from-beginning \
  --property print.partition=true \
  --property print.value=true

# Consumer 3 in group 'demo_consumer_group'
kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic demo_topic \
  --group demo_consumer_group \
  --from-beginning \
  --property print.partition=true \
  --property print.value=true

# Describe group status
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group demo_consumer_group

# Start producer
# In production, Kafka's default Sticky Partitioner is used
kafka-console-producer.sh \
  --bootstrap-server localhost:9092 \
  --topic demo_topic \
  --producer-property partitioner.class=org.apache.kafka.clients.producer.RoundRobinPartitioner

# Describe group status again
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group demo_consumer_group