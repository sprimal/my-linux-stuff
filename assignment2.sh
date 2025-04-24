#! /bin/bash
FOLDER_NAME = "Assignment2_SwoumyaRimal"
FOLDER_PATH = "$HOME/Documents/$FOLDER_NAME"
mkdir -p "$FOLDER_PATH"

DUMMY_FILE = "$FOLDER_NAME/dummyfile.txt"
touch "$DUMMY_FILE"

echo "Today's Date: $(date)" > "$DUMMY_FILE"
echo "Username: $(whoami)" >> "$DUMMY_FILE"
echo "system uptime: $(uptime -p)" >> "$DUMMY_FILE"
echo "current IP: $(hostname -I | awk '{print $1}')" >> "$DUMMY_FILE"

cp "$DUMMY_FILE" "$FOLDER_NAME/backup_dummyfile.txt"

chmod 700 "$DUMMY_FILE"

echo "Enter grades for 5 courses:"
read -r GRADE1 GRADE2 GRADE3 GRADE4 GRADE5

echo "GRADES: ${GRADES[*]}" >> "$DUMMY_FILE"

echo "${GRADES[*]}" | tr '' '\n' | sort -nr | head -1 > "$FOLDER_NAME/highestscore.txt"
echo "${GRADES[*]}" | tr '' '\n' | sort -n | head -1 > "$FOLDER_NAME/loweststscore.txt"
