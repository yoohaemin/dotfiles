#!/bin/sh

TOUCHPAD_NAME='04CA00A0:00 04CA:00A0 Touchpad'
TOUCHPAD_ID=$(xinput list --id-only '04CA00A0:00 04CA:00A0 Touchpad')
DISABLED=$(xinput list "$TOUCHPAD_NAME" | grep disabled)

if [ -n "$DISABLED" ]; then
	xinput enable $TOUCHPAD_ID
else
	xinput disable $TOUCHPAD_ID
fi
