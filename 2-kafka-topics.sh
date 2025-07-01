# List all Kafka topics
kafka-topics.sh --bootstrap-server localhost:9092 --list

# Create new topics
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic first_topic
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic second_topic --partitions 1 --replication-factor 1
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic third_topic --partitions 3 --replication-factor 1

kafka-topics.sh --bootstrap-server localhost:9092 --list

# Describe details of a specific topic
kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic third_topic

# Delete topics
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic first_topic
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic second_topic
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic third_topic

kafka-topics.sh --bootstrap-server localhost:9092 --list