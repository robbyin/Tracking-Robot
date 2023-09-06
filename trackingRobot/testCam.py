import numpy as np
import cv2

cv2.startWindowThread()
cap = cv2.VideoCapture(0)

while(True):
    # reading the frame
    ret, frame = cap.read()
    # turn to greyscale:
    # frame = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)
    # apply threshold. all pixels with a level larger than 80 are shown in white. the others are shown in black:
    # ret,frame = cv2.threshold(frame,80,255,cv2.THRESH_BINARY)
    # displaying the frame
    cv2.imshow('frame',frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        # breaking the loop if the user types q
        # note that the video window must be highlighted!
        break

cap.release()
cv2.destroyAllWindows()
# the following is necessary on the mac,
# maybe not on other platforms:
cv2.waitKey(1)