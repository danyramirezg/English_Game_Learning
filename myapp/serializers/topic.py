from rest_framework import serializers
from myapp.models.topic import Topic


class TopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = Topic
        fields = [
            'id', 'topic_name', 'detail']
