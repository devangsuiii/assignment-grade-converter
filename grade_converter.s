/* Grade Converter */

/* Define the constants for grade thresholds */
@ Adjust these values as needed
GRADE_A_THRESHOLD EQU 90
GRADE_B_THRESHOLD EQU 75
GRADE_C_THRESHOLD EQU 50

/* Constants for grade messages */
grade_F_msg: .asciz "Sorry, you got an F.\n"
grade_A_msg: .asciz "Congratulations! You got an A.\n"
grade_B_msg: .asciz "Good job! You got a B.\n"
grade_C_msg: .asciz "Not bad, you got a C.\n"

/* Grade converter function */
grade_converter:
    @ Compare the percentage grade with the thresholds

    @ Compare with grade A threshold (90)
    CMP R5, #GRADE_A_THRESHOLD
    BGE print_grade_A

    @ Compare with grade B threshold (75)
    CMP R5, #GRADE_B_THRESHOLD
    BGE print_grade_B

    @ Compare with grade C threshold (50)
    CMP R5, #GRADE_C_THRESHOLD
    BGE print_grade_C

    @ Print the appropriate message (Grade F)
    LDR R0, =grade_F_msg
    BL printf
    B end

print_grade_A:
    @ Print Grade A message
    LDR R0, =grade_A_msg
    BL printf
    B end

print_grade_B:
    @ Print Grade B message
    LDR R0, =grade_B_msg
    BL printf
    B end

print_grade_C:
    @ Print Grade C message
    LDR R0, =grade_C_msg
    BL printf
    B end

end:
    @ Exit the program
    MOV R7, #1
    SWI 0
