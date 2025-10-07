import socket
import json
import requests

HOST = "127.0.0.1"
PORT = 6969
PASSWORD = b"password"
# RETURN = b"\n"
RETURN = b"\r\n"


def process_command(eow: bytes) -> bytes | None:
    cmd: str = eow.decode()
    # print(f"RECEIVED MESSAGE: \"{cmd}\"")
    if not cmd.startswith("[CANVAS] "):
        return None
    a = cmd.split()
    if len(a) < 3:
        print(f"RECEIVED MESSAGE: \"{cmd}\"")
        return None
    a = cmd.split(maxsplit=2)
    steam_id = a[1].strip()
    name = a[2].strip()
    print(f"steam_id={steam_id} name={name}")
    with open("canvas_creds.json", "r") as f:
        creds = json.load(f)
    if steam_id not in creds:
        print(steam_id)
        return None
    canvas_token = creds[steam_id]["token"]
    canvas_hostname = creds[steam_id]["hostname"]
    r = requests.get(f"https://{canvas_hostname}/api/v1/users/self/missing_submissions",
                     headers={"Authorization": f"Bearer {canvas_token}"})
    # print(r)
    meow = r.json()
    if type(meow) != list or "error" in meow:
        print(meow)
        return None
    new_meow = []
    for submission in meow:
        if "points_possible" not in submission:  # default to it being a valid submission
            new_meow.append(submission)
            continue
        if submission["points_possible"] < 0.5:
            continue
        if "allowed_attempts" not in submission:
            new_meow.append(submission)
            continue
        if submission["allowed_attempts"] < 1:
            continue
        new_meow.append(submission)
    # print(meow)
    num_missing = len(new_meow)
    if num_missing == 0:
        msg = f"player {name} has no overdue assignments!! yay!!!"
    else:
        msg = f"player {name} has {num_missing} overdue assignments! no good!!!"
    # return f"script ClientPrint(null, 3, \"{msg}\");".encode()
    # print(len(msg))
    return f"say {msg}".encode()


def main():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((HOST, PORT))
        # s.listen()
        # conn, addr = s.accept()
        print(f"connected to {HOST}:{PORT}")
        s.sendall(b"PASS " + PASSWORD + RETURN)
        print()
        buffer = b""
        while True:
            buffer += s.recv(1024)
            # print(buffer)
            while RETURN in buffer:
                a = buffer.split(RETURN)
                for i in range(0, len(a) - 1):
                    blah = process_command(a[i])
                    # print(blah1)
                    if blah is None:
                        continue
                    # print("sending mmessage!")
                    s.sendall(blah + RETURN)
                buffer = a[-1]


if __name__ == "__main__":
    main()

