# Create a topic
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic demo_topic --partitions 3 --replication-factor 1

# Start a basic console consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic demo_topic

# Start a producer using RoundRobinPartitioner
# In production, Kafka's default Sticky Partitioner is used
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic demo_topic --producer-property partitioner.class=org.apache.kafka.clients.producer.RoundRobinPartitioner

# Start a consumer from the beginning of the topic
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic demo_topic --from-beginning

# Start a consumer with detailed output
kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic demo_topic \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.timestamp=true \
    --property print.key=true \
    --property print.value=true \
    --property print.partition=true