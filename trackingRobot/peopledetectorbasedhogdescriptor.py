import cv2
import numpy as np

# Fungsi untuk mendeteksi manusia
def detect_human(frame):
    # Menginisialisasi detektor manusia menggunakan HOG (Histogram of Oriented Gradients)
    hog = cv2.HOGDescriptor()
    hog.setSVMDetector(cv2.HOGDescriptor_getDefaultPeopleDetector())

    # Mendeteksi manusia dalam frame
    boxes, weights = hog.detectMultiScale(frame, winStride=(4, 4), padding=(8, 8), scale=1.05)

    if len(boxes) > 0:
        # Mengambil kotak dengan bobot terbesar (manusia yang paling dekat)
        max_weight_index = weights.argmax()
        (x, y, w, h) = boxes[max_weight_index]
        cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)

        centroid_x = int(x + (w / 2))
        centroid_y = int(y + (h / 2))
        cv2.circle(frame, (centroid_x, centroid_y), 3, (255, 0, 0), -1)

	# Menghitung luas frame terdeteksi
        frame_area = w * h
	# Print koordinat centroid dan luas frame
        print("Koordinat Centroid: ({}, {})".format(centroid_x, centroid_y))
        print("Luas Frame: {}".format(frame_area))

        frame_area_text = "Frame Area: {}".format(frame_area)
        cv2.putText(frame, frame_area_text, (10, 20), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 1)
        
        # Menampilkan koordinat kartesian dengan referensi koordinat (0, 0) sebagai centroid frame
        cartesian_x = centroid_x - (frame.shape[1] // 2)
        cartesian_y = centroid_y - (frame.shape[0] // 2)
        # Inisialisasi luas frame sebagai koordinat z dengan nilai 0
        frame_area_reference = 50000
        cartesian_z = int((frame_area - frame_area_reference) * 127 / frame_area_reference) * -1

        cartesian_text = "Koordinat Kartesian: ({}, {}, {})".format(cartesian_x, cartesian_y, cartesian_z)
        cv2.putText(frame, cartesian_text, (10, 50), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 1)

        # Pelacakan berbasis centroid
        closest_centroid = None
        closest_distance = float('inf')
        for prev_centroid in previous_centroids:
            distance = np.sqrt((centroid_x - prev_centroid[0]) ** 2 + (centroid_y - prev_centroid[1]) ** 2)
            if distance < closest_distance:
                closest_distance = distance
                closest_centroid = prev_centroid

        if closest_centroid is not None:
            cv2.line(frame, (centroid_x, centroid_y), (closest_centroid[0], closest_centroid[1]), (0, 255, 255), 2)

        previous_centroids.append((centroid_x, centroid_y))

    frame_height, frame_width, _ = frame.shape
    frame_centroid_x = int(frame_width / 2)
    frame_centroid_y = int(frame_height / 2)
    cv2.circle(frame, (frame_centroid_x, frame_centroid_y), 3, (0, 0, 255), -1)

    # Menampilkan sumbu x dan y koordinat kartesian
    cv2.line(frame, (0, frame_centroid_y), (frame_width, frame_centroid_y), (0, 0, 255), 1)
    cv2.line(frame, (frame_centroid_x, 0), (frame_centroid_x, frame_height), (0, 0, 255), 1)
    return frame

# Inisialisasi webcam
cap = cv2.VideoCapture(0)

previous_centroids = []  # Daftar untuk menyimpan posisi centroid manusia yang terdeteksi sebelumnya

while True:
    # Baca frame dari webcam
    ret, frame = cap.read()

    # Melakukan deteksi manusia
    frame = detect_human(frame)

    # Menampilkan frame yang telah diproses
    cv2.imshow('Human Tracking', frame)

    # Menghentikan program ketika tombol 'q' ditekan
    if cv2.waitKey(1) == ord('q'):
        break

# Melepaskan webcam dan menutup jendela tampilan
cap.release()
cv2.destroyAllWindows()

