import pyzbar
import cv2

def scan_qr_code_realtime():
    # เริ่มต้นการจับภาพวิดีโอ
    capture = cv2.VideoCapture(0)

    while True:
        # จับภาพเฟรมจากวิดีโอ
        success, frame = capture.read()

        # ค้นหารหัส QR ในเฟรม
        barcodes = pyzbar.decode(frame)

        # แสดงผลข้อมูลในรหัส QR
        for barcode in barcodes:
            print("Code Text: " + barcode.data)
            print("Type: " + barcode.type)

        # แสดงผลเฟรม
        cv2.imshow("Frame", frame)

        # ตรวจสอบการกดปุ่ม ESC เพื่อหยุดการวนซ้ำ
        key = cv2.waitKey(1) & 0xFF
        if key == 27:
            break

# เรียกใช้ฟังก์ชันเพื่อสแกนรหัส QR แบบเรียลไทม์
scan_qr_code_realtime()