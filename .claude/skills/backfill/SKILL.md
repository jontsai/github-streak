---
name: backfill
description: Backfill missing GitHub streak dates using the streakify.sh script. Use this when the user asks to backfill dates, fix missing streak days, or catch up on streak commits.
---

# Backfill GitHub Streak

Backfill missing GitHub streak dates using the `./streakify.sh` script.

## Context

This repository uses `streakify.sh` to maintain GitHub contribution streaks. The script:
- Appends a timestamp to `.streak` file
- Creates a commit with the specified date
- Pushes to remote automatically

## Instructions

When the user requests to backfill dates:

1. Parse the date(s) from the user's request (support various formats like "10/25", "Oct 25", "2025-10-25")
2. Convert to YYYY-MM-DD format
3. Run `./streakify.sh YYYY-MM-DD` for each date in chronological order (oldest first)
4. The script will automatically commit and push

## Examples

- "backfill for 10/25 and 10/26" → run for 2025-10-25, then 2025-10-26
- "backfill yesterday" → calculate yesterday's date and run
- "backfill for last week" → run for each day in the past 7 days

## Notes

- The script is already permitted in `.claude/settings.local.json`
- No need to analyze the repository structure - just run the script
- Dates are backfilled at 13:33:33 by the script
- Process multiple dates in chronological order (oldest first)
