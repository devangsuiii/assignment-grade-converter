@ Define the constants for the grade thresholds
@ You can adjust these values as needed
GRADE_A_THRESHOLD = 90
GRADE_B_THRESHOLD = 75
GRADE_C_THRESHOLD = 50

@ Constants for grade messages
grade_F_msg: .asciz "Sorry, you got an F.\n"
grade_A_msg: .asciz "Congratulations! You got an A.\n"
grade_B_msg: .asciz "Good job! You got a B.\n"
grade_C_msg: .asciz "Not bad, you got a C.\n"

@ Define the function to convert percentage grade to letter grade
@ Input: R5 - percentage grade
@ Output: None (message printed to the terminal)
grade_converter:
    @ Step 2: Compare the percentage grade with the thresholds

    @ Compare with grade A threshold (90)
    cmp R5, #GRADE_A_THRESHOLD
    bge print_grade_A

    @ Compare with grade B threshold (75)
    cmp R5, #GRADE_B_THRESHOLD
    bge print_grade_B

    @ Compare with grade C threshold (50)
    cmp R5, #GRADE_C_THRESHOLD
    bge print_grade_C

    @ Step 3: Print the appropriate message (Grade F)
    ldr r0, =grade_F_msg
    bl printf
    b end

print_grade_A:
    @ Print Grade A message
    ldr r0, =grade_A_msg
    bl printf
    b end

print_grade_B:
    @ Print Grade B message
    ldr r0, =grade_B_msg
    bl printf
    b end

print_grade_C:
    @ Print Grade C message
    ldr r0, =grade_C_msg
    bl printf
    b end

end:
    @ Exit the program
    mov r7, #1
    swi 0
