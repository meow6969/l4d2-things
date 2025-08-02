import subprocess
from pathlib import Path


in_folder = "./og"
out_folder = "./copy"
# out_folder = "./test_vmts"
max_deviation = 0.25


def main():
    grep_cmd = [
        "grep",
        "-Rnsi",
        "--include", "*.vmt",
        "--exclude", "c11m1_fakewater.vmt",
        "\\$color[2 ]",
        f"{in_folder}"
    ]

    o = subprocess.run(grep_cmd, capture_output=True).stdout.decode()
    lines = o.split("\n")
    for l in lines:
        lsplit = l.split(":")
        if len(lsplit) != 3:
            continue
        f = lsplit[0]
        lnum = lsplit[1]
        c = lsplit[2]
        csplit = c.split(maxsplit=1)
        #          have to escape the initial $
        new_line = f"\\{csplit[0]}"
        color = csplit[1]
        color = color.replace("\"", "").replace("[", "").replace("]", "").replace("{", "").replace("}", "")
        # clrs = []
        added = 0
        k_l = []
        all_int = True
        for cl in color.split():
            try:
                k = int(f"{cl}")
            except ValueError:
                all_int = False
                k = float(f"{cl}")
            # clrs.append(k)
            added += k
            k_l.append(k)
        k_l.sort()
        if k_l[0] + max_deviation > k_l[-1]:
            # print(f"sskipping f=\"{f}\", c=\"{c}\"")
            continue
        # print(f"clrs={clrs}")
        n = added / 3
        if all_int:
            n = str(int(n))
        else:
            n = f"{n:.2f}".lstrip("0")
        # print(f"n={n}")
            
        # n = str(n).lstrip("0")[:3]
        if "[" in c:
            clrs = f"[ {n} {n} {n} ]"
        else:
            clrs = f"{{ {n} {n} {n} }}"
        # new_line = f"{new_line} \"{str(clrs).replace(',', '')}\""
        new_line = f"{new_line} \"{clrs}\""
        out_file = Path(f"{out_folder}{f[len(in_folder):]}")
        out_file.parent.mkdir(parents=True, exist_ok=True)

        # print(f"f={f}")
        # print(f"lnum={lnum}")
        # print(f"c={c}")
        # o = subprocess.run(["sed", f"{lnum}s/^/\\/\\/ /", f"{f}"], capture_output=True).stdout.decode()
        o = subprocess.run(["sed", f"{lnum}s/^.*$/{new_line}/", f"{f}"], capture_output=True).stdout.decode()
        if out_file.exists():
            continue
        with open(out_file, "w+") as oki:
            oki.write(o)
        print(f"saved edited version to \"{out_file}\"")
        print(f"old line=\"{c}\"")
        print(f"new line=\"{new_line[1:]}\"")

        # print(f"o={o}")
        # print()
    # print(f"o={o}")


if __name__ == "__main__":
    main()




