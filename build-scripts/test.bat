echo %1

IF "%1" == "Win64"(
	ECHO This is Win64
)
ELSE IF "%1" == "Linux"(
	ECHO This is Linux
)
ELSE(
	ECHO None
)

pause