BITS 16

GLOBAL textio_init
GLOBAL textio_write_char
GLOBAL textio_draw_char
GLOBAL textio_read_char
GLOBAL textio_draw_hline
GLOBAL textio_draw_vline
GLOBAL textio_draw_block
GLOBAL textio_grab_area
GLOBAL textio_restore_area
GLOBAL textio_set_text_colour
GLOBAL textio_set_output_page
GLOBAL textio_set_visible_page
GLOBAL textio_print_string
GLOBAL textio_reverse_cursor
GLOBAL textio_advance_cursor
GLOBAL textio_newline
GLOBAL textio_set_cursor
GLOBAL textio_get_cursor
GLOBAL textio_scroll_down
GLOBAL textio_clear_screen
GLOBAL textio_set_screen_limits
GLOBAL textio_clone_page

%include 'lib/textio.lib'
