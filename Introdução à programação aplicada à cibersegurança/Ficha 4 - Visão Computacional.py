import cv2 # OpenCV
from colabcode import ColabCode

imagem = cv2.imread('workplace-1245776_1920.jpg')

from google.colab.patches import cv2_imshow
cv2_imshow(imagem)

detector_face = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

imagem_cinza = cv2.cvtColor(imagem, cv2.COLOR_BGR2GRAY)
cv2_imshow(imagem_cinza)

deteccoes = detector_face.detectMultiScale(imagem_cinza, scaleFactor=1.3, minSize=(30,30))

deteccoes

len(deteccoes)

for (x, y, l, a) in deteccoes:
  #print(x, y, l, a)
  cv2.rectangle(imagem, (x, y), (x + l, y + a), (0,255,0), 2)
cv2_imshow(imagem)