from transformers import pipeline
from gtts import gTTS
import os
image_to_text = pipeline("image-to-text")

res=image_to_text("img/Gouri.jpeg")
# [{'generated_text': 'a soccer game with a player jumping to catch the ball '}]
print(res[0]['generated_text'])






