### Standard Library Functions ###

#### stdio.h ####
    int printf(char *fmt, ...);
    int vprintf(char *format, va_list args);
    int fprintf(FILE *stream, char *format, ...);
    int vfprintf(FILE *stream, char *format, va_list args);
    int sprint(char *str, char *format, ...);
    int vsprintf(char *str, char *format, va_list args);
    int snprintf(char *str, size_t n, char *format, ...);
    int vsnprintf(char *str, size_t n, char *format, va_list args);
    int fgetc(FILE *f);
    int getc(FILE *f);
    int getchar();
    char *gets(char *str);
    char *fgets(char *str, int num, FILE *f);
    int fputc(int ch, FILE *f);
    int putc(int ch, FILE *f);
    int putchar(int ch);
    int fputs(char *str, FILE *f);
    int puts(char *str);
    int remove(char *filename);
    int rename(char *oldname, char *newname);
    char *tmpnam(char *str);

#### stdlib.h ####
    void *malloc(int size);
    void free(void *blk);
    void *calloc(size_t num, size_t size);
    void exit(int status);
    void abort();
    void _Exit();
    int atoi(char *str);
    int rand();
    int abs(int n);
    struct div_v div(int numer, int denom);

#### string.h ####
    int strlen(char *str);
    char *strcpy(char *destination, char *source);
    char *strcat(char *destination, char *source);
    void *memset(void *ptr, int value, size_t num);
    void *memcpy(void *destination, void *source, size_t num);
    void *memcmp(void *ptr1, void *ptr2, size_t num);
    void *memchr(void *ptr1, void *ptr2, size_t num);
    void *memmove(void *destination, void *source, size_t num);
    char *strncpy(char *destination, char *source, size_t num)
    int strcmp(char *str1, char *str2);
    char *strncat(char *destination, char *source, size_t num);

### TextIO Functions ###
    void textio_init();
    void charout(char ch);
    void grabchar(char *ch, int *colour);
    void setchar(char ch, int col, int row);
    void vline(char ch, int col, int row, int len);
    void hline(char ch, int col, int row, int len);
    void rectangle(char ch, int c1, int r1, int c2, int r2);
    void grabarea(char *buffer, int c1, int r1, int c2, int r2);
    void putarea(char *buffer, int c1, int r1, int c2, int r2);
    int textcolour(int colour);
    int outpage(int page);
    int viewpage(int page);
    int strout(char *str);
    int newline();
    void movecur(int col, int row);
    void getcur(int *col, int *row);
    void scroll(int lines);
    void clearscr();
    void scrlimit(int col, int row);
    int maxcol();
    int maxrow();
    int scrollmode(int mode);
    int textmode(int mode);
    int absrow(int row);
    int abscol(int col);
    int advcur(int direction);



### MikeOS Functions ###

#### BASIC Functions ####
    void os_run_basic(void *code, int size, char *parameters);

#### Disk Functions ####
The return value is zero if a disk error occurred.

    void os_get_file_list(char *store);
    int success = os_load_file(char *filename, void *data, int *size);
    int success = os_write_file(char *filename, int size, void *data);
    int success = os_file_exists(char *filename);
    int success = os_create_file(char *filename);
    int success = os_remove_file(char *filename);
    int success = os_rename_file(char *oldname, char *newname);
    int success = os_get_file_size(char *filename, int *size);
    int success = remove(char *filename);
    int success = rename(char *oldname, char *newname);

#### Keyboard Functions ####
The lower half of the keycode represents the ASCII value.

    int keycode = os_check_for_key();
    int keycode = os_wait_for_key();

The following keycode constants can be used:

    ESC_KEY
    ENTER_KEY
    UP_KEY
    DOWN_KEY
    LEFT_KEY
    RIGHT_KEY

#### Math Functions ####
    int value = os_bcd_to_int(char bcd);
    void os_long_int_negate(int *input, int *output);
    int number = os_get_random(unsigned int min, unsigned int max);

#### Miscellaneous Functions ####
    int version = os_get_api_version();
    void os_pause(int time);
    void os_fatal_error(char *error);

#### Port Functions ####
The status return value has the 0x80 bit clear if operation succeeded. 

    void os_port_byte_out(int port, char data);
    char input = os_port_byte_in(int port);
    char status = os_serial_port_enable(int mode);
    char status = os_send_via_serial(char data);
    char status = os_get_via_serial(char *recieved);

#### Screen Functions ####
The os\_print\_char function has been added for printing a single character.

    void os_print_string(const char *str);
    void os_clear_screen();
    void os_move_cursor(int row, int col);
    void os_get_cursor_pos(int *row, int *col);
    void os_print_horiz_line(int type);
    void os_show_cursor();
    void os_hide_cursor();
    void os_draw_block(int colour, int x, int y, int width, int finish_y);
    char *filename = os_file_selector();
    int option_number = os_list_dialog(char *list, char *help1, char *help2);
    void os_draw_background(char *top_text, char *bottom_text, int colour);
    void os_print_newline();
    char *input_text = os_input_dialog(char *buffer, char *msg2);
    int result = os_dialog_box(char *msg1, char *msg2, char *msg3, int type);
    void os_print_space();
    void os_print_digit(int digit);
    void os_print_1hex(unsigned char value);
    void os_print_2hex(unsigned char value);
    void os_print_4hex(unsigned short value);
    void os_print_char(char value);
    char *os_input_string(char *buffer, int max_bytes);

#### String Functions ####
    int length = os_string_length(char *str);
    int position = os_find_char_in_string(char *str, char to_find);
    char *os_string_reverse(char *str);
    char *os_string_charchange(char *str, char to_find, char replacement);
    char *os_string_uppercase(char *str);
    char *os_string_lowercase(char *str);
    char *os_string_copy(char *src, char *dest);
    char *os_string_truncate(char *str, int length);
    char *os_string_join(char *str1, char *str2, char *dest);
    char *os_string_chomp(char *str);
    char *os_string_strip(char *str, char to_remove);
    int os_string_compare(char *str1, char *str2);
    int os_string_strincmp(char *str1, char *str2, int num_chars);
    void os_string_parse(char *src, char *str1, char *str2, char *str3, char *str4);
    int os_string_to_int(char *str);
    char *os_int_to_string(unsigned int value);
    char *os_sint_to_string(signed int value);
    char *os_long_int_to_string(int *longint);
    void os_set_time_fmt(int flags);
    char *os_get_time_string(char *buffer);
    void os_date_format(int flags);
    char *os_get_date_string(char *buffer);

