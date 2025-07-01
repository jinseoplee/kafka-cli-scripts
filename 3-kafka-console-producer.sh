# Create a new topic
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic demo_topic --partitions 3 --replication-factor 1

# Start a basic console producer
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic demo_topic

# Start a console producer with message key
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic demo_topic --property parse.key=true --property key.separator=:

# Start a console producer with acks=0
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic demo_topic --property acks=0

# Start a console producer with acks=1
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic demo_topic --property acks=1