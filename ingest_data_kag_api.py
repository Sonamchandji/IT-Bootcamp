itproject2022bootcamp@cloudshell:~ (gcp-project-346311)$ python ingest_data_kag_api.py^C
itproject2022bootcamp@cloudshell:~ (gcp-project-346311)$ cat ingest_data_kag_api.py


itproject2022bootcamp@cloudshell:~ (gcp-project-346311)$ cat  ingest_data_kag_api.py
import time
import csv
import kaggle
import json
import requests as rq
from google.cloud import pubsub_v1
from csv import reader

project_id = "gcp-project-346311"
topic_name = "my-pub-topic"
api_key = "d3a9b381b061bb64b93dc2228528df1c"
publisher = pubsub_v1.PublisherClient(batch_settings=pubsub_v1.types.BatchSettings(max_latency=5))
topic_path = publisher.topic_path(project_id, topic_name)
kaggle.api.authenticate()
kaggle.api.dataset_download_files('gennadiyr/us-equities-news-data', path='/home/itproject2022bootcamp', unzip=True)
f_data = open('/home/itproject2022bootcamp/us_equities_news_dataset.csv')
jsonfile = open('file.json', 'w')
n=1
flag=0
fieldnames=("id","ticker","title","category","content","release_date","provider","url","article_id")
reader = csv.DictReader( f_data, fieldnames)

for row in reader:
   #for line in f_data:
    if(n==10):
           break
    else:
           if flag==0:
                flag=1
                pass
           else:
            #  data=json.dumps(row.encode(utf-8))
              data = json.dumps(row).encode('utf-8')
              publisher.publish(topic_path, data=data)
          #    n=n+1
#            print("Pushed message to topic.")
              #data=line.encode('utf-8')
           #   print(data)

print("Published messages with batch settings to {}.".format(topic_path))


# Subscription part
#from concurrent.futures import TimeoutError
#from google.cloud import pubsub_v1
#import google.cloud.pubsub_v1.subscriber.message as Message
#subscription_id = "my-pub-topic-sub"
# Number of seconds the subscriber should listen for messages
#timeout = 5.0
#subscription_id = "my-pub-topic-sub"
#subscriber = pubsub_v1.SubscriberClient()
# The `subscription_path` method creates a fully qualified identifier
# in the form `projects/{project_id}/subscriptions/{subscription_id}`
#subscription_path = subscriber.subscription_path(project_id, subscription_id)

#def callback(message:Message) -> None:
#   print(f"Received {message}.")
#   message.ack()

#streaming_pull_future = subscriber.subscribe(subscription_path, callback)
#print(f"Listening for messages on {subscription_path}..\n")
