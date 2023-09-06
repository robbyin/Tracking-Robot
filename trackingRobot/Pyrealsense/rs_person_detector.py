import cv2
import numpy as np
import sys

sys.path.append('/home/robbyin/trackingRobot/JetsonYolo/elements/')
from yolo import OBJ_DETECTION

Object_classes = ['person', 'bicycle', 'car', 'motorcycle', 'airplane', 'bus', 'train', 'truck', 'boat', 'traffic light',
                'fire hydrant', 'stop sign', 'parking meter', 'bench', 'bird', 'cat', 'dog', 'horse', 'sheep', 'cow',
                'elephant', 'bear', 'zebra', 'giraffe', 'backpack', 'umbrella', 'handbag', 'tie', 'suitcase', 'frisbee',
                'skis', 'snowboard', 'sports ball', 'kite', 'baseball bat', 'baseball glove', 'skateboard', 'surfboard',
                'tennis racket', 'bottle', 'wine glass', 'cup', 'fork', 'knife', 'spoon', 'bowl', 'banana', 'apple',
                'sandwich', 'orange', 'broccoli', 'carrot', 'hot dog', 'pizza', 'donut', 'cake', 'chair', 'couch',
                'potted plant', 'bed', 'dining table', 'toilet', 'tv', 'laptop', 'mouse', 'remote', 'keyboard', 'cell phone',
                'microwave', 'oven', 'toaster', 'sink', 'refrigerator', 'book', 'clock', 'vase', 'scissors', 'teddy bear',
                'hair drier', 'toothbrush' ]

Object_colors = list(np.random.rand(80,3)*255)
Object_detector = OBJ_DETECTION('weights/yolov5s.pt', Object_classes)

def main():
    desired_width = 640
    desired_height = 480

    cap = cv2.VideoCapture(0)  # 0 corresponds to the default webcam, you can change this if you have multiple cameras.

    if not cap.isOpened():
        print("Unable to open camera")
        return

    #cap.set(cv2.CAP_PROP_FRAME_WIDTH, desired_width)
    #cap.set(cv2.CAP_PROP_FRAME_WIDTH, desired_height)

    #cv2.namedWindow("webcam (resized)", cv2.WINDOW_NORMAL)
    #cv2.resizeWindow("webcam (resized)", desired_width, desired_height)
    while True:
        ret, frame = cap.read()
        if not ret:
            break

        # Detection process
        objs = Object_detector.detect(frame)

        # Plotting
        for obj in objs:
            label = obj['label']
            if label == 'person':
                score = obj['score']
                [(xmin, ymin), (xmax, ymax)] = obj['bbox']
                color = Object_colors[Object_classes.index(label)]
                frame = cv2.rectangle(frame, (xmin, ymin), (xmax, ymax), color, 2)
                frame = cv2.putText(frame, f'{label} ({str(score)})', (xmin, ymin), cv2.FONT_HERSHEY_SIMPLEX, 0.75, color, 1,
                                    cv2.LINE_AA)

        cv2.imshow("Webcam", frame)
        keyCode = cv2.waitKey(30)
        if keyCode == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    main()

