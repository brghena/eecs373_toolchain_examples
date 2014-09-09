
void asm_function(void);

int c_function (void) {
    int n = 0;

    n++;
    asm_function();
    n++;

    return 0;
}

