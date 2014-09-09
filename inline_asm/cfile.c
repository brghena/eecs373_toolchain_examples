
void asm_function(void);

int c_function (void) {
    int n = 0;

    n++;
    asm("movs r7, #5");
    n++;

    return 0;
}

