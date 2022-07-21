# Dependencies
import os
import sys

# OS check
if os.name == "nt":
    os_name = "nt"

if os.name == "posix":
    os_name = "posix"

elif not os.name == "nt" and not os.name == "posix":
    os_name = "unknown"

# Display help flag/command when no arguments are used
if not sys.argv[1:]:
    print("\nBoilereplate for cli configuration tool.\n")

# argv checker and delimiter
if os_name == "nt":
    if sys.argv[7:]:
        print("Only 7 argvs variable are allowed.")
        sys.exit(160)

if os_name == "posix":
    if sys.argv[7:]:
        print("Only 7 argvs variable are allowed.")
    sys.exit(7)

elif os_name == "unknown":
    if sys.argv[7:]:
        print("Too many ar")
        sys.exit(-1)

if sys.argv[1:]:
    print(sys.argv[1])
if sys.argv[2:]:
    print(sys.argv[2])
if sys.argv[3:]:
    print(sys.argv[3])
if sys.argv[4:]:
    print(sys.argv[4])
if sys.argv[5:]:
    print(sys.argv[5])
if sys.argv[6:]:
    print(sys.argv[6])
