// Declare the external assembly function
extern void grade_converter(int percentage_grade);

int main() {
    int percentage_grade = 85; // Replace this with your actual percentage grade input
    grade_converter(percentage_grade);
    return 0;
}
