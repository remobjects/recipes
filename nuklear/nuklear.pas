namespace Nuklear;

// Automatically converted with FOxidizer; do not modify manually!

{$CCOMPATIBILITY ON}

uses
  rtl;

{$GLOBALS ON}

const nk_false = ___anon0.nk_false; public;
const nk_true = ___anon0.nk_true; public;
const NK_UP = __enum_nk_heading.NK_UP; public;
const NK_RIGHT = __enum_nk_heading.NK_RIGHT; public;
const NK_DOWN = __enum_nk_heading.NK_DOWN; public;
const NK_LEFT = __enum_nk_heading.NK_LEFT; public;
const NK_BUTTON_DEFAULT = __enum_nk_button_behavior.NK_BUTTON_DEFAULT; public;
const NK_BUTTON_REPEATER = __enum_nk_button_behavior.NK_BUTTON_REPEATER; public;
const NK_FIXED = __enum_nk_modify.NK_FIXED; public;
const NK_MODIFIABLE = __enum_nk_modify.NK_MODIFIABLE; public;
const NK_VERTICAL = __enum_nk_orientation.NK_VERTICAL; public;
const NK_HORIZONTAL = __enum_nk_orientation.NK_HORIZONTAL; public;
const NK_MINIMIZED = __enum_nk_collapse_states.NK_MINIMIZED; public;
const NK_MAXIMIZED = __enum_nk_collapse_states.NK_MAXIMIZED; public;
const NK_HIDDEN = __enum_nk_show_states.NK_HIDDEN; public;
const NK_SHOWN = __enum_nk_show_states.NK_SHOWN; public;
const NK_CHART_LINES = __enum_nk_chart_type.NK_CHART_LINES; public;
const NK_CHART_COLUMN = __enum_nk_chart_type.NK_CHART_COLUMN; public;
const NK_CHART_MAX = __enum_nk_chart_type.NK_CHART_MAX; public;
const NK_CHART_HOVERING = __enum_nk_chart_event.NK_CHART_HOVERING; public;
const NK_CHART_CLICKED = __enum_nk_chart_event.NK_CHART_CLICKED; public;
const NK_RGB = __enum_nk_color_format.NK_RGB; public;
const NK_RGBA = __enum_nk_color_format.NK_RGBA; public;
const NK_POPUP_STATIC = __enum_nk_popup_type.NK_POPUP_STATIC; public;
const NK_POPUP_DYNAMIC = __enum_nk_popup_type.NK_POPUP_DYNAMIC; public;
const NK_DYNAMIC = __enum_nk_layout_format.NK_DYNAMIC; public;
const NK_STATIC = __enum_nk_layout_format.NK_STATIC; public;
const NK_TREE_NODE = __enum_nk_tree_type.NK_TREE_NODE; public;
const NK_TREE_TAB = __enum_nk_tree_type.NK_TREE_TAB; public;
const NK_SYMBOL_NONE = __enum_nk_symbol_type.NK_SYMBOL_NONE; public;
const NK_SYMBOL_X = __enum_nk_symbol_type.NK_SYMBOL_X; public;
const NK_SYMBOL_UNDERSCORE = __enum_nk_symbol_type.NK_SYMBOL_UNDERSCORE; public;
const NK_SYMBOL_CIRCLE_SOLID = __enum_nk_symbol_type.NK_SYMBOL_CIRCLE_SOLID; public;
const NK_SYMBOL_CIRCLE_OUTLINE = __enum_nk_symbol_type.NK_SYMBOL_CIRCLE_OUTLINE; public;
const NK_SYMBOL_RECT_SOLID = __enum_nk_symbol_type.NK_SYMBOL_RECT_SOLID; public;
const NK_SYMBOL_RECT_OUTLINE = __enum_nk_symbol_type.NK_SYMBOL_RECT_OUTLINE; public;
const NK_SYMBOL_TRIANGLE_UP = __enum_nk_symbol_type.NK_SYMBOL_TRIANGLE_UP; public;
const NK_SYMBOL_TRIANGLE_DOWN = __enum_nk_symbol_type.NK_SYMBOL_TRIANGLE_DOWN; public;
const NK_SYMBOL_TRIANGLE_LEFT = __enum_nk_symbol_type.NK_SYMBOL_TRIANGLE_LEFT; public;
const NK_SYMBOL_TRIANGLE_RIGHT = __enum_nk_symbol_type.NK_SYMBOL_TRIANGLE_RIGHT; public;
const NK_SYMBOL_PLUS = __enum_nk_symbol_type.NK_SYMBOL_PLUS; public;
const NK_SYMBOL_MINUS = __enum_nk_symbol_type.NK_SYMBOL_MINUS; public;
const NK_SYMBOL_MAX = __enum_nk_symbol_type.NK_SYMBOL_MAX; public;
const NK_KEY_NONE = __enum_nk_keys.NK_KEY_NONE; public;
const NK_KEY_SHIFT = __enum_nk_keys.NK_KEY_SHIFT; public;
const NK_KEY_CTRL = __enum_nk_keys.NK_KEY_CTRL; public;
const NK_KEY_DEL = __enum_nk_keys.NK_KEY_DEL; public;
const NK_KEY_ENTER = __enum_nk_keys.NK_KEY_ENTER; public;
const NK_KEY_TAB = __enum_nk_keys.NK_KEY_TAB; public;
const NK_KEY_BACKSPACE = __enum_nk_keys.NK_KEY_BACKSPACE; public;
const NK_KEY_COPY = __enum_nk_keys.NK_KEY_COPY; public;
const NK_KEY_CUT = __enum_nk_keys.NK_KEY_CUT; public;
const NK_KEY_PASTE = __enum_nk_keys.NK_KEY_PASTE; public;
const NK_KEY_UP = __enum_nk_keys.NK_KEY_UP; public;
const NK_KEY_DOWN = __enum_nk_keys.NK_KEY_DOWN; public;
const NK_KEY_LEFT = __enum_nk_keys.NK_KEY_LEFT; public;
const NK_KEY_RIGHT = __enum_nk_keys.NK_KEY_RIGHT; public;
const NK_KEY_TEXT_INSERT_MODE = __enum_nk_keys.NK_KEY_TEXT_INSERT_MODE; public;
const NK_KEY_TEXT_REPLACE_MODE = __enum_nk_keys.NK_KEY_TEXT_REPLACE_MODE; public;
const NK_KEY_TEXT_RESET_MODE = __enum_nk_keys.NK_KEY_TEXT_RESET_MODE; public;
const NK_KEY_TEXT_LINE_START = __enum_nk_keys.NK_KEY_TEXT_LINE_START; public;
const NK_KEY_TEXT_LINE_END = __enum_nk_keys.NK_KEY_TEXT_LINE_END; public;
const NK_KEY_TEXT_START = __enum_nk_keys.NK_KEY_TEXT_START; public;
const NK_KEY_TEXT_END = __enum_nk_keys.NK_KEY_TEXT_END; public;
const NK_KEY_TEXT_UNDO = __enum_nk_keys.NK_KEY_TEXT_UNDO; public;
const NK_KEY_TEXT_REDO = __enum_nk_keys.NK_KEY_TEXT_REDO; public;
const NK_KEY_TEXT_SELECT_ALL = __enum_nk_keys.NK_KEY_TEXT_SELECT_ALL; public;
const NK_KEY_TEXT_WORD_LEFT = __enum_nk_keys.NK_KEY_TEXT_WORD_LEFT; public;
const NK_KEY_TEXT_WORD_RIGHT = __enum_nk_keys.NK_KEY_TEXT_WORD_RIGHT; public;
const NK_KEY_SCROLL_START = __enum_nk_keys.NK_KEY_SCROLL_START; public;
const NK_KEY_SCROLL_END = __enum_nk_keys.NK_KEY_SCROLL_END; public;
const NK_KEY_SCROLL_DOWN = __enum_nk_keys.NK_KEY_SCROLL_DOWN; public;
const NK_KEY_SCROLL_UP = __enum_nk_keys.NK_KEY_SCROLL_UP; public;
const NK_KEY_MAX = __enum_nk_keys.NK_KEY_MAX; public;
const NK_BUTTON_LEFT = __enum_nk_buttons.NK_BUTTON_LEFT; public;
const NK_BUTTON_MIDDLE = __enum_nk_buttons.NK_BUTTON_MIDDLE; public;
const NK_BUTTON_RIGHT = __enum_nk_buttons.NK_BUTTON_RIGHT; public;
const NK_BUTTON_DOUBLE = __enum_nk_buttons.NK_BUTTON_DOUBLE; public;
const NK_BUTTON_MAX = __enum_nk_buttons.NK_BUTTON_MAX; public;
const NK_ANTI_ALIASING_OFF = __enum_nk_anti_aliasing.NK_ANTI_ALIASING_OFF; public;
const NK_ANTI_ALIASING_ON = __enum_nk_anti_aliasing.NK_ANTI_ALIASING_ON; public;
const NK_CONVERT_SUCCESS = __enum_nk_convert_result.NK_CONVERT_SUCCESS; public;
const NK_CONVERT_INVALID_PARAM = __enum_nk_convert_result.NK_CONVERT_INVALID_PARAM; public;
const NK_CONVERT_COMMAND_BUFFER_FULL = __enum_nk_convert_result.NK_CONVERT_COMMAND_BUFFER_FULL; public;
const NK_CONVERT_VERTEX_BUFFER_FULL = __enum_nk_convert_result.NK_CONVERT_VERTEX_BUFFER_FULL; public;
const NK_CONVERT_ELEMENT_BUFFER_FULL = __enum_nk_convert_result.NK_CONVERT_ELEMENT_BUFFER_FULL; public;
const NK_WINDOW_BORDER = __enum_nk_panel_flags.NK_WINDOW_BORDER; public;
const NK_WINDOW_MOVABLE = __enum_nk_panel_flags.NK_WINDOW_MOVABLE; public;
const NK_WINDOW_SCALABLE = __enum_nk_panel_flags.NK_WINDOW_SCALABLE; public;
const NK_WINDOW_CLOSABLE = __enum_nk_panel_flags.NK_WINDOW_CLOSABLE; public;
const NK_WINDOW_MINIMIZABLE = __enum_nk_panel_flags.NK_WINDOW_MINIMIZABLE; public;
const NK_WINDOW_NO_SCROLLBAR = __enum_nk_panel_flags.NK_WINDOW_NO_SCROLLBAR; public;
const NK_WINDOW_TITLE = __enum_nk_panel_flags.NK_WINDOW_TITLE; public;
const NK_WINDOW_SCROLL_AUTO_HIDE = __enum_nk_panel_flags.NK_WINDOW_SCROLL_AUTO_HIDE; public;
const NK_WINDOW_BACKGROUND = __enum_nk_panel_flags.NK_WINDOW_BACKGROUND; public;
const NK_WINDOW_SCALE_LEFT = __enum_nk_panel_flags.NK_WINDOW_SCALE_LEFT; public;
const NK_WINDOW_NO_INPUT = __enum_nk_panel_flags.NK_WINDOW_NO_INPUT; public;
const NK_WIDGET_INVALID = __enum_nk_widget_layout_states.NK_WIDGET_INVALID; public;
const NK_WIDGET_VALID = __enum_nk_widget_layout_states.NK_WIDGET_VALID; public;
const NK_WIDGET_ROM = __enum_nk_widget_layout_states.NK_WIDGET_ROM; public;
const NK_WIDGET_STATE_MODIFIED = __enum_nk_widget_states.NK_WIDGET_STATE_MODIFIED; public;
const NK_WIDGET_STATE_INACTIVE = __enum_nk_widget_states.NK_WIDGET_STATE_INACTIVE; public;
const NK_WIDGET_STATE_ENTERED = __enum_nk_widget_states.NK_WIDGET_STATE_ENTERED; public;
const NK_WIDGET_STATE_HOVER = __enum_nk_widget_states.NK_WIDGET_STATE_HOVER; public;
const NK_WIDGET_STATE_ACTIVED = __enum_nk_widget_states.NK_WIDGET_STATE_ACTIVED; public;
const NK_WIDGET_STATE_LEFT = __enum_nk_widget_states.NK_WIDGET_STATE_LEFT; public;
const NK_WIDGET_STATE_HOVERED = __enum_nk_widget_states.NK_WIDGET_STATE_HOVERED; public;
const NK_WIDGET_STATE_ACTIVE = __enum_nk_widget_states.NK_WIDGET_STATE_ACTIVE; public;
const NK_TEXT_ALIGN_LEFT = __enum_nk_text_align.NK_TEXT_ALIGN_LEFT; public;
const NK_TEXT_ALIGN_CENTERED = __enum_nk_text_align.NK_TEXT_ALIGN_CENTERED; public;
const NK_TEXT_ALIGN_RIGHT = __enum_nk_text_align.NK_TEXT_ALIGN_RIGHT; public;
const NK_TEXT_ALIGN_TOP = __enum_nk_text_align.NK_TEXT_ALIGN_TOP; public;
const NK_TEXT_ALIGN_MIDDLE = __enum_nk_text_align.NK_TEXT_ALIGN_MIDDLE; public;
const NK_TEXT_ALIGN_BOTTOM = __enum_nk_text_align.NK_TEXT_ALIGN_BOTTOM; public;
const NK_TEXT_LEFT = __enum_nk_text_alignment.NK_TEXT_LEFT; public;
const NK_TEXT_CENTERED = __enum_nk_text_alignment.NK_TEXT_CENTERED; public;
const NK_TEXT_RIGHT = __enum_nk_text_alignment.NK_TEXT_RIGHT; public;
const NK_EDIT_DEFAULT = __enum_nk_edit_flags.NK_EDIT_DEFAULT; public;
const NK_EDIT_READ_ONLY = __enum_nk_edit_flags.NK_EDIT_READ_ONLY; public;
const NK_EDIT_AUTO_SELECT = __enum_nk_edit_flags.NK_EDIT_AUTO_SELECT; public;
const NK_EDIT_SIG_ENTER = __enum_nk_edit_flags.NK_EDIT_SIG_ENTER; public;
const NK_EDIT_ALLOW_TAB = __enum_nk_edit_flags.NK_EDIT_ALLOW_TAB; public;
const NK_EDIT_NO_CURSOR = __enum_nk_edit_flags.NK_EDIT_NO_CURSOR; public;
const NK_EDIT_SELECTABLE = __enum_nk_edit_flags.NK_EDIT_SELECTABLE; public;
const NK_EDIT_CLIPBOARD = __enum_nk_edit_flags.NK_EDIT_CLIPBOARD; public;
const NK_EDIT_CTRL_ENTER_NEWLINE = __enum_nk_edit_flags.NK_EDIT_CTRL_ENTER_NEWLINE; public;
const NK_EDIT_NO_HORIZONTAL_SCROLL = __enum_nk_edit_flags.NK_EDIT_NO_HORIZONTAL_SCROLL; public;
const NK_EDIT_ALWAYS_INSERT_MODE = __enum_nk_edit_flags.NK_EDIT_ALWAYS_INSERT_MODE; public;
const NK_EDIT_MULTILINE = __enum_nk_edit_flags.NK_EDIT_MULTILINE; public;
const NK_EDIT_GOTO_END_ON_ACTIVATE = __enum_nk_edit_flags.NK_EDIT_GOTO_END_ON_ACTIVATE; public;
const NK_EDIT_SIMPLE = __enum_nk_edit_types.NK_EDIT_SIMPLE; public;
const NK_EDIT_FIELD = __enum_nk_edit_types.NK_EDIT_FIELD; public;
const NK_EDIT_BOX = __enum_nk_edit_types.NK_EDIT_BOX; public;
const NK_EDIT_EDITOR = __enum_nk_edit_types.NK_EDIT_EDITOR; public;
const NK_EDIT_ACTIVE = __enum_nk_edit_events.NK_EDIT_ACTIVE; public;
const NK_EDIT_INACTIVE = __enum_nk_edit_events.NK_EDIT_INACTIVE; public;
const NK_EDIT_ACTIVATED = __enum_nk_edit_events.NK_EDIT_ACTIVATED; public;
const NK_EDIT_DEACTIVATED = __enum_nk_edit_events.NK_EDIT_DEACTIVATED; public;
const NK_EDIT_COMMITED = __enum_nk_edit_events.NK_EDIT_COMMITED; public;
const NK_COLOR_TEXT = __enum_nk_style_colors.NK_COLOR_TEXT; public;
const NK_COLOR_WINDOW = __enum_nk_style_colors.NK_COLOR_WINDOW; public;
const NK_COLOR_HEADER = __enum_nk_style_colors.NK_COLOR_HEADER; public;
const NK_COLOR_BORDER = __enum_nk_style_colors.NK_COLOR_BORDER; public;
const NK_COLOR_BUTTON = __enum_nk_style_colors.NK_COLOR_BUTTON; public;
const NK_COLOR_BUTTON_HOVER = __enum_nk_style_colors.NK_COLOR_BUTTON_HOVER; public;
const NK_COLOR_BUTTON_ACTIVE = __enum_nk_style_colors.NK_COLOR_BUTTON_ACTIVE; public;
const NK_COLOR_TOGGLE = __enum_nk_style_colors.NK_COLOR_TOGGLE; public;
const NK_COLOR_TOGGLE_HOVER = __enum_nk_style_colors.NK_COLOR_TOGGLE_HOVER; public;
const NK_COLOR_TOGGLE_CURSOR = __enum_nk_style_colors.NK_COLOR_TOGGLE_CURSOR; public;
const NK_COLOR_SELECT = __enum_nk_style_colors.NK_COLOR_SELECT; public;
const NK_COLOR_SELECT_ACTIVE = __enum_nk_style_colors.NK_COLOR_SELECT_ACTIVE; public;
const NK_COLOR_SLIDER = __enum_nk_style_colors.NK_COLOR_SLIDER; public;
const NK_COLOR_SLIDER_CURSOR = __enum_nk_style_colors.NK_COLOR_SLIDER_CURSOR; public;
const NK_COLOR_SLIDER_CURSOR_HOVER = __enum_nk_style_colors.NK_COLOR_SLIDER_CURSOR_HOVER; public;
const NK_COLOR_SLIDER_CURSOR_ACTIVE = __enum_nk_style_colors.NK_COLOR_SLIDER_CURSOR_ACTIVE; public;
const NK_COLOR_PROPERTY = __enum_nk_style_colors.NK_COLOR_PROPERTY; public;
const NK_COLOR_EDIT = __enum_nk_style_colors.NK_COLOR_EDIT; public;
const NK_COLOR_EDIT_CURSOR = __enum_nk_style_colors.NK_COLOR_EDIT_CURSOR; public;
const NK_COLOR_COMBO = __enum_nk_style_colors.NK_COLOR_COMBO; public;
const NK_COLOR_CHART = __enum_nk_style_colors.NK_COLOR_CHART; public;
const NK_COLOR_CHART_COLOR = __enum_nk_style_colors.NK_COLOR_CHART_COLOR; public;
const NK_COLOR_CHART_COLOR_HIGHLIGHT = __enum_nk_style_colors.NK_COLOR_CHART_COLOR_HIGHLIGHT; public;
const NK_COLOR_SCROLLBAR = __enum_nk_style_colors.NK_COLOR_SCROLLBAR; public;
const NK_COLOR_SCROLLBAR_CURSOR = __enum_nk_style_colors.NK_COLOR_SCROLLBAR_CURSOR; public;
const NK_COLOR_SCROLLBAR_CURSOR_HOVER = __enum_nk_style_colors.NK_COLOR_SCROLLBAR_CURSOR_HOVER; public;
const NK_COLOR_SCROLLBAR_CURSOR_ACTIVE = __enum_nk_style_colors.NK_COLOR_SCROLLBAR_CURSOR_ACTIVE; public;
const NK_COLOR_TAB_HEADER = __enum_nk_style_colors.NK_COLOR_TAB_HEADER; public;
const NK_COLOR_COUNT = __enum_nk_style_colors.NK_COLOR_COUNT; public;
const NK_CURSOR_ARROW = __enum_nk_style_cursor.NK_CURSOR_ARROW; public;
const NK_CURSOR_TEXT = __enum_nk_style_cursor.NK_CURSOR_TEXT; public;
const NK_CURSOR_MOVE = __enum_nk_style_cursor.NK_CURSOR_MOVE; public;
const NK_CURSOR_RESIZE_VERTICAL = __enum_nk_style_cursor.NK_CURSOR_RESIZE_VERTICAL; public;
const NK_CURSOR_RESIZE_HORIZONTAL = __enum_nk_style_cursor.NK_CURSOR_RESIZE_HORIZONTAL; public;
const NK_CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT = __enum_nk_style_cursor.NK_CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT; public;
const NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT = __enum_nk_style_cursor.NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT; public;
const NK_CURSOR_COUNT = __enum_nk_style_cursor.NK_CURSOR_COUNT; public;
const NK_COORD_UV = __enum_nk_font_coord_type.NK_COORD_UV; public;
const NK_COORD_PIXEL = __enum_nk_font_coord_type.NK_COORD_PIXEL; public;
const NK_FONT_ATLAS_ALPHA8 = __enum_nk_font_atlas_format.NK_FONT_ATLAS_ALPHA8; public;
const NK_FONT_ATLAS_RGBA32 = __enum_nk_font_atlas_format.NK_FONT_ATLAS_RGBA32; public;
const NK_BUFFER_FIXED = __enum_nk_allocation_type.NK_BUFFER_FIXED; public;
const NK_BUFFER_DYNAMIC = __enum_nk_allocation_type.NK_BUFFER_DYNAMIC; public;
const NK_BUFFER_FRONT = __enum_nk_buffer_allocation_type.NK_BUFFER_FRONT; public;
const NK_BUFFER_BACK = __enum_nk_buffer_allocation_type.NK_BUFFER_BACK; public;
const NK_BUFFER_MAX = __enum_nk_buffer_allocation_type.NK_BUFFER_MAX; public;
const NK_TEXT_EDIT_SINGLE_LINE = __enum_nk_text_edit_type.NK_TEXT_EDIT_SINGLE_LINE; public;
const NK_TEXT_EDIT_MULTI_LINE = __enum_nk_text_edit_type.NK_TEXT_EDIT_MULTI_LINE; public;
const NK_TEXT_EDIT_MODE_VIEW = __enum_nk_text_edit_mode.NK_TEXT_EDIT_MODE_VIEW; public;
const NK_TEXT_EDIT_MODE_INSERT = __enum_nk_text_edit_mode.NK_TEXT_EDIT_MODE_INSERT; public;
const NK_TEXT_EDIT_MODE_REPLACE = __enum_nk_text_edit_mode.NK_TEXT_EDIT_MODE_REPLACE; public;
const NK_COMMAND_NOP = __enum_nk_command_type.NK_COMMAND_NOP; public;
const NK_COMMAND_SCISSOR = __enum_nk_command_type.NK_COMMAND_SCISSOR; public;
const NK_COMMAND_LINE = __enum_nk_command_type.NK_COMMAND_LINE; public;
const NK_COMMAND_CURVE = __enum_nk_command_type.NK_COMMAND_CURVE; public;
const NK_COMMAND_RECT = __enum_nk_command_type.NK_COMMAND_RECT; public;
const NK_COMMAND_RECT_FILLED = __enum_nk_command_type.NK_COMMAND_RECT_FILLED; public;
const NK_COMMAND_RECT_MULTI_COLOR = __enum_nk_command_type.NK_COMMAND_RECT_MULTI_COLOR; public;
const NK_COMMAND_CIRCLE = __enum_nk_command_type.NK_COMMAND_CIRCLE; public;
const NK_COMMAND_CIRCLE_FILLED = __enum_nk_command_type.NK_COMMAND_CIRCLE_FILLED; public;
const NK_COMMAND_ARC = __enum_nk_command_type.NK_COMMAND_ARC; public;
const NK_COMMAND_ARC_FILLED = __enum_nk_command_type.NK_COMMAND_ARC_FILLED; public;
const NK_COMMAND_TRIANGLE = __enum_nk_command_type.NK_COMMAND_TRIANGLE; public;
const NK_COMMAND_TRIANGLE_FILLED = __enum_nk_command_type.NK_COMMAND_TRIANGLE_FILLED; public;
const NK_COMMAND_POLYGON = __enum_nk_command_type.NK_COMMAND_POLYGON; public;
const NK_COMMAND_POLYGON_FILLED = __enum_nk_command_type.NK_COMMAND_POLYGON_FILLED; public;
const NK_COMMAND_POLYLINE = __enum_nk_command_type.NK_COMMAND_POLYLINE; public;
const NK_COMMAND_TEXT = __enum_nk_command_type.NK_COMMAND_TEXT; public;
const NK_COMMAND_IMAGE = __enum_nk_command_type.NK_COMMAND_IMAGE; public;
const NK_COMMAND_CUSTOM = __enum_nk_command_type.NK_COMMAND_CUSTOM; public;
const NK_CLIPPING_OFF = __enum_nk_command_clipping.NK_CLIPPING_OFF; public;
const NK_CLIPPING_ON = __enum_nk_command_clipping.NK_CLIPPING_ON; public;
const NK_STYLE_ITEM_COLOR = __enum_nk_style_item_type.NK_STYLE_ITEM_COLOR; public;
const NK_STYLE_ITEM_IMAGE = __enum_nk_style_item_type.NK_STYLE_ITEM_IMAGE; public;
const NK_HEADER_LEFT = __enum_nk_style_header_align.NK_HEADER_LEFT; public;
const NK_HEADER_RIGHT = __enum_nk_style_header_align.NK_HEADER_RIGHT; public;
const NK_PANEL_NONE = __enum_nk_panel_type.NK_PANEL_NONE; public;
const NK_PANEL_WINDOW = __enum_nk_panel_type.NK_PANEL_WINDOW; public;
const NK_PANEL_GROUP = __enum_nk_panel_type.NK_PANEL_GROUP; public;
const NK_PANEL_POPUP = __enum_nk_panel_type.NK_PANEL_POPUP; public;
const NK_PANEL_CONTEXTUAL = __enum_nk_panel_type.NK_PANEL_CONTEXTUAL; public;
const NK_PANEL_COMBO = __enum_nk_panel_type.NK_PANEL_COMBO; public;
const NK_PANEL_MENU = __enum_nk_panel_type.NK_PANEL_MENU; public;
const NK_PANEL_TOOLTIP = __enum_nk_panel_type.NK_PANEL_TOOLTIP; public;
const NK_PANEL_SET_NONBLOCK = __enum_nk_panel_set.NK_PANEL_SET_NONBLOCK; public;
const NK_PANEL_SET_POPUP = __enum_nk_panel_set.NK_PANEL_SET_POPUP; public;
const NK_PANEL_SET_SUB = __enum_nk_panel_set.NK_PANEL_SET_SUB; public;
const NK_LAYOUT_DYNAMIC_FIXED = __enum_nk_panel_row_layout_type.NK_LAYOUT_DYNAMIC_FIXED; public;
const NK_LAYOUT_DYNAMIC_ROW = __enum_nk_panel_row_layout_type.NK_LAYOUT_DYNAMIC_ROW; public;
const NK_LAYOUT_DYNAMIC_FREE = __enum_nk_panel_row_layout_type.NK_LAYOUT_DYNAMIC_FREE; public;
const NK_LAYOUT_DYNAMIC = __enum_nk_panel_row_layout_type.NK_LAYOUT_DYNAMIC; public;
const NK_LAYOUT_STATIC_FIXED = __enum_nk_panel_row_layout_type.NK_LAYOUT_STATIC_FIXED; public;
const NK_LAYOUT_STATIC_ROW = __enum_nk_panel_row_layout_type.NK_LAYOUT_STATIC_ROW; public;
const NK_LAYOUT_STATIC_FREE = __enum_nk_panel_row_layout_type.NK_LAYOUT_STATIC_FREE; public;
const NK_LAYOUT_STATIC = __enum_nk_panel_row_layout_type.NK_LAYOUT_STATIC; public;
const NK_LAYOUT_TEMPLATE = __enum_nk_panel_row_layout_type.NK_LAYOUT_TEMPLATE; public;
const NK_LAYOUT_COUNT = __enum_nk_panel_row_layout_type.NK_LAYOUT_COUNT; public;
const NK_WINDOW_PRIVATE = __enum_nk_window_flags.NK_WINDOW_PRIVATE; public;
const NK_WINDOW_DYNAMIC = __enum_nk_window_flags.NK_WINDOW_DYNAMIC; public;
const NK_WINDOW_ROM = __enum_nk_window_flags.NK_WINDOW_ROM; public;
const NK_WINDOW_NOT_INTERACTIVE = __enum_nk_window_flags.NK_WINDOW_NOT_INTERACTIVE; public;
const NK_WINDOW_HIDDEN = __enum_nk_window_flags.NK_WINDOW_HIDDEN; public;
const NK_WINDOW_CLOSED = __enum_nk_window_flags.NK_WINDOW_CLOSED; public;
const NK_WINDOW_MINIMIZED = __enum_nk_window_flags.NK_WINDOW_MINIMIZED; public;
const NK_WINDOW_REMOVE_ROM = __enum_nk_window_flags.NK_WINDOW_REMOVE_ROM; public;
var nk_null_rect: __struct_nk_rect := [-8192.0, -8192.0, 16384, 16384]; public;
var nk_red: __struct_nk_color := [255, 0, 0, 255]; public;
var nk_green: __struct_nk_color := [0, 255, 0, 255]; public;
var nk_blue: __struct_nk_color := [0, 0, 255, 255]; public;
var nk_white: __struct_nk_color := [255, 255, 255, 255]; public;
var nk_black: __struct_nk_color := [0, 0, 0, 255]; public;
var nk_yellow: __struct_nk_color := [255, 255, 0, 255]; public;
const NK_DO_NOT_STOP_ON_NEW_LINE = ___anon1.NK_DO_NOT_STOP_ON_NEW_LINE; public;
const NK_STOP_ON_NEW_LINE = ___anon1.NK_STOP_ON_NEW_LINE; public;
const NK_INSERT_BACK = __enum_nk_window_insert_location.NK_INSERT_BACK; public;
const NK_INSERT_FRONT = __enum_nk_window_insert_location.NK_INSERT_FRONT; public;
const NK_TOGGLE_CHECK = __enum_nk_toggle_type.NK_TOGGLE_CHECK; public;
const NK_TOGGLE_OPTION = __enum_nk_toggle_type.NK_TOGGLE_OPTION; public;
const NK_PROPERTY_DEFAULT = __enum_nk_property_status.NK_PROPERTY_DEFAULT; public;
const NK_PROPERTY_EDIT = __enum_nk_property_status.NK_PROPERTY_EDIT; public;
const NK_PROPERTY_DRAG = __enum_nk_property_status.NK_PROPERTY_DRAG; public;
const NK_FILTER_INT = __enum_nk_property_filter.NK_FILTER_INT; public;
const NK_FILTER_FLOAT = __enum_nk_property_filter.NK_FILTER_FLOAT; public;
const NK_PROPERTY_INT = __enum_nk_property_kind.NK_PROPERTY_INT; public;
const NK_PROPERTY_FLOAT = __enum_nk_property_kind.NK_PROPERTY_FLOAT; public;
const NK_PROPERTY_DOUBLE = __enum_nk_property_kind.NK_PROPERTY_DOUBLE; public;

// ===============================================================
//  *
//  *                              MATH
//  *
//  * ===============================================================
//   Since nuklear is supposed to work on all systems providing floating point
//     math without any dependencies I also had to implement my own math functions
//     for sqrt, sin and cos. Since the actual highly accurate implementations for
//     the standard library functions are quite complex and I do not need high
//     precision for my use cases I use approximations.
//     Sqrt
//     ----
//     For square root nuklear uses the famous fast inverse square root:
//     https://en.wikipedia.org/wiki/Fast_inverse_square_root with
//     slightly tweaked magic constant. While on today's hardware it is
//     probably not faster it is still fast and accurate enough for
//     nuklear's use cases. IMPORTANT: this requires float format IEEE 754
//     Sine/Cosine
//     -----------
//     All constants inside both function are generated Remez's minimax
//     approximations for value range 0...2*PI. The reason why I decided to
//     approximate exactly that range is that nuklear only needs sine and
//     cosine to generate circles which only requires that exact range.
//     In addition I used Remez instead of Taylor for additional precision:
//     www.lolengine.net/blog/2011/12/21/better-function-approximations.
//     The tool I used to generate constants for both sine and cosine
//     (it can actually approximate a lot more functions) can be
//     found here: www.lolengine.net/wiki/oss/lolremez
method nk_inv_sqrt(n: Single): Single; public;
begin
  var x2: Single;
  var threehalfs: Single := 1.5;
  var conv: anontype_2 := [0];
  conv.f := n;
  x2 := (n * 0.5);
  conv.i := (1597463172 - (conv.i shr 1));
  conv.f := (conv.f * (threehalfs - ((x2 * conv.f) * conv.f)));
  exit conv.f;
end;

method nk_sqrt(x: Single): Single; public;
begin
  exit (x * nk_inv_sqrt(x));
end;

method nk_sin(x: Single): Single; public;
begin
  var a0: Single := +1.91059303449319E-31;
  var a1: Single := +1.00086760520935;
  var a2: Single := -0.0121276127174497;
  var a3: Single := -0.138078778982162;
  var a4: Single := -0.0267353393137455;
  var a5: Single := +0.0208026599138975;
  var a6: Single := -0.0030399605166167;
  var a7: Single := +0.000138235642225482;
  exit (a0 + (x * (a1 + (x * (a2 + (x * (a3 + (x * (a4 + (x * (a5 + (x * (a6 + (x * a7))))))))))))));
end;

method nk_cos(x: Single): Single; public;
begin
  var a0: Single := +1.00238597393036;
  var a1: Single := -0.0381919965147972;
  var a2: Single := -0.394382327795029;
  var a3: Single := -0.118134036660194;
  var a4: Single := +0.107123799622059;
  var a5: Single := -0.0186637155711651;
  var a6: Single := +0.00099014095030725;
  var a7: Single := -5.230221434443E-14;
  exit (a0 + (x * (a1 + (x * (a2 + (x * (a3 + (x * (a4 + (x * (a5 + (x * (a6 + (x * a7))))))))))))));
end;

method nk_round_up_pow2(v: nk_uint): nk_uint; public;
begin
  v := v - 1;
  v := v or (v shr 1);
  v := v or (v shr 2);
  v := v or (v shr 4);
  v := v or (v shr 8);
  v := v or (v shr 16);
  v := v + 1;
  exit v;
end;

method nk_pow(x: Double; n: Int32): Double; public;
begin
  // check the sign of n
  var r: Double := 1;
  var plus: Int32 := (n ≥ 0);
  n := (if plus then (n) else (-n));
  while (n > 0) do begin
    if ((n and 1) = 1) then begin
      r := r * x;
    end;
    n := n / 2;
    x := x * x;
  end;
  exit (if plus then (r) else ((1.0 / r)));
end;

method nk_ifloord(x: Double): Int32; public;
begin
  x := Double((Int32(x) - (if (x < 0.0) then (1) else (0))));
  exit Int32(x);
end;

method nk_ifloorf(x: Single): Int32; public;
begin
  x := Single((Int32(x) - (if (x < 0.0) then (1) else (0))));
  exit Int32(x);
end;

method nk_iceilf(x: Single): Int32; public;
begin
  if (x ≥ 0) then begin
    var i: Int32 := Int32(x);
    exit (if (x > i) then ((i + 1)) else (i));
  end
  else begin
    var t: Int32 := Int32(x);
    var r: Single := (x - Single(t));
    exit (if (r > 0.0) then ((t + 1)) else (t));
  end;
end;

method nk_log10(n: Double): Int32; public;
begin
  var neg: Int32;
  var ret: Int32;
  var exp: Int32 := 0;
  neg := (if (n < 0) then (1) else (0));
  ret := (if neg then (Int32(-n)) else (Int32(n)));
  while ((ret / 10) > 0) do begin
    ret := ret / 10;
    exp := exp + 1;
  end;
  if neg then begin
    exp := -exp;
  end;
  exit exp;
end;

method nk_get_null_rect: __struct_nk_rect; public;
begin
  exit nk_null_rect;
end;

method nk_rect(x: Single; y: Single; w: Single; h: Single): __struct_nk_rect; public;
begin
  var r: __struct_nk_rect;
  r.x := x;
  r.y := y;
  r.w := w;
  r.h := h;
  exit r;
end;

method nk_recti(x: Int32; y: Int32; w: Int32; h: Int32): __struct_nk_rect; public;
begin
  var r: __struct_nk_rect;
  r.x := Single(x);
  r.y := Single(y);
  r.w := Single(w);
  r.h := Single(h);
  exit r;
end;

method nk_recta(pos: __struct_nk_vec2; size: __struct_nk_vec2): __struct_nk_rect; public;
begin
  exit nk_rect(pos.x, pos.y, size.x, size.y);
end;

method nk_rectv(r: ^Single): __struct_nk_rect; public;
begin
  exit nk_rect(r[0], r[1], r[2], r[3]);
end;

method nk_rectiv(r: ^Int32): __struct_nk_rect; public;
begin
  exit nk_recti(r[0], r[1], r[2], r[3]);
end;

method nk_rect_pos(r: __struct_nk_rect): __struct_nk_vec2; public;
begin
  var ret: __struct_nk_vec2;
  ret.x := r.x;
  ret.y := r.y;
  exit ret;
end;

method nk_rect_size(r: __struct_nk_rect): __struct_nk_vec2; public;
begin
  var ret: __struct_nk_vec2;
  ret.x := r.w;
  ret.y := r.h;
  exit ret;
end;

method nk_shrink_rect(r: __struct_nk_rect; amount: Single): __struct_nk_rect; public;
begin
  var res: __struct_nk_rect;
  r.w := (if (r.w < (2 * amount)) then ((2 * amount)) else (r.w));
  r.h := (if (r.h < (2 * amount)) then ((2 * amount)) else (r.h));
  res.x := (r.x + amount);
  res.y := (r.y + amount);
  res.w := (r.w - (2 * amount));
  res.h := (r.h - (2 * amount));
  exit res;
end;

method nk_pad_rect(r: __struct_nk_rect; pad: __struct_nk_vec2): __struct_nk_rect; public;
begin
  r.w := (if (r.w < (2 * pad.x)) then ((2 * pad.x)) else (r.w));
  r.h := (if (r.h < (2 * pad.y)) then ((2 * pad.y)) else (r.h));
  r.x := r.x + pad.x;
  r.y := r.y + pad.y;
  r.w := r.w - (2 * pad.x);
  r.h := r.h - (2 * pad.y);
  exit r;
end;

method nk_vec2(x: Single; y: Single): __struct_nk_vec2; public;
begin
  var ret: __struct_nk_vec2;
  ret.x := x;
  ret.y := y;
  exit ret;
end;

method nk_vec2i(x: Int32; y: Int32): __struct_nk_vec2; public;
begin
  var ret: __struct_nk_vec2;
  ret.x := Single(x);
  ret.y := Single(y);
  exit ret;
end;

method nk_vec2v(v: ^Single): __struct_nk_vec2; public;
begin
  exit nk_vec2(v[0], v[1]);
end;

method nk_vec2iv(v: ^Int32): __struct_nk_vec2; public;
begin
  exit nk_vec2i(v[0], v[1]);
end;

method nk_unify(clip: ^__struct_nk_rect; a: ^__struct_nk_rect; x0: Single; y0: Single; x1: Single; y1: Single); public;
begin
  assert(a);
  assert(clip);
  (clip)^.x := (if ((a)^.x < x0) then (x0) else ((a)^.x));
  (clip)^.y := (if ((a)^.y < y0) then (y0) else ((a)^.y));
  (clip)^.w := ((if (((a)^.x + (a)^.w) < x1) then (((a)^.x + (a)^.w)) else (x1)) - (clip)^.x);
  (clip)^.h := ((if (((a)^.y + (a)^.h) < y1) then (((a)^.y + (a)^.h)) else (y1)) - (clip)^.y);
  (clip)^.w := (if (0 < (clip)^.w) then ((clip)^.w) else (0));
  (clip)^.h := (if (0 < (clip)^.h) then ((clip)^.h) else (0));
end;

method nk_triangle_from_direction(&result: ^__struct_nk_vec2; r: __struct_nk_rect; pad_x: Single; pad_y: Single; direction: __enum_nk_heading); public;
begin
  var w_half: Single;
  var h_half: Single;
  assert(&result);
  r.w := (if ((2 * pad_x) < r.w) then (r.w) else ((2 * pad_x)));
  r.h := (if ((2 * pad_y) < r.h) then (r.h) else ((2 * pad_y)));
  r.w := (r.w - (2 * pad_x));
  r.h := (r.h - (2 * pad_y));
  r.x := (r.x + pad_x);
  r.y := (r.y + pad_y);
  w_half := (r.w / 2.0);
  h_half := (r.h / 2.0);
  if (direction = NK_UP) then begin
    &result[0] := nk_vec2((r.x + w_half), r.y);
    &result[1] := nk_vec2((r.x + r.w), (r.y + r.h));
    &result[2] := nk_vec2(r.x, (r.y + r.h));
  end
  else begin
    if (direction = NK_RIGHT) then begin
      &result[0] := nk_vec2(r.x, r.y);
      &result[1] := nk_vec2((r.x + r.w), (r.y + h_half));
      &result[2] := nk_vec2(r.x, (r.y + r.h));
    end
    else begin
      if (direction = NK_DOWN) then begin
        &result[0] := nk_vec2(r.x, r.y);
        &result[1] := nk_vec2((r.x + r.w), r.y);
        &result[2] := nk_vec2((r.x + w_half), (r.y + r.h));
      end
      else begin
        &result[0] := nk_vec2(r.x, (r.y + h_half));
        &result[1] := nk_vec2((r.x + r.w), r.y);
        &result[2] := nk_vec2((r.x + r.w), (r.y + r.h));
      end;
    end;
  end;
end;

method nk_is_lower(c: Int32): Int32; public;
begin
  exit (Boolean((Boolean((c ≥ 97)) and Boolean((c ≤ 122)))) or Boolean((Boolean((c ≥ 224)) and Boolean((c ≤ 255)))));
end;

method nk_is_upper(c: Int32): Int32; public;
begin
  exit (Boolean((Boolean((c ≥ 65)) and Boolean((c ≤ 90)))) or Boolean((Boolean((c ≥ 192)) and Boolean((c ≤ 223)))));
end;

method nk_to_upper(c: Int32): Int32; public;
begin
  exit (if (Boolean((c ≥ 97)) and Boolean((c ≤ 122))) then ((c - (97 - 65))) else (c));
end;

method nk_to_lower(c: Int32): Int32; public;
begin
  exit (if (Boolean((c ≥ 65)) and Boolean((c ≤ 90))) then ((c - (97 + 65))) else (c));
end;

method nk_memcopy(dst0: ^Void; src0: ^Void; length: nk_size): ^Void; public;
begin
  var t: nk_ptr;
  var dst: ^Byte := ^Byte(dst0);
  var src: ^Byte := ^Byte(src0);
  if (Boolean((length = 0)) or Boolean((dst = src))) then begin
    goto done;
  end;
  begin
  end;
  // defined: nk_word ()  int
  //  defined: nk_wsize ()  sizeof(nk_word)
  //  defined: nk_wmask ()  (nk_wsize-1)
  //  defined: NK_TLOOP (s) if (t) NK_TLOOP1(s)
  //  defined: NK_TLOOP1 (s) do { s; } while (--t)
  if (dst < src) then begin
    t := nk_ptr(src);
    // only need low bits
    if ((t or nk_ptr(dst)) and (sizeOf(Int32) - 1)) then begin
      if (Boolean(((t xor nk_ptr(dst)) and (sizeOf(Int32) - 1))) or Boolean((length < sizeOf(Int32)))) then begin
        t := length;
      end
      else begin
        t := (sizeOf(Int32) - (t and (sizeOf(Int32) - 1)));
      end;
      length := length - t;
      repeat
        ((() -> begin
          var _tmp2 := dst;
          dst := _tmp2 + 1;
          exit _tmp2;
        end)())^ := ((() -> begin
          var _tmp3 := src;
          src := _tmp3 + 1;
          exit _tmp3;
        end)())^;
      until not (() -> begin
        var _tmp1 := t - 1;
        t := _tmp1;
        exit _tmp1;
      end)();
    end;
    t := (length / sizeOf(Int32));
    if t then begin
      repeat
        (^Int32(^Void(dst)))^ := (^Int32(^Void(src)))^;
        src := src + sizeOf(Int32);
        dst := dst + sizeOf(Int32);
      until not (() -> begin
        var _tmp4 := t - 1;
        t := _tmp4;
        exit _tmp4;
      end)();
    end;
    t := (length and (sizeOf(Int32) - 1));
    if t then begin
      repeat
        ((() -> begin
          var _tmp8 := dst;
          dst := _tmp8 + 1;
          exit _tmp8;
        end)())^ := ((() -> begin
          var _tmp9 := src;
          src := _tmp9 + 1;
          exit _tmp9;
        end)())^;
      until not (() -> begin
        var _tmp7 := t - 1;
        t := _tmp7;
        exit _tmp7;
      end)();
    end;
  end
  else begin
    src := src + length;
    dst := dst + length;
    t := nk_ptr(src);
    if ((t or nk_ptr(dst)) and (sizeOf(Int32) - 1)) then begin
      if (Boolean(((t xor nk_ptr(dst)) and (sizeOf(Int32) - 1))) or Boolean((length ≤ sizeOf(Int32)))) then begin
        t := length;
      end
      else begin
        t := t and (sizeOf(Int32) - 1);
      end;
      length := length - t;
      repeat
        ((() -> begin
          var _tmp15 := dst - 1;
          dst := _tmp15;
          exit _tmp15;
        end)())^ := ((() -> begin
          var _tmp16 := src - 1;
          src := _tmp16;
          exit _tmp16;
        end)())^;
      until not (() -> begin
        var _tmp14 := t - 1;
        t := _tmp14;
        exit _tmp14;
      end)();
    end;
    t := (length / sizeOf(Int32));
    if t then begin
      repeat
        src := src - sizeOf(Int32);
        dst := dst - sizeOf(Int32);
        (^Int32(^Void(dst)))^ := (^Int32(^Void(src)))^;
      until not (() -> begin
        var _tmp17 := t - 1;
        t := _tmp17;
        exit _tmp17;
      end)();
    end;
    t := (length and (sizeOf(Int32) - 1));
    if t then begin
      repeat
        ((() -> begin
          var _tmp21 := dst - 1;
          dst := _tmp21;
          exit _tmp21;
        end)())^ := ((() -> begin
          var _tmp22 := src - 1;
          src := _tmp22;
          exit _tmp22;
        end)())^;
      until not (() -> begin
        var _tmp20 := t - 1;
        t := _tmp20;
        exit _tmp20;
      end)();
    end;
  end;
  done:;
  exit dst0;
end;

method nk_memset(ptr: ^Void; c0: Int32; size: nk_size); public;
begin
  // defined: nk_word ()  unsigned
  //  defined: nk_wsize ()  sizeof(nk_word)
  //  defined: nk_wmask ()  (nk_wsize - 1)
  var dst: ^nk_byte := ^nk_byte(ptr);
  var c: UInt32 := 0;
  var t: nk_size := 0;
  if ((() -> begin
    var _tmp0 := nk_byte(c0);
    c := _tmp0;
    exit _tmp0;
  end)() ≠ 0) then begin
    c := ((c shl 8) or c);
    // at least 16-bits
    if (sizeOf(UInt32) > 2) then begin
      c := ((c shl 16) or c);
    end;
  end;
  // too small of a word count
  dst := ^nk_byte(ptr);
  if (size < (3 * sizeOf(UInt32))) then begin
    while (() -> begin
      var _tmp1 := size;
      size := _tmp1 - 1;
      exit _tmp1;
    end)() do
      ((() -> begin
        var _tmp2 := dst;
        dst := _tmp2 + 1;
        exit _tmp2;
      end)())^ := nk_byte(c0);
    exit;
  end;
  // align destination
  if ((() -> begin
    var _tmp3 := (nk_size(dst) and (sizeOf(UInt32) - 1));
    t := _tmp3;
    exit _tmp3;
  end)() ≠ 0) then begin
    t := (sizeOf(UInt32) - t);
    size := size - t;
    repeat
      ((() -> begin
        var _tmp6 := dst;
        dst := _tmp6 + 1;
        exit _tmp6;
      end)())^ := nk_byte(c0);
    until not ((() -> begin
      var _tmp5 := t - 1;
      t := _tmp5;
      exit _tmp5;
    end)() ≠ 0);
  end;
  // fill word
  t := (size / sizeOf(UInt32));
  repeat
    (^UInt32(^Void(dst)))^ := c;
    dst := dst + sizeOf(UInt32);
  until not ((() -> begin
    var _tmp7 := t - 1;
    t := _tmp7;
    exit _tmp7;
  end)() ≠ 0);
  // fill trailing bytes
  t := (size and (sizeOf(UInt32) - 1));
  if (t ≠ 0) then begin
    repeat
      ((() -> begin
        var _tmp10 := dst;
        dst := _tmp10 + 1;
        exit _tmp10;
      end)())^ := nk_byte(c0);
    until not ((() -> begin
      var _tmp9 := t - 1;
      t := _tmp9;
      exit _tmp9;
    end)() ≠ 0);
  end;
end;

method nk_zero(ptr: ^Void; size: nk_size); public;
begin
  assert(ptr);
  memset(ptr, 0, size);
end;

method nk_strlen(str: ^Byte): Int32; public;
begin
  var siz: Int32 := 0;
  assert(str);
  while (Boolean(str) and Boolean((((() -> begin
    var _tmp0 := str;
    str := _tmp0 + 1;
    exit _tmp0;
  end)())^ ≠ 0))) do
    siz := siz + 1;
  exit siz;
end;

method nk_strtoi(str: ^Byte; endptr: ^^Byte): Int32; public;
begin
  var neg: Int32 := 1;
  var p: ^Byte := str;
  var value: Int32 := 0;
  assert(str);
  if not Boolean(str) then begin
    exit 0;
  end;
  // skip whitespace
  while ((p)^ = 32) do
    p := p + 1;
  if ((p)^ = 45) then begin
    neg := -1;
    p := p + 1;
  end;
  while (Boolean((Boolean((p)^) and Boolean(((p)^ ≥ 48)))) and Boolean(((p)^ ≤ 57))) do begin
    value := ((value * 10) + Int32(((p)^ - 48)));
    p := p + 1;
  end;
  if endptr then begin
    (endptr)^ := p;
  end;
  exit (neg * value);
end;

method nk_strtod(str: ^Byte; endptr: ^^Byte): Double; public;
begin
  var m: Double;
  var neg: Double := 1.0;
  var p: ^Byte := str;
  var value: Double := 0;
  var number: Double := 0;
  assert(str);
  if not Boolean(str) then begin
    exit 0;
  end;
  // skip whitespace
  while ((p)^ = 32) do
    p := p + 1;
  if ((p)^ = 45) then begin
    neg := -1.0;
    p := p + 1;
  end;
  while (Boolean((Boolean((p)^) and Boolean(((p)^ ≠ 46)))) and Boolean(((p)^ ≠ 101))) do begin
    value := ((value * 10.0) + Double(((p)^ - 48)));
    p := p + 1;
  end;
  if ((p)^ = 46) then begin
    p := p + 1;
    begin
      // for loop: initializer
      m := 0.1;
      // for loop: compare
      _looplabel0:;
      if (Boolean((p)^) and Boolean(((p)^ ≠ 101))) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        value := (value + (Double(((p)^ - 48)) * m));
        m := m * 0.1;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      p := p + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
  end;
  if ((p)^ = 101) then begin
    var i: Int32;
    var pow: Int32;
    var &div: Int32;
    p := p + 1;
    if ((p)^ = 45) then begin
      &div := nk_true;
      p := p + 1;
    end
    else begin
      if ((p)^ = 43) then begin
        &div := nk_false;
        p := p + 1;
      end
      else begin
        &div := nk_false;
      end;
    end;
    begin
      // for loop: initializer
      pow := 0;
      // for loop: compare
      _looplabel2:;
      if (p)^ then begin
      end
      else begin
        goto _breaklabel2;
      end;
      // for loop: body
      pow := ((pow * 10) + Int32(((p)^ - 48)));
      _continuelabel2:;
      // for loop: increment/continue
      p := p + 1;
      goto _looplabel2;
      // for loop: break
      _breaklabel2:;
    end;
    begin
      // for loop: initializer
      m := 1.0;
      i := 0;
      // for loop: compare
      _looplabel3:;
      if (i < pow) then begin
      end
      else begin
        goto _breaklabel3;
      end;
      // for loop: body
      m := m * 10.0;
      _continuelabel3:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel3;
      // for loop: break
      _breaklabel3:;
    end;
    if &div then begin
      value := value / m;
    end
    else begin
      value := value * m;
    end;
  end;
  number := (value * neg);
  if endptr then begin
    (endptr)^ := p;
  end;
  exit number;
end;

method nk_strtof(str: ^Byte; endptr: ^^Byte): Single; public;
begin
  var float_value: Single;
  var double_value: Double;
  double_value := nk_strtod(str, endptr);
  float_value := Single(double_value);
  exit float_value;
end;

method nk_stricmp(s1: ^Byte; s2: ^Byte): Int32; public;
begin
  var c1: nk_int;
  var c2: nk_int;
  var d: nk_int;
  repeat
    c1 := ((() -> begin
      var _tmp0 := s1;
      s1 := _tmp0 + 1;
      exit _tmp0;
    end)())^;
    c2 := ((() -> begin
      var _tmp1 := s2;
      s2 := _tmp1 + 1;
      exit _tmp1;
    end)())^;
    d := (c1 - c2);
    while d do begin
      if (Boolean((c1 ≤ 90)) and Boolean((c1 ≥ 65))) then begin
        d := d + (97 - 65);
        if not Boolean(d) then begin
          break;
        end;
      end;
      if (Boolean((c2 ≤ 90)) and Boolean((c2 ≥ 65))) then begin
        d := d - (97 - 65);
        if not Boolean(d) then begin
          break;
        end;
      end;
      exit (((d ≥ 0) shl 1) - 1);
    end;
  until not c1;
  exit 0;
end;

method nk_stricmpn(s1: ^Byte; s2: ^Byte; n: Int32): Int32; public;
begin
  var c1: Int32;
  var c2: Int32;
  var d: Int32;
  assert((n ≥ 0));
  repeat
    c1 := ((() -> begin
      var _tmp0 := s1;
      s1 := _tmp0 + 1;
      exit _tmp0;
    end)())^;
    c2 := ((() -> begin
      var _tmp1 := s2;
      s2 := _tmp1 + 1;
      exit _tmp1;
    end)())^;
    if not Boolean((() -> begin
      var _tmp2 := n;
      n := _tmp2 - 1;
      exit _tmp2;
    end)()) then begin
      exit 0;
    end;
    d := (c1 - c2);
    while d do begin
      if (Boolean((c1 ≤ 90)) and Boolean((c1 ≥ 65))) then begin
        d := d + (97 - 65);
        if not Boolean(d) then begin
          break;
        end;
      end;
      if (Boolean((c2 ≤ 90)) and Boolean((c2 ≥ 65))) then begin
        d := d - (97 - 65);
        if not Boolean(d) then begin
          break;
        end;
      end;
      exit (((d ≥ 0) shl 1) - 1);
    end;
  until not c1;
  exit 0;
end;

method nk_str_match_here(regexp: ^Byte; text: ^Byte): Int32; public;
begin
  if (regexp[0] = 0) then begin
    exit 1;
  end;
  if (regexp[1] = 42) then begin
    exit nk_str_match_star(regexp[0], (regexp + 2), text);
  end;
  if (Boolean((regexp[0] = 36)) and Boolean((regexp[1] = 0))) then begin
    exit ((text)^ = 0);
  end;
  if (Boolean(((text)^ ≠ 0)) and Boolean((Boolean((regexp[0] = 46)) or Boolean((regexp[0] = (text)^))))) then begin
    exit nk_str_match_here((regexp + 1), (text + 1));
  end;
  exit 0;
end;

method nk_str_match_star(c: Int32; regexp: ^Byte; text: ^Byte): Int32; public;
begin
  repeat
    // a '* matches zero or more instances
    if nk_str_match_here(regexp, text) then begin
      exit 1;
    end;
  until not (Boolean(((text)^ ≠ 0)) and Boolean((Boolean((((() -> begin
    var _tmp0 := text;
    text := _tmp0 + 1;
    exit _tmp0;
  end)())^ = c)) or Boolean((c = 46)))));
  exit 0;
end;

method nk_strfilter(text: ^Byte; regexp: ^Byte): Int32; public;
begin
  // c    matches any literal character c
  //     .    matches any single character
  //     ^    matches the beginning of the input string
  //     $    matches the end of the input string
  //     *    matches zero or more occurrences of the previous character
  if (regexp[0] = 94) then begin
    exit nk_str_match_here((regexp + 1), text);
  end;
  repeat
    // must look even if string is empty
    if nk_str_match_here(regexp, text) then begin
      exit 1;
    end;
  until not (((() -> begin
    var _tmp0 := text;
    text := _tmp0 + 1;
    exit _tmp0;
  end)())^ ≠ 0);
  exit 0;
end;

method nk_strmatch_fuzzy_text(str: ^Byte; str_len: Int32; pattern: ^Byte; out_score: ^Int32): Int32; public;
begin
  // Returns true if each character in pattern is found sequentially within str
  //      * if found then out_score is also set. Score value has no intrinsic meaning.
  //      * Range varies with pattern. Can only compare scores with same search pattern. 
  //  bonus for adjacent matches 
  //  defined: NK_ADJACENCY_BONUS ()  5
  //  bonus if match occurs after a separator 
  //  defined: NK_SEPARATOR_BONUS ()  10
  //  bonus if match is uppercase and prev is lower 
  //  defined: NK_CAMEL_BONUS ()  10
  //  penalty applied for every letter in str before the first match 
  //  defined: NK_LEADING_LETTER_PENALTY ()  (-3)
  //  maximum penalty for leading letters 
  //  defined: NK_MAX_LEADING_LETTER_PENALTY ()  (-9)
  //  penalty for every letter that doesn't matter 
  //  defined: NK_UNMATCHED_LETTER_PENALTY ()  (-1)
  //  loop variables
  var score: Int32 := 0;
  var pattern_iter: ^Byte := pattern;
  var str_iter: Int32 := 0;
  var prev_matched: Int32 := nk_false;
  var prev_lower: Int32 := nk_false;
  // true so if first letter match gets separator bonus
  var prev_separator: Int32 := nk_true;
  // use "best" matched letter if multiple string letters match the pattern
  var best_letter: ^Byte := 0;
  var best_letter_score: Int32 := 0;
  // loop over strings
  assert(str);
  assert(pattern);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(str_len)))) or Boolean(not Boolean(pattern))) then begin
    exit 0;
  end;
  while (str_iter < str_len) do begin
    var pattern_letter: Byte := (pattern_iter)^;
    var str_letter: Byte := str[str_iter];
    var next_match: Int32 := (Boolean(((pattern_iter)^ ≠ 0)) and Boolean((nk_to_lower(pattern_letter) = nk_to_lower(str_letter))));
    var rematch: Int32 := (Boolean(best_letter) and Boolean((nk_to_upper((best_letter)^) = nk_to_upper(str_letter))));
    var advanced: Int32 := (Boolean(next_match) and Boolean(best_letter));
    var pattern_repeat: Int32 := (Boolean(best_letter) and Boolean(((pattern_iter)^ ≠ 0)));
    pattern_repeat := (Boolean(pattern_repeat) and Boolean((nk_to_lower((best_letter)^) = nk_to_lower(pattern_letter))));
    if (Boolean(advanced) or Boolean(pattern_repeat)) then begin
      score := score + best_letter_score;
      best_letter := 0;
      best_letter_score := 0;
    end;
    if (Boolean(next_match) or Boolean(rematch)) then begin
      var new_score: Int32 := 0;
      // Apply penalty for each letter before the first pattern match
      if (pattern_iter = pattern) then begin
        var count: Int32 := Int32(((@str[str_iter]) - str));
        var penalty: Int32 := (-3 * count);
        if (penalty < -9) then begin
          penalty := -9;
        end;
        score := score + penalty;
      end;
      // apply bonus for consecutive bonuses
      if prev_matched then begin
        new_score := new_score + 5;
      end;
      // apply bonus for matches after a separator
      if prev_separator then begin
        new_score := new_score + 10;
      end;
      // apply bonus across camel case boundaries
      if (Boolean(prev_lower) and Boolean(nk_is_upper(str_letter))) then begin
        new_score := new_score + 10;
      end;
      // update pattern iter IFF the next pattern letter was matched
      if next_match then begin
        pattern_iter := pattern_iter + 1;
      end;
      // update best letter in str which may be for a "next" letter or a rematch
      if (new_score ≥ best_letter_score) then begin
        // apply penalty for now skipped letter
        if (best_letter ≠ 0) then begin
          score := score + -1;
        end;
        best_letter := (@str[str_iter]);
        best_letter_score := new_score;
      end;
      prev_matched := nk_true;
    end
    else begin
      score := score + -1;
      prev_matched := nk_false;
    end;
    // separators should be more easily defined
    prev_lower := (nk_is_lower(str_letter) ≠ 0);
    prev_separator := (Boolean((str_letter = 95)) or Boolean((str_letter = 32)));
    str_iter := str_iter + 1;
  end;
  // apply score for last match
  if best_letter then begin
    score := score + best_letter_score;
  end;
  // did not match full pattern
  if ((pattern_iter)^ ≠ 0) then begin
    exit nk_false;
  end;
  if out_score then begin
    (out_score)^ := score;
  end;
  exit nk_true;
end;

method nk_strmatch_fuzzy_string(str: ^Byte; pattern: ^Byte; out_score: ^Int32): Int32; public;
begin
  exit nk_strmatch_fuzzy_text(str, nk_strlen(str), pattern, out_score);
end;

method nk_string_float_limit(string: ^Byte; prec: Int32): Int32; public;
begin
  var dot: Int32 := 0;
  var c: ^Byte := string;
  while (c)^ do begin
    if ((c)^ = 46) then begin
      dot := 1;
      c := c + 1;
      continue;
    end;
    if (dot = (prec + 1)) then begin
      (c)^ := 0;
      break;
    end;
    if (dot > 0) then begin
      dot := dot + 1;
    end;
    c := c + 1;
  end;
  exit Int32((c - string));
end;

method nk_strrev_ascii(s: ^Byte); public;
begin
  var len: Int32 := nk_strlen(s);
  var &end: Int32 := (len / 2);
  var i: Int32 := 0;
  var t: Byte;
  begin
    // for loop: initializer
    // for loop: compare
    _looplabel0:;
    if (i < &end) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      t := s[i];
      s[i] := s[((len - 1) - i)];
      s[((len - 1) - i)] := t;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_itoa(s: ^Byte; n: IntPtr): ^Byte; public;
begin
  var i: IntPtr := 0;
  if (n = 0) then begin
    s[(() -> begin
      var _tmp0 := i;
      i := _tmp0 + 1;
      exit _tmp0;
    end)()] := 48;
    s[i] := 0;
    exit s;
  end;
  if (n < 0) then begin
    s[(() -> begin
      var _tmp1 := i;
      i := _tmp1 + 1;
      exit _tmp1;
    end)()] := 45;
    n := -n;
  end;
  while (n > 0) do begin
    s[(() -> begin
      var _tmp2 := i;
      i := _tmp2 + 1;
      exit _tmp2;
    end)()] := Byte((48 + (n mod 10)));
    n := n / 10;
  end;
  s[i] := 0;
  if (s[0] = 45) then begin
    s := s + 1;
  end;
  nk_strrev_ascii(s);
  exit s;
end;

method nk_dtoa(s: ^Byte; n: Double): ^Byte; public;
begin
  var useExp: Int32 := 0;
  var digit: Int32 := 0;
  var m: Int32 := 0;
  var m1: Int32 := 0;
  var c: ^Byte := s;
  var neg: Int32 := 0;
  assert(s);
  if not Boolean(s) then begin
    exit 0;
  end;
  if (n = 0.0) then begin
    s[0] := 48;
    s[1] := 0;
    exit s;
  end;
  neg := (n < 0);
  if neg then begin
    n := -n;
  end;
  // calculate magnitude
  m := nk_log10(n);
  useExp := (Boolean((Boolean((m ≥ 14)) or Boolean((Boolean(neg) and Boolean((m ≥ 9)))))) or Boolean((m ≤ -9)));
  if neg then begin
    ((() -> begin
      var _tmp0 := c;
      c := _tmp0 + 1;
      exit _tmp0;
    end)())^ := 45;
  end;
  // set up for scientific notation
  if useExp then begin
    if (m < 0) then begin
      m := m - 1;
    end;
    n := (n / Double(nk_pow(10.0, m)));
    m1 := m;
    m := 0;
  end;
  if (m < 1.0) then begin
    m := 0;
  end;
  // convert the number
  while (Boolean((n > 1E-14)) or Boolean((m ≥ 0))) do begin
    var weight: Double := nk_pow(10.0, m);
    if (weight > 0) then begin
      var t: Double := (Double(n) / weight);
      digit := nk_ifloord(t);
      n := n - (Double(digit) * weight);
      ((() -> begin
        var _tmp3 := c;
        c := _tmp3 + 1;
        exit _tmp3;
      end)())^ := Byte((48 + Byte(digit)));
    end;
    if (Boolean((m = 0)) and Boolean((n > 0))) then begin
      ((() -> begin
        var _tmp4 := c;
        c := _tmp4 + 1;
        exit _tmp4;
      end)())^ := 46;
    end;
    m := m - 1;
  end;
  if useExp then begin
    // convert the exponent
    var i: Int32;
    // convert the exponent
    var j: Int32;
    ((() -> begin
      var _tmp5 := c;
      c := _tmp5 + 1;
      exit _tmp5;
    end)())^ := 101;
    if (m1 > 0) then begin
      ((() -> begin
        var _tmp6 := c;
        c := _tmp6 + 1;
        exit _tmp6;
      end)())^ := 43;
    end
    else begin
      ((() -> begin
        var _tmp7 := c;
        c := _tmp7 + 1;
        exit _tmp7;
      end)())^ := 45;
      m1 := -m1;
    end;
    m := 0;
    while (m1 > 0) do begin
      ((() -> begin
        var _tmp8 := c;
        c := _tmp8 + 1;
        exit _tmp8;
      end)())^ := Byte((48 + Byte((m1 mod 10))));
      m1 := m1 / 10;
      m := m + 1;
    end;
    c := c - m;
    begin
      // for loop: initializer
      i := 0;
      j := (m - 1);
      // for loop: compare
      _looplabel11:;
      if (i < j) then begin
      end
      else begin
        goto _breaklabel11;
      end;
      // for loop: body
      begin
        // swap without temporary
        c[i] := c[i] xor c[j];
        c[j] := c[j] xor c[i];
        c[i] := c[i] xor c[j];
      end;
      _continuelabel11:;
      // for loop: increment/continue
      i := i + 1;
      j := j - 1;
      goto _looplabel11;
      // for loop: break
      _breaklabel11:;
    end;
    c := c + m;
  end;
  (c)^ := 0;
  exit s;
end;

method nk_murmur_hash(key: ^Void; len: Int32; seed: nk_hash): nk_hash; public;
begin
  // 32-Bit MurmurHash3: https://code.google.com/p/smhasher/wiki/MurmurHash3
  //  defined: NK_ROTL (x,r) ((x) << (r) | ((x) >> (32 - r)))
  var h1: nk_uint := seed;
  var k1: nk_uint;
  var data: ^nk_byte := ^nk_byte(key);
  var keyptr: ^nk_byte := data;
  var k1ptr: ^nk_byte;
  var bsize: Int32 := sizeOf(k1);
  var nblocks: Int32 := (len / 4);
  var c1: nk_uint := 3432918353;
  var c2: nk_uint := 461845907;
  var tail: ^nk_byte;
  var i: Int32;
  // body
  if not Boolean(key) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < nblocks) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      k1ptr := ^nk_byte((@k1));
      k1ptr[0] := keyptr[0];
      k1ptr[1] := keyptr[1];
      k1ptr[2] := keyptr[2];
      k1ptr[3] := keyptr[3];
      k1 := k1 * c1;
      k1 := ((k1 shl 15) or (k1 shr (32 - 15)));
      k1 := k1 * c2;
      h1 := h1 xor k1;
      h1 := ((h1 shl 13) or (h1 shr (32 - 13)));
      h1 := ((h1 * 5) + 3864292196);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    keyptr := keyptr + bsize;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  // tail
  tail := ^nk_byte((data + (nblocks * 4)));
  k1 := 0;
  begin
    case (len and 3) of
      3: begin
          goto switch5_0;
        end;
      2: begin
          goto switch5_1;
        end;
      1: begin
          goto switch5_2;
        end;
      else begin
        goto switch5_default;
      end;
    end;
    goto _breaklabelswitch5;
    switch5_0:;
    k1 := k1 xor nk_uint((tail[2] shl 16));
    // fallthrough
    switch5_1:;
    k1 := k1 xor nk_uint((tail[1] shl 8));
    // fallthrough
    switch5_2:;
    k1 := k1 xor tail[0];
    k1 := k1 * c1;
    k1 := ((k1 shl 15) or (k1 shr (32 - 15)));
    k1 := k1 * c2;
    h1 := h1 xor k1;
    goto _breaklabelswitch5;
    switch5_default:;
    goto _breaklabelswitch5;
    _breaklabelswitch5:;
  end;
  // finalization
  h1 := h1 xor nk_uint(len);
  // fmix32
  h1 := h1 xor (h1 shr 16);
  h1 := h1 * 2246822507;
  h1 := h1 xor (h1 shr 13);
  h1 := h1 * 3266489909;
  h1 := h1 xor (h1 shr 16);
  exit h1;
end;

method nk_text_clamp(font: ^__struct_nk_user_font; text: ^Byte; text_len: Int32; space: Single; glyphs: ^Int32; text_width: ^Single; sep_list: ^nk_rune; sep_count: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var glyph_len: Int32 := 0;
  var last_width: Single := 0;
  var unicode: nk_rune := 0;
  var width: Single := 0;
  var len: Int32 := 0;
  var g: Int32 := 0;
  var s: Single;
  var sep_len: Int32 := 0;
  var sep_g: Int32 := 0;
  var sep_width: Single := 0;
  sep_count := (if (sep_count < 0) then (0) else (sep_count));
  glyph_len := nk_utf_decode(text, (@unicode), text_len);
  while (Boolean((Boolean(glyph_len) and Boolean((width < space)))) and Boolean((len < text_len))) do begin
    len := len + glyph_len;
    s := (font)^.width((font)^.userdata, (font)^.height, text, len);
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < sep_count) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      begin
        if (unicode ≠ sep_list[i]) then begin
          goto _continuelabel1;
        end;
        sep_width := (() -> begin
          var _tmp2 := width;
          last_width := _tmp2;
          exit _tmp2;
        end)();
        sep_g := (g + 1);
        sep_len := len;
        goto _breaklabel1;
      end;
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
    if (i = sep_count) then begin
      last_width := (() -> begin
        var _tmp3 := width;
        sep_width := _tmp3;
        exit _tmp3;
      end)();
      sep_g := (g + 1);
    end;
    width := s;
    glyph_len := nk_utf_decode((@text[len]), (@unicode), (text_len - len));
    g := g + 1;
  end;
  if (len ≥ text_len) then begin
    (glyphs)^ := g;
    (text_width)^ := last_width;
    exit len;
  end
  else begin
    (glyphs)^ := sep_g;
    (text_width)^ := sep_width;
    exit (if not Boolean(sep_len) then (len) else (sep_len));
  end;
end;

method nk_text_calculate_text_bounds(font: ^__struct_nk_user_font; &begin: ^Byte; byte_len: Int32; row_height: Single; remaining: ^^Byte; out_offset: ^__struct_nk_vec2; glyphs: ^Int32; op: Int32): __struct_nk_vec2; public;
begin
  var line_height: Single := row_height;
  var text_size: __struct_nk_vec2 := nk_vec2(0, 0);
  var line_width: Single := 0.0;
  var glyph_width: Single;
  var glyph_len: Int32 := 0;
  var unicode: nk_rune := 0;
  var text_len: Int32 := 0;
  if (Boolean((Boolean(not Boolean(&begin)) or Boolean((byte_len ≤ 0)))) or Boolean(not Boolean(font))) then begin
    exit nk_vec2(0, row_height);
  end;
  glyph_len := nk_utf_decode(&begin, (@unicode), byte_len);
  if not Boolean(glyph_len) then begin
    exit text_size;
  end;
  glyph_width := (font)^.width((font)^.userdata, (font)^.height, &begin, glyph_len);
  (glyphs)^ := 0;
  while (Boolean((text_len < byte_len)) and Boolean(glyph_len)) do begin
    if (unicode = 10) then begin
      text_size.x := (if (text_size.x < line_width) then (line_width) else (text_size.x));
      text_size.y := text_size.y + line_height;
      line_width := 0;
      (glyphs)^ := (glyphs)^ + 1;
      if (op = NK_STOP_ON_NEW_LINE) then begin
        break;
      end;
      text_len := text_len + 1;
      glyph_len := nk_utf_decode((&begin + text_len), (@unicode), (byte_len - text_len));
      continue;
    end;
    if (unicode = 13) then begin
      text_len := text_len + 1;
      (glyphs)^ := (glyphs)^ + 1;
      glyph_len := nk_utf_decode((&begin + text_len), (@unicode), (byte_len - text_len));
      continue;
    end;
    (glyphs)^ := ((glyphs)^ + 1);
    text_len := text_len + glyph_len;
    line_width := line_width + Single(glyph_width);
    glyph_len := nk_utf_decode((&begin + text_len), (@unicode), (byte_len - text_len));
    glyph_width := (font)^.width((font)^.userdata, (font)^.height, (&begin + text_len), glyph_len);
    continue;
  end;
  if (text_size.x < line_width) then begin
    text_size.x := line_width;
  end;
  if out_offset then begin
    (out_offset)^ := nk_vec2(line_width, (text_size.y + line_height));
  end;
  if (Boolean((line_width > 0)) or Boolean((text_size.y = 0.0))) then begin
    text_size.y := text_size.y + line_height;
  end;
  if remaining then begin
    (remaining)^ := (&begin + text_len);
  end;
  exit text_size;
end;

// ==============================================================
//  *
//  *                          COLOR
//  *
//  * ===============================================================
method nk_parse_hex(p: ^Byte; length: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var len: Int32 := 0;
  while (len < length) do begin
    i := i shl 4;
    if (Boolean((p[len] ≥ 97)) and Boolean((p[len] ≤ 102))) then begin
      i := i + ((p[len] - 97) + 10);
    end
    else begin
      if (Boolean((p[len] ≥ 65)) and Boolean((p[len] ≤ 70))) then begin
        i := i + ((p[len] - 65) + 10);
      end
      else begin
        i := i + (p[len] - 48);
      end;
    end;
    len := len + 1;
  end;
  exit i;
end;

method nk_rgba(r: Int32; g: Int32; b: Int32; a: Int32): __struct_nk_color; public;
begin
  var ret: __struct_nk_color;
  ret.r := nk_byte((if ((if (r < 255) then (r) else (255)) < 0) then (0) else ((if (r < 255) then (r) else (255)))));
  ret.g := nk_byte((if ((if (g < 255) then (g) else (255)) < 0) then (0) else ((if (g < 255) then (g) else (255)))));
  ret.b := nk_byte((if ((if (b < 255) then (b) else (255)) < 0) then (0) else ((if (b < 255) then (b) else (255)))));
  ret.a := nk_byte((if ((if (a < 255) then (a) else (255)) < 0) then (0) else ((if (a < 255) then (a) else (255)))));
  exit ret;
end;

method nk_rgb_hex(rgb: ^Byte): __struct_nk_color; public;
begin
  var col: __struct_nk_color;
  var c: ^Byte := rgb;
  if ((c)^ = 35) then begin
    c := c + 1;
  end;
  col.r := nk_byte(nk_parse_hex(c, 2));
  col.g := nk_byte(nk_parse_hex((c + 2), 2));
  col.b := nk_byte(nk_parse_hex((c + 4), 2));
  col.a := 255;
  exit col;
end;

method nk_rgba_hex(rgb: ^Byte): __struct_nk_color; public;
begin
  var col: __struct_nk_color;
  var c: ^Byte := rgb;
  if ((c)^ = 35) then begin
    c := c + 1;
  end;
  col.r := nk_byte(nk_parse_hex(c, 2));
  col.g := nk_byte(nk_parse_hex((c + 2), 2));
  col.b := nk_byte(nk_parse_hex((c + 4), 2));
  col.a := nk_byte(nk_parse_hex((c + 6), 2));
  exit col;
end;

method nk_color_hex_rgba(output: ^Byte; col: __struct_nk_color); public;
begin
  // defined: NK_TO_HEX (i) ((i) <= 9 ? '0' + (i): 'A' - 10 + (i))
  output[0] := Byte((if (((col.r and 240) shr 4) ≤ 9) then ((48 + ((col.r and 240) shr 4))) else (((65 - 10) + ((col.r and 240) shr 4)))));
  output[1] := Byte((if ((col.r and 15) ≤ 9) then ((48 + (col.r and 15))) else (((65 - 10) + (col.r and 15)))));
  output[2] := Byte((if (((col.g and 240) shr 4) ≤ 9) then ((48 + ((col.g and 240) shr 4))) else (((65 - 10) + ((col.g and 240) shr 4)))));
  output[3] := Byte((if ((col.g and 15) ≤ 9) then ((48 + (col.g and 15))) else (((65 - 10) + (col.g and 15)))));
  output[4] := Byte((if (((col.b and 240) shr 4) ≤ 9) then ((48 + ((col.b and 240) shr 4))) else (((65 - 10) + ((col.b and 240) shr 4)))));
  output[5] := Byte((if ((col.b and 15) ≤ 9) then ((48 + (col.b and 15))) else (((65 - 10) + (col.b and 15)))));
  output[6] := Byte((if (((col.a and 240) shr 4) ≤ 9) then ((48 + ((col.a and 240) shr 4))) else (((65 - 10) + ((col.a and 240) shr 4)))));
  output[7] := Byte((if ((col.a and 15) ≤ 9) then ((48 + (col.a and 15))) else (((65 - 10) + (col.a and 15)))));
  output[8] := 0;
end;

method nk_color_hex_rgb(output: ^Byte; col: __struct_nk_color); public;
begin
  // defined: NK_TO_HEX (i) ((i) <= 9 ? '0' + (i): 'A' - 10 + (i))
  output[0] := Byte((if (((col.r and 240) shr 4) ≤ 9) then ((48 + ((col.r and 240) shr 4))) else (((65 - 10) + ((col.r and 240) shr 4)))));
  output[1] := Byte((if ((col.r and 15) ≤ 9) then ((48 + (col.r and 15))) else (((65 - 10) + (col.r and 15)))));
  output[2] := Byte((if (((col.g and 240) shr 4) ≤ 9) then ((48 + ((col.g and 240) shr 4))) else (((65 - 10) + ((col.g and 240) shr 4)))));
  output[3] := Byte((if ((col.g and 15) ≤ 9) then ((48 + (col.g and 15))) else (((65 - 10) + (col.g and 15)))));
  output[4] := Byte((if (((col.b and 240) shr 4) ≤ 9) then ((48 + ((col.b and 240) shr 4))) else (((65 - 10) + ((col.b and 240) shr 4)))));
  output[5] := Byte((if ((col.b and 15) ≤ 9) then ((48 + (col.b and 15))) else (((65 - 10) + (col.b and 15)))));
  output[6] := 0;
end;

method nk_rgba_iv(c: ^Int32): __struct_nk_color; public;
begin
  exit nk_rgba(c[0], c[1], c[2], c[3]);
end;

method nk_rgba_bv(c: ^nk_byte): __struct_nk_color; public;
begin
  exit nk_rgba(c[0], c[1], c[2], c[3]);
end;

method nk_rgb(r: Int32; g: Int32; b: Int32): __struct_nk_color; public;
begin
  var ret: __struct_nk_color;
  ret.r := nk_byte((if ((if (r < 255) then (r) else (255)) < 0) then (0) else ((if (r < 255) then (r) else (255)))));
  ret.g := nk_byte((if ((if (g < 255) then (g) else (255)) < 0) then (0) else ((if (g < 255) then (g) else (255)))));
  ret.b := nk_byte((if ((if (b < 255) then (b) else (255)) < 0) then (0) else ((if (b < 255) then (b) else (255)))));
  ret.a := nk_byte(255);
  exit ret;
end;

method nk_rgb_iv(c: ^Int32): __struct_nk_color; public;
begin
  exit nk_rgb(c[0], c[1], c[2]);
end;

method nk_rgb_bv(c: ^nk_byte): __struct_nk_color; public;
begin
  exit nk_rgb(c[0], c[1], c[2]);
end;

method nk_rgba_u32(&in: nk_uint): __struct_nk_color; public;
begin
  var ret: __struct_nk_color;
  ret.r := (&in and 255);
  ret.g := ((&in shr 8) and 255);
  ret.b := ((&in shr 16) and 255);
  ret.a := nk_byte(((&in shr 24) and 255));
  exit ret;
end;

method nk_rgba_f(r: Single; g: Single; b: Single; a: Single): __struct_nk_color; public;
begin
  var ret: __struct_nk_color;
  ret.r := nk_byte(((if (0 < (if (1.0 < r) then (1.0) else (r))) then ((if (1.0 < r) then (1.0) else (r))) else (0)) * 255.0));
  ret.g := nk_byte(((if (0 < (if (1.0 < g) then (1.0) else (g))) then ((if (1.0 < g) then (1.0) else (g))) else (0)) * 255.0));
  ret.b := nk_byte(((if (0 < (if (1.0 < b) then (1.0) else (b))) then ((if (1.0 < b) then (1.0) else (b))) else (0)) * 255.0));
  ret.a := nk_byte(((if (0 < (if (1.0 < a) then (1.0) else (a))) then ((if (1.0 < a) then (1.0) else (a))) else (0)) * 255.0));
  exit ret;
end;

method nk_rgba_fv(c: ^Single): __struct_nk_color; public;
begin
  exit nk_rgba_f(c[0], c[1], c[2], c[3]);
end;

method nk_rgba_cf(c: __struct_nk_colorf): __struct_nk_color; public;
begin
  exit nk_rgba_f(c.r, c.g, c.b, c.a);
end;

method nk_rgb_f(r: Single; g: Single; b: Single): __struct_nk_color; public;
begin
  var ret: __struct_nk_color;
  ret.r := nk_byte(((if (0 < (if (1.0 < r) then (1.0) else (r))) then ((if (1.0 < r) then (1.0) else (r))) else (0)) * 255.0));
  ret.g := nk_byte(((if (0 < (if (1.0 < g) then (1.0) else (g))) then ((if (1.0 < g) then (1.0) else (g))) else (0)) * 255.0));
  ret.b := nk_byte(((if (0 < (if (1.0 < b) then (1.0) else (b))) then ((if (1.0 < b) then (1.0) else (b))) else (0)) * 255.0));
  ret.a := 255;
  exit ret;
end;

method nk_rgb_fv(c: ^Single): __struct_nk_color; public;
begin
  exit nk_rgb_f(c[0], c[1], c[2]);
end;

method nk_rgb_cf(c: __struct_nk_colorf): __struct_nk_color; public;
begin
  exit nk_rgb_f(c.r, c.g, c.b);
end;

method nk_hsv(h: Int32; s: Int32; v: Int32): __struct_nk_color; public;
begin
  exit nk_hsva(h, s, v, 255);
end;

method nk_hsv_iv(c: ^Int32): __struct_nk_color; public;
begin
  exit nk_hsv(c[0], c[1], c[2]);
end;

method nk_hsv_bv(c: ^nk_byte): __struct_nk_color; public;
begin
  exit nk_hsv(c[0], c[1], c[2]);
end;

method nk_hsv_f(h: Single; s: Single; v: Single): __struct_nk_color; public;
begin
  exit nk_hsva_f(h, s, v, 1.0);
end;

method nk_hsv_fv(c: ^Single): __struct_nk_color; public;
begin
  exit nk_hsv_f(c[0], c[1], c[2]);
end;

method nk_hsva(h: Int32; s: Int32; v: Int32; a: Int32): __struct_nk_color; public;
begin
  var hf: Single := (Single((if ((if (h < 255) then (h) else (255)) < 0) then (0) else ((if (h < 255) then (h) else (255))))) / 255.0);
  var sf: Single := (Single((if ((if (s < 255) then (s) else (255)) < 0) then (0) else ((if (s < 255) then (s) else (255))))) / 255.0);
  var vf: Single := (Single((if ((if (v < 255) then (v) else (255)) < 0) then (0) else ((if (v < 255) then (v) else (255))))) / 255.0);
  var af: Single := (Single((if ((if (a < 255) then (a) else (255)) < 0) then (0) else ((if (a < 255) then (a) else (255))))) / 255.0);
  exit nk_hsva_f(hf, sf, vf, af);
end;

method nk_hsva_iv(c: ^Int32): __struct_nk_color; public;
begin
  exit nk_hsva(c[0], c[1], c[2], c[3]);
end;

method nk_hsva_bv(c: ^nk_byte): __struct_nk_color; public;
begin
  exit nk_hsva(c[0], c[1], c[2], c[3]);
end;

method nk_hsva_colorf(h: Single; s: Single; v: Single; a: Single): __struct_nk_colorf; public;
begin
  var i: Int32;
  var p: Single;
  var q: Single;
  var t: Single;
  var f: Single;
  var &out: __struct_nk_colorf := [0, 0, 0, 0];
  if (s ≤ 0.0) then begin
    &out.r := v;
    &out.g := v;
    &out.b := v;
    &out.a := a;
    exit &out;
  end;
  h := (h / (60.0 / 360.0));
  i := Int32(h);
  f := (h - Single(i));
  p := (v * (1.0 - s));
  q := (v * (1.0 - (s * f)));
  t := (v * (1.0 - (s * (1.0 - f))));
  begin
    case i of
      0: begin
          goto switch0_0;
        end;
      1: begin
          goto switch0_1;
        end;
      2: begin
          goto switch0_2;
        end;
      3: begin
          goto switch0_3;
        end;
      4: begin
          goto switch0_4;
        end;
      5: begin
          goto switch0_5;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    switch0_default:;
    &out.r := v;
    &out.g := t;
    &out.b := p;
    goto _breaklabelswitch0;
    switch0_1:;
    &out.r := q;
    &out.g := v;
    &out.b := p;
    goto _breaklabelswitch0;
    switch0_2:;
    &out.r := p;
    &out.g := v;
    &out.b := t;
    goto _breaklabelswitch0;
    switch0_3:;
    &out.r := p;
    &out.g := q;
    &out.b := v;
    goto _breaklabelswitch0;
    switch0_4:;
    &out.r := t;
    &out.g := p;
    &out.b := v;
    goto _breaklabelswitch0;
    switch0_5:;
    &out.r := v;
    &out.g := p;
    &out.b := q;
    goto _breaklabelswitch0;
    _breaklabelswitch0:;
  end;
  &out.a := a;
  exit &out;
end;

method nk_hsva_colorfv(c: ^Single): __struct_nk_colorf; public;
begin
  exit nk_hsva_colorf(c[0], c[1], c[2], c[3]);
end;

method nk_hsva_f(h: Single; s: Single; v: Single; a: Single): __struct_nk_color; public;
begin
  var c: __struct_nk_colorf := nk_hsva_colorf(h, s, v, a);
  exit nk_rgba_f(c.r, c.g, c.b, c.a);
end;

method nk_hsva_fv(c: ^Single): __struct_nk_color; public;
begin
  exit nk_hsva_f(c[0], c[1], c[2], c[3]);
end;

method nk_color_u32(&in: __struct_nk_color): nk_uint; public;
begin
  var &out: nk_uint := nk_uint(&in.r);
  &out := &out or (nk_uint(&in.g) shl 8);
  &out := &out or (nk_uint(&in.b) shl 16);
  &out := &out or (nk_uint(&in.a) shl 24);
  exit &out;
end;

method nk_color_f(r: ^Single; g: ^Single; b: ^Single; a: ^Single; &in: __struct_nk_color); public;
begin
  var s: Single := (1.0 / 255.0);
  (r)^ := (Single(&in.r) * s);
  (g)^ := (Single(&in.g) * s);
  (b)^ := (Single(&in.b) * s);
  (a)^ := (Single(&in.a) * s);
end;

method nk_color_fv(c: ^Single; &in: __struct_nk_color); public;
begin
  nk_color_f((@c[0]), (@c[1]), (@c[2]), (@c[3]), &in);
end;

method nk_color_cf(&in: __struct_nk_color): __struct_nk_colorf; public;
begin
  var o: __struct_nk_colorf;
  nk_color_f((@o.r), (@o.g), (@o.b), (@o.a), &in);
  exit o;
end;

method nk_color_d(r: ^Double; g: ^Double; b: ^Double; a: ^Double; &in: __struct_nk_color); public;
begin
  var s: Double := (1.0 / 255.0);
  (r)^ := (Double(&in.r) * s);
  (g)^ := (Double(&in.g) * s);
  (b)^ := (Double(&in.b) * s);
  (a)^ := (Double(&in.a) * s);
end;

method nk_color_dv(c: ^Double; &in: __struct_nk_color); public;
begin
  nk_color_d((@c[0]), (@c[1]), (@c[2]), (@c[3]), &in);
end;

method nk_color_hsv_f(out_h: ^Single; out_s: ^Single; out_v: ^Single; &in: __struct_nk_color); public;
begin
  var a: Single;
  nk_color_hsva_f(out_h, out_s, out_v, (@a), &in);
end;

method nk_color_hsv_fv(&out: ^Single; &in: __struct_nk_color); public;
begin
  var a: Single;
  nk_color_hsva_f((@&out[0]), (@&out[1]), (@&out[2]), (@a), &in);
end;

method nk_colorf_hsva_f(out_h: ^Single; out_s: ^Single; out_v: ^Single; out_a: ^Single; &in: __struct_nk_colorf); public;
begin
  var chroma: Single;
  var K: Single := 0.0;
  if (&in.g < &in.b) then begin
    var t: Single := &in.g;
    &in.g := &in.b;
    &in.b := t;
    K := -1.0;
  end;
  if (&in.r < &in.g) then begin
    var t: Single := &in.r;
    &in.r := &in.g;
    &in.g := t;
    K := ((-2.0 / 6.0) - K);
  end;
  chroma := (&in.r - (if (&in.g < &in.b) then (&in.g) else (&in.b)));
  (out_h)^ := (if ((K + ((&in.g - &in.b) / ((6.0 * chroma) + 9.99999968265523E-21))) < 0) then (-(K + ((&in.g - &in.b) / ((6.0 * chroma) + 9.99999968265523E-21)))) else ((K + ((&in.g - &in.b) / ((6.0 * chroma) + 9.99999968265523E-21)))));
  (out_s)^ := (chroma / (&in.r + 9.99999968265523E-21));
  (out_v)^ := &in.r;
  (out_a)^ := &in.a;
end;

method nk_colorf_hsva_fv(hsva: ^Single; &in: __struct_nk_colorf); public;
begin
  nk_colorf_hsva_f((@hsva[0]), (@hsva[1]), (@hsva[2]), (@hsva[3]), &in);
end;

method nk_color_hsva_f(out_h: ^Single; out_s: ^Single; out_v: ^Single; out_a: ^Single; &in: __struct_nk_color); public;
begin
  var col: __struct_nk_colorf;
  nk_color_f((@col.r), (@col.g), (@col.b), (@col.a), &in);
  nk_colorf_hsva_f(out_h, out_s, out_v, out_a, col);
end;

method nk_color_hsva_fv(&out: ^Single; &in: __struct_nk_color); public;
begin
  nk_color_hsva_f((@&out[0]), (@&out[1]), (@&out[2]), (@&out[3]), &in);
end;

method nk_color_hsva_i(out_h: ^Int32; out_s: ^Int32; out_v: ^Int32; out_a: ^Int32; &in: __struct_nk_color); public;
begin
  var h: Single;
  var s: Single;
  var v: Single;
  var a: Single;
  nk_color_hsva_f((@h), (@s), (@v), (@a), &in);
  (out_h)^ := nk_byte((h * 255.0));
  (out_s)^ := nk_byte((s * 255.0));
  (out_v)^ := nk_byte((v * 255.0));
  (out_a)^ := nk_byte((a * 255.0));
end;

method nk_color_hsva_iv(&out: ^Int32; &in: __struct_nk_color); public;
begin
  nk_color_hsva_i((@&out[0]), (@&out[1]), (@&out[2]), (@&out[3]), &in);
end;

method nk_color_hsva_bv(&out: ^nk_byte; &in: __struct_nk_color); public;
begin
  var tmp: array[0..4 - 1] of Int32;
  nk_color_hsva_i((@tmp[0]), (@tmp[1]), (@tmp[2]), (@tmp[3]), &in);
  &out[0] := nk_byte(tmp[0]);
  &out[1] := nk_byte(tmp[1]);
  &out[2] := nk_byte(tmp[2]);
  &out[3] := nk_byte(tmp[3]);
end;

method nk_color_hsva_b(h: ^nk_byte; s: ^nk_byte; v: ^nk_byte; a: ^nk_byte; &in: __struct_nk_color); public;
begin
  var tmp: array[0..4 - 1] of Int32;
  nk_color_hsva_i((@tmp[0]), (@tmp[1]), (@tmp[2]), (@tmp[3]), &in);
  (h)^ := nk_byte(tmp[0]);
  (s)^ := nk_byte(tmp[1]);
  (v)^ := nk_byte(tmp[2]);
  (a)^ := nk_byte(tmp[3]);
end;

method nk_color_hsv_i(out_h: ^Int32; out_s: ^Int32; out_v: ^Int32; &in: __struct_nk_color); public;
begin
  var a: Int32;
  nk_color_hsva_i(out_h, out_s, out_v, (@a), &in);
end;

method nk_color_hsv_b(out_h: ^nk_byte; out_s: ^nk_byte; out_v: ^nk_byte; &in: __struct_nk_color); public;
begin
  var tmp: array[0..4 - 1] of Int32;
  nk_color_hsva_i((@tmp[0]), (@tmp[1]), (@tmp[2]), (@tmp[3]), &in);
  (out_h)^ := nk_byte(tmp[0]);
  (out_s)^ := nk_byte(tmp[1]);
  (out_v)^ := nk_byte(tmp[2]);
end;

method nk_color_hsv_iv(&out: ^Int32; &in: __struct_nk_color); public;
begin
  nk_color_hsv_i((@&out[0]), (@&out[1]), (@&out[2]), &in);
end;

method nk_color_hsv_bv(&out: ^nk_byte; &in: __struct_nk_color); public;
begin
  var tmp: array[0..4 - 1] of Int32;
  nk_color_hsv_i((@tmp[0]), (@tmp[1]), (@tmp[2]), &in);
  &out[0] := nk_byte(tmp[0]);
  &out[1] := nk_byte(tmp[1]);
  &out[2] := nk_byte(tmp[2]);
end;

var nk_utfbyte: array[0..(4 + 1) - 1] of nk_byte := [128, 0, 192, 224, 240]; public;
var nk_utfmask: array[0..(4 + 1) - 1] of nk_byte := [192, 128, 224, 240, 248]; public;
var nk_utfmin: array[0..(4 + 1) - 1] of nk_uint := [0, 0, 128, 2048, 65536]; public;
var nk_utfmax: array[0..(4 + 1) - 1] of nk_uint := [1114111, 127, 2047, 65535, 1114111]; public;

method nk_utf_validate(u: ^nk_rune; i: Int32): Int32; public;
begin
  assert(u);
  if not Boolean(u) then begin
    exit 0;
  end;
  if (Boolean(not Boolean((Boolean((nk_utfmin[i] ≤ (u)^)) and Boolean(((u)^ < nk_utfmax[i]))))) or Boolean((Boolean((55296 ≤ (u)^)) and Boolean(((u)^ < 57343))))) then begin
    (u)^ := 65533;
  end;
  begin
    // for loop: initializer
    i := 1;
    // for loop: compare
    _looplabel0:;
    if ((u)^ > nk_utfmax[i]) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit i;
end;

method nk_utf_decode_byte(c: Byte; i: ^Int32): nk_rune; public;
begin
  assert(i);
  if not Boolean(i) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    (i)^ := 0;
    // for loop: compare
    _looplabel0:;
    if ((i)^ < Int32((sizeOf(nk_utfmask) / sizeOf(nk_utfmask[0])))) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      if ((nk_byte(c) and nk_utfmask[(i)^]) = nk_utfbyte[(i)^]) then begin
        exit nk_byte((c and not nk_utfmask[(i)^]));
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    (i)^ := (i)^ + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit 0;
end;

method nk_utf_decode(c: ^Byte; u: ^nk_rune; clen: Int32): Int32; public;
begin
  var i: Int32;
  var j: Int32;
  var len: Int32;
  var &type: Int32 := 0;
  var udecoded: nk_rune;
  assert(c);
  assert(u);
  if (Boolean(not Boolean(c)) or Boolean(not Boolean(u))) then begin
    exit 0;
  end;
  if not Boolean(clen) then begin
    exit 0;
  end;
  (u)^ := 65533;
  udecoded := nk_utf_decode_byte(c[0], (@len));
  if not Boolean((Boolean((1 ≤ len)) and Boolean((len < 4)))) then begin
    exit 1;
  end;
  begin
    // for loop: initializer
    i := 1;
    j := 1;
    // for loop: compare
    _looplabel0:;
    if (Boolean((i < clen)) and Boolean((j < len))) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      udecoded := ((udecoded shl 6) or nk_utf_decode_byte(c[i], (@&type)));
      if (&type ≠ 0) then begin
        exit j;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    j := j + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  if (j < len) then begin
    exit 0;
  end;
  (u)^ := udecoded;
  nk_utf_validate(u, len);
  exit len;
end;

method nk_utf_encode_byte(u: nk_rune; i: Int32): Byte; public;
begin
  exit Byte((nk_utfbyte[i] or (nk_byte(u) and not nk_utfmask[i])));
end;

method nk_utf_encode(u: nk_rune; c: ^Byte; clen: Int32): Int32; public;
begin
  var len: Int32;
  var i: Int32;
  len := nk_utf_validate((@u), 0);
  if (Boolean((Boolean((clen < len)) or Boolean(not Boolean(len)))) or Boolean((len > 4))) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    i := (len - 1);
    // for loop: compare
    _looplabel0:;
    if (i ≠ 0) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      c[i] := nk_utf_encode_byte(u, 0);
      u := u shr 6;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i - 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  c[0] := nk_utf_encode_byte(u, len);
  exit len;
end;

method nk_utf_len(str: ^Byte; len: Int32): Int32; public;
begin
  var text: ^Byte;
  var glyphs: Int32 := 0;
  var text_len: Int32;
  var glyph_len: Int32;
  var src_len: Int32 := 0;
  var unicode: nk_rune;
  assert(str);
  if (Boolean(not Boolean(str)) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  text := str;
  text_len := len;
  glyph_len := nk_utf_decode(text, (@unicode), text_len);
  while (Boolean(glyph_len) and Boolean((src_len < len))) do begin
    glyphs := glyphs + 1;
    src_len := (src_len + glyph_len);
    glyph_len := nk_utf_decode((text + src_len), (@unicode), (text_len - src_len));
  end;
  exit glyphs;
end;

method nk_utf_at(buffer: ^Byte; length: Int32; &index: Int32; unicode: ^nk_rune; len: ^Int32): ^Byte; public;
begin
  var i: Int32 := 0;
  var src_len: Int32 := 0;
  var glyph_len: Int32 := 0;
  var text: ^Byte;
  var text_len: Int32;
  assert(buffer);
  assert(unicode);
  assert(len);
  if (Boolean((Boolean(not Boolean(buffer)) or Boolean(not Boolean(unicode)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  if (&index < 0) then begin
    (unicode)^ := 65533;
    (len)^ := 0;
    exit 0;
  end;
  text := buffer;
  text_len := length;
  glyph_len := nk_utf_decode(text, unicode, text_len);
  while glyph_len do begin
    if (i = &index) then begin
      (len)^ := glyph_len;
      break;
    end;
    i := i + 1;
    src_len := (src_len + glyph_len);
    glyph_len := nk_utf_decode((text + src_len), unicode, (text_len - src_len));
  end;
  if (i ≠ &index) then begin
    exit 0;
  end;
  exit (buffer + src_len);
end;

// ==============================================================
//  *
//  *                          BUFFER
//  *
//  * ===============================================================
method nk_malloc(unused: nk_handle; &old: ^Void; size: nk_size): ^Void; public;
begin
  exit malloc(size);
end;

method nk_mfree(unused: nk_handle; ptr: ^Void); public;
begin
  free(ptr);
end;

method nk_buffer_init_default(buffer: ^__struct_nk_buffer); public;
begin
  var alloc: __struct_nk_allocator;
  alloc.userdata.ptr := 0;
  alloc.alloc := nk_malloc;
  alloc.free := nk_mfree;
  nk_buffer_init(buffer, (@alloc), (4 * 1024));
end;

method nk_buffer_init(b: ^__struct_nk_buffer; a: ^__struct_nk_allocator; initial_size: nk_size); public;
begin
  assert(b);
  assert(a);
  assert(initial_size);
  if (Boolean((Boolean(not Boolean(b)) or Boolean(not Boolean(a)))) or Boolean(not Boolean(initial_size))) then begin
    exit;
  end;
  nk_zero(b, sizeOf((b)^));
  (b)^.type := NK_BUFFER_DYNAMIC;
  (b)^.memory.ptr := (a)^.alloc((a)^.userdata, 0, initial_size);
  (b)^.memory.size := initial_size;
  (b)^.size := initial_size;
  (b)^.grow_factor := 2.0;
  (b)^.pool := (a)^;
end;

method nk_buffer_init_fixed(b: ^__struct_nk_buffer; m: ^Void; size: nk_size); public;
begin
  assert(b);
  assert(m);
  assert(size);
  if (Boolean((Boolean(not Boolean(b)) or Boolean(not Boolean(m)))) or Boolean(not Boolean(size))) then begin
    exit;
  end;
  nk_zero(b, sizeOf((b)^));
  (b)^.type := NK_BUFFER_FIXED;
  (b)^.memory.ptr := m;
  (b)^.memory.size := size;
  (b)^.size := size;
end;

method nk_buffer_align(unaligned: ^Void; align: nk_size; alignment: ^nk_size; &type: __enum_nk_buffer_allocation_type): ^Void; public;
begin
  var memory: ^Void := 0;
  begin
    case &type of
      NK_BUFFER_MAX: begin
          goto switch0_0;
        end;
      NK_BUFFER_FRONT: begin
          goto switch0_1;
        end;
      NK_BUFFER_BACK: begin
          goto switch0_2;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_default:;
    switch0_0:;
    switch0_1:;
    if align then begin
      memory := ^Void((nk_size((^nk_byte(unaligned) + (align - 1))) and not (align - 1)));
      (alignment)^ := nk_size((^nk_byte(memory) - ^nk_byte(unaligned)));
    end
    else begin
      memory := unaligned;
      (alignment)^ := 0;
    end;
    goto _breaklabelswitch0;
    switch0_2:;
    if align then begin
      memory := ^Void((nk_size(^nk_byte(unaligned)) and not (align - 1)));
      (alignment)^ := nk_size((^nk_byte(unaligned) - ^nk_byte(memory)));
    end
    else begin
      memory := unaligned;
      (alignment)^ := 0;
    end;
    goto _breaklabelswitch0;
    _breaklabelswitch0:;
  end;
  exit memory;
end;

method nk_buffer_realloc(b: ^__struct_nk_buffer; capacity: nk_size; size: ^nk_size): ^Void; public;
begin
  var temp: ^Void;
  var buffer_size: nk_size;
  assert(b);
  assert(size);
  if (Boolean((Boolean((Boolean(not Boolean(b)) or Boolean(not Boolean(size)))) or Boolean(not Boolean((b)^.pool.alloc)))) or Boolean(not Boolean((b)^.pool.free))) then begin
    exit 0;
  end;
  buffer_size := (b)^.memory.size;
  temp := (b)^.pool.alloc((b)^.pool.userdata, (b)^.memory.ptr, capacity);
  assert(temp);
  if not Boolean(temp) then begin
    exit 0;
  end;
  (size)^ := capacity;
  if (temp ≠ (b)^.memory.ptr) then begin
    memcpy(temp, (b)^.memory.ptr, buffer_size);
    (b)^.pool.free((b)^.pool.userdata, (b)^.memory.ptr);
  end;
  if ((b)^.size = buffer_size) then begin
    // no back buffer so just set correct size
    (b)^.size := capacity;
    exit temp;
  end
  else begin
    // copy back buffer to the end of the new buffer
    var dst: ^Void;
    // copy back buffer to the end of the new buffer
    var src: ^Void;
    var back_size: nk_size;
    back_size := (buffer_size - (b)^.size);
    dst := ^Void(^Void((^nk_byte(temp) + (capacity - back_size))));
    src := ^Void(^Void((^nk_byte(temp) + (b)^.size)));
    memcpy(dst, src, back_size);
    (b)^.size := (capacity - back_size);
  end;
  exit temp;
end;

method nk_buffer_alloc(b: ^__struct_nk_buffer; &type: __enum_nk_buffer_allocation_type; size: nk_size; align: nk_size): ^Void; public;
begin
  var full: Int32;
  var alignment: nk_size;
  var unaligned: ^Void;
  var memory: ^Void;
  assert(b);
  assert(size);
  if (Boolean(not Boolean(b)) or Boolean(not Boolean(size))) then begin
    exit 0;
  end;
  (b)^.needed := (b)^.needed + size;
  // calculate total size with needed alignment + size
  if (&type = NK_BUFFER_FRONT) then begin
    unaligned := ^Void(^Void((^nk_byte((b)^.memory.ptr) + (b)^.allocated)));
  end
  else begin
    unaligned := ^Void(^Void((^nk_byte((b)^.memory.ptr) + ((b)^.size - size))));
  end;
  memory := nk_buffer_align(unaligned, align, (@alignment), &type);
  // check if buffer has enough memory
  if (&type = NK_BUFFER_FRONT) then begin
    full := ((((b)^.allocated + size) + alignment) > (b)^.size);
  end
  else begin
    full := (((b)^.size - (if ((b)^.size < (size + alignment)) then ((b)^.size) else ((size + alignment)))) ≤ (b)^.allocated);
  end;
  if full then begin
    var capacity: nk_size;
    if ((b)^.type ≠ NK_BUFFER_DYNAMIC) then begin
      exit 0;
    end;
    assert((Boolean((b)^.pool.alloc) and Boolean((b)^.pool.free)));
    if (Boolean((Boolean(((b)^.type ≠ NK_BUFFER_DYNAMIC)) or Boolean(not Boolean((b)^.pool.alloc)))) or Boolean(not Boolean((b)^.pool.free))) then begin
      exit 0;
    end;
    // buffer is full so allocate bigger buffer if dynamic
    capacity := nk_size((Single((b)^.memory.size) * (b)^.grow_factor));
    capacity := (if (capacity < nk_round_up_pow2(nk_uint(((b)^.allocated + size)))) then (nk_round_up_pow2(nk_uint(((b)^.allocated + size)))) else (capacity));
    (b)^.memory.ptr := nk_buffer_realloc(b, capacity, (@(b)^.memory.size));
    if not Boolean((b)^.memory.ptr) then begin
      exit 0;
    end;
    // align newly allocated pointer
    if (&type = NK_BUFFER_FRONT) then begin
      unaligned := ^Void(^Void((^nk_byte((b)^.memory.ptr) + (b)^.allocated)));
    end
    else begin
      unaligned := ^Void(^Void((^nk_byte((b)^.memory.ptr) + ((b)^.size - size))));
    end;
    memory := nk_buffer_align(unaligned, align, (@alignment), &type);
  end;
  if (&type = NK_BUFFER_FRONT) then begin
    (b)^.allocated := (b)^.allocated + (size + alignment);
  end
  else begin
    (b)^.size := (b)^.size - (size + alignment);
  end;
  (b)^.needed := (b)^.needed + alignment;
  (b)^.calls := (b)^.calls + 1;
  exit memory;
end;

method nk_buffer_push(b: ^__struct_nk_buffer; &type: __enum_nk_buffer_allocation_type; memory: ^Void; size: nk_size; align: nk_size); public;
begin
  var mem: ^Void := nk_buffer_alloc(b, &type, size, align);
  if not Boolean(mem) then begin
    exit;
  end;
  memcpy(mem, memory, size);
end;

method nk_buffer_mark(buffer: ^__struct_nk_buffer; &type: __enum_nk_buffer_allocation_type); public;
begin
  assert(buffer);
  if not Boolean(buffer) then begin
    exit;
  end;
  (buffer)^.marker[&type].active := nk_true;
  if (&type = NK_BUFFER_BACK) then begin
    (buffer)^.marker[&type].offset := (buffer)^.size;
  end
  else begin
    (buffer)^.marker[&type].offset := (buffer)^.allocated;
  end;
end;

method nk_buffer_reset(buffer: ^__struct_nk_buffer; &type: __enum_nk_buffer_allocation_type); public;
begin
  assert(buffer);
  if not Boolean(buffer) then begin
    exit;
  end;
  if (&type = NK_BUFFER_BACK) then begin
    // reset back buffer either back to marker or empty
    (buffer)^.needed := (buffer)^.needed - ((buffer)^.memory.size - (buffer)^.marker[&type].offset);
    if (buffer)^.marker[&type].active then begin
      (buffer)^.size := (buffer)^.marker[&type].offset;
    end
    else begin
      (buffer)^.size := (buffer)^.memory.size;
    end;
    (buffer)^.marker[&type].active := nk_false;
  end
  else begin
    // reset front buffer either back to back marker or empty
    (buffer)^.needed := (buffer)^.needed - ((buffer)^.allocated - (buffer)^.marker[&type].offset);
    if (buffer)^.marker[&type].active then begin
      (buffer)^.allocated := (buffer)^.marker[&type].offset;
    end
    else begin
      (buffer)^.allocated := 0;
    end;
    (buffer)^.marker[&type].active := nk_false;
  end;
end;

method nk_buffer_clear(b: ^__struct_nk_buffer); public;
begin
  assert(b);
  if not Boolean(b) then begin
    exit;
  end;
  (b)^.allocated := 0;
  (b)^.size := (b)^.memory.size;
  (b)^.calls := 0;
  (b)^.needed := 0;
end;

method nk_buffer_free(b: ^__struct_nk_buffer); public;
begin
  assert(b);
  if (Boolean(not Boolean(b)) or Boolean(not Boolean((b)^.memory.ptr))) then begin
    exit;
  end;
  if ((b)^.type = NK_BUFFER_FIXED) then begin
    exit;
  end;
  if not Boolean((b)^.pool.free) then begin
    exit;
  end;
  assert((b)^.pool.free);
  (b)^.pool.free((b)^.pool.userdata, (b)^.memory.ptr);
end;

method nk_buffer_info(s: ^__struct_nk_memory_status; b: ^__struct_nk_buffer); public;
begin
  assert(b);
  assert(s);
  if (Boolean(not Boolean(s)) or Boolean(not Boolean(b))) then begin
    exit;
  end;
  (s)^.allocated := (b)^.allocated;
  (s)^.size := (b)^.memory.size;
  (s)^.needed := (b)^.needed;
  (s)^.memory := (b)^.memory.ptr;
  (s)^.calls := (b)^.calls;
end;

method nk_buffer_memory(buffer: ^__struct_nk_buffer): ^Void; public;
begin
  assert(buffer);
  if not Boolean(buffer) then begin
    exit 0;
  end;
  exit (buffer)^.memory.ptr;
end;

method nk_buffer_memory_const(buffer: ^__struct_nk_buffer): ^Void; public;
begin
  assert(buffer);
  if not Boolean(buffer) then begin
    exit 0;
  end;
  exit (buffer)^.memory.ptr;
end;

method nk_buffer_total(buffer: ^__struct_nk_buffer): nk_size; public;
begin
  assert(buffer);
  if not Boolean(buffer) then begin
    exit 0;
  end;
  exit (buffer)^.memory.size;
end;

// ===============================================================
//  *
//  *                              STRING
//  *
//  * ===============================================================
method nk_str_init_default(str: ^__struct_nk_str); public;
begin
  var alloc: __struct_nk_allocator;
  alloc.userdata.ptr := 0;
  alloc.alloc := nk_malloc;
  alloc.free := nk_mfree;
  nk_buffer_init((@(str)^.buffer), (@alloc), 32);
  (str)^.len := 0;
end;

method nk_str_init(str: ^__struct_nk_str; alloc: ^__struct_nk_allocator; size: nk_size); public;
begin
  nk_buffer_init((@(str)^.buffer), alloc, size);
  (str)^.len := 0;
end;

method nk_str_init_fixed(str: ^__struct_nk_str; memory: ^Void; size: nk_size); public;
begin
  nk_buffer_init_fixed((@(str)^.buffer), memory, size);
  (str)^.len := 0;
end;

method nk_str_append_text_char(s: ^__struct_nk_str; str: ^Byte; len: Int32): Int32; public;
begin
  var mem: ^Byte;
  assert(s);
  assert(str);
  if (Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean(str)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  mem := ^Byte(nk_buffer_alloc((@(s)^.buffer), NK_BUFFER_FRONT, (nk_size(len) * sizeOf(Byte)), 0));
  if not Boolean(mem) then begin
    exit 0;
  end;
  memcpy(mem, str, (nk_size(len) * sizeOf(Byte)));
  (s)^.len := (s)^.len + nk_utf_len(str, len);
  exit len;
end;

method nk_str_append_str_char(s: ^__struct_nk_str; str: ^Byte): Int32; public;
begin
  exit nk_str_append_text_char(s, str, nk_strlen(str));
end;

method nk_str_append_text_utf8(str: ^__struct_nk_str; text: ^Byte; len: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var byte_len: Int32 := 0;
  var unicode: nk_rune;
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < len) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    byte_len := byte_len + nk_utf_decode((text + byte_len), (@unicode), 4);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_str_append_text_char(str, text, byte_len);
  exit len;
end;

method nk_str_append_str_utf8(str: ^__struct_nk_str; text: ^Byte): Int32; public;
begin
  var runes: Int32 := 0;
  var byte_len: Int32 := 0;
  var num_runes: Int32 := 0;
  var glyph_len: Int32 := 0;
  var unicode: nk_rune;
  if (Boolean(not Boolean(str)) or Boolean(not Boolean(text))) then begin
    exit 0;
  end;
  glyph_len := (() -> begin
    var _tmp0 := nk_utf_decode((text + byte_len), (@unicode), 4);
    byte_len := _tmp0;
    exit _tmp0;
  end)();
  while (Boolean((unicode ≠ 0)) and Boolean(glyph_len)) do begin
    glyph_len := nk_utf_decode((text + byte_len), (@unicode), 4);
    byte_len := byte_len + glyph_len;
    num_runes := num_runes + 1;
  end;
  nk_str_append_text_char(str, text, byte_len);
  exit runes;
end;

method nk_str_append_text_runes(str: ^__struct_nk_str; text: ^nk_rune; len: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var byte_len: Int32 := 0;
  var glyph: nk_glyph;
  assert(str);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < len) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      byte_len := nk_utf_encode(text[i], glyph, 4);
      if not Boolean(byte_len) then begin
        goto _breaklabel0;
      end;
      nk_str_append_text_char(str, glyph, byte_len);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit len;
end;

method nk_str_append_str_runes(str: ^__struct_nk_str; runes: ^nk_rune): Int32; public;
begin
  var i: Int32 := 0;
  var glyph: nk_glyph;
  var byte_len: Int32;
  assert(str);
  if (Boolean(not Boolean(str)) or Boolean(not Boolean(runes))) then begin
    exit 0;
  end;
  while (runes[i] ≠ 0) do begin
    byte_len := nk_utf_encode(runes[i], glyph, 4);
    nk_str_append_text_char(str, glyph, byte_len);
    i := i + 1;
  end;
  exit i;
end;

method nk_str_insert_at_char(s: ^__struct_nk_str; pos: Int32; str: ^Byte; len: Int32): Int32; public;
begin
  var i: Int32;
  var mem: ^Void;
  var src: ^Byte;
  var dst: ^Byte;
  var copylen: Int32;
  assert(s);
  assert(str);
  assert((len ≥ 0));
  if (Boolean((Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean(str)))) or Boolean(not Boolean(len)))) or Boolean((nk_size(pos) > (s)^.buffer.allocated))) then begin
    exit 0;
  end;
  if (Boolean((((s)^.buffer.allocated + nk_size(len)) ≥ (s)^.buffer.memory.size)) and Boolean(((s)^.buffer.type = NK_BUFFER_FIXED))) then begin
    exit 0;
  end;
  copylen := (Int32((s)^.buffer.allocated) - pos);
  if not Boolean(copylen) then begin
    nk_str_append_text_char(s, str, len);
    exit 1;
  end;
  mem := nk_buffer_alloc((@(s)^.buffer), NK_BUFFER_FRONT, (nk_size(len) * sizeOf(Byte)), 0);
  if not Boolean(mem) then begin
    exit 0;
  end;
  // memmove
  assert((((Int32(pos) + Int32(len)) + (Int32(copylen) - 1)) ≥ 0));
  assert(((Int32(pos) + (Int32(copylen) - 1)) ≥ 0));
  dst := ^Byte(^Void((^nk_byte((s)^.buffer.memory.ptr) + ((pos + len) + (copylen - 1)))));
  src := ^Byte(^Void((^nk_byte((s)^.buffer.memory.ptr) + (pos + (copylen - 1)))));
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < copylen) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    ((() -> begin
      var _tmp1 := dst;
      dst := _tmp1 - 1;
      exit _tmp1;
    end)())^ := ((() -> begin
      var _tmp2 := src;
      src := _tmp2 - 1;
      exit _tmp2;
    end)())^;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  mem := ^Void(^Void((^nk_byte((s)^.buffer.memory.ptr) + pos)));
  memcpy(mem, str, (nk_size(len) * sizeOf(Byte)));
  (s)^.len := nk_utf_len(^Byte((s)^.buffer.memory.ptr), Int32((s)^.buffer.allocated));
  exit 1;
end;

method nk_str_insert_at_rune(str: ^__struct_nk_str; pos: Int32; cstr: ^Byte; len: Int32): Int32; public;
begin
  var glyph_len: Int32;
  var unicode: nk_rune;
  var &begin: ^Byte;
  var buffer: ^Byte;
  assert(str);
  assert(cstr);
  assert(len);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(cstr)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  &begin := nk_str_at_rune(str, pos, (@unicode), (@glyph_len));
  if not Boolean((str)^.len) then begin
    exit nk_str_append_text_char(str, cstr, len);
  end;
  buffer := nk_str_get_const(str);
  if not Boolean(&begin) then begin
    exit 0;
  end;
  exit nk_str_insert_at_char(str, Int32((&begin - buffer)), cstr, len);
end;

method nk_str_insert_text_char(str: ^__struct_nk_str; pos: Int32; text: ^Byte; len: Int32): Int32; public;
begin
  exit nk_str_insert_text_utf8(str, pos, text, len);
end;

method nk_str_insert_str_char(str: ^__struct_nk_str; pos: Int32; text: ^Byte): Int32; public;
begin
  exit nk_str_insert_text_utf8(str, pos, text, nk_strlen(text));
end;

method nk_str_insert_text_utf8(str: ^__struct_nk_str; pos: Int32; text: ^Byte; len: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var byte_len: Int32 := 0;
  var unicode: nk_rune;
  assert(str);
  assert(text);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < len) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    byte_len := byte_len + nk_utf_decode((text + byte_len), (@unicode), 4);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_str_insert_at_rune(str, pos, text, byte_len);
  exit len;
end;

method nk_str_insert_str_utf8(str: ^__struct_nk_str; pos: Int32; text: ^Byte): Int32; public;
begin
  var runes: Int32 := 0;
  var byte_len: Int32 := 0;
  var num_runes: Int32 := 0;
  var glyph_len: Int32 := 0;
  var unicode: nk_rune;
  if (Boolean(not Boolean(str)) or Boolean(not Boolean(text))) then begin
    exit 0;
  end;
  glyph_len := (() -> begin
    var _tmp0 := nk_utf_decode((text + byte_len), (@unicode), 4);
    byte_len := _tmp0;
    exit _tmp0;
  end)();
  while (Boolean((unicode ≠ 0)) and Boolean(glyph_len)) do begin
    glyph_len := nk_utf_decode((text + byte_len), (@unicode), 4);
    byte_len := byte_len + glyph_len;
    num_runes := num_runes + 1;
  end;
  nk_str_insert_at_rune(str, pos, text, byte_len);
  exit runes;
end;

method nk_str_insert_text_runes(str: ^__struct_nk_str; pos: Int32; runes: ^nk_rune; len: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var byte_len: Int32 := 0;
  var glyph: nk_glyph;
  assert(str);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(runes)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < len) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      byte_len := nk_utf_encode(runes[i], glyph, 4);
      if not Boolean(byte_len) then begin
        goto _breaklabel0;
      end;
      nk_str_insert_at_rune(str, (pos + i), glyph, byte_len);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit len;
end;

method nk_str_insert_str_runes(str: ^__struct_nk_str; pos: Int32; runes: ^nk_rune): Int32; public;
begin
  var i: Int32 := 0;
  var glyph: nk_glyph;
  var byte_len: Int32;
  assert(str);
  if (Boolean(not Boolean(str)) or Boolean(not Boolean(runes))) then begin
    exit 0;
  end;
  while (runes[i] ≠ 0) do begin
    byte_len := nk_utf_encode(runes[i], glyph, 4);
    nk_str_insert_at_rune(str, (pos + i), glyph, byte_len);
    i := i + 1;
  end;
  exit i;
end;

method nk_str_remove_chars(s: ^__struct_nk_str; len: Int32); public;
begin
  assert(s);
  assert((len ≥ 0));
  if (Boolean((Boolean(not Boolean(s)) or Boolean((len < 0)))) or Boolean((nk_size(len) > (s)^.buffer.allocated))) then begin
    exit;
  end;
  assert(((Int32((s)^.buffer.allocated) - Int32(len)) ≥ 0));
  (s)^.buffer.allocated := (s)^.buffer.allocated - nk_size(len);
  (s)^.len := nk_utf_len(^Byte((s)^.buffer.memory.ptr), Int32((s)^.buffer.allocated));
end;

method nk_str_remove_runes(str: ^__struct_nk_str; len: Int32); public;
begin
  var &index: Int32;
  var &begin: ^Byte;
  var &end: ^Byte;
  var unicode: nk_rune;
  assert(str);
  assert((len ≥ 0));
  if (Boolean(not Boolean(str)) or Boolean((len < 0))) then begin
    exit;
  end;
  if (len ≥ (str)^.len) then begin
    (str)^.len := 0;
    exit;
  end;
  &index := ((str)^.len - len);
  &begin := nk_str_at_rune(str, &index, (@unicode), (@len));
  &end := (^Byte((str)^.buffer.memory.ptr) + (str)^.buffer.allocated);
  nk_str_remove_chars(str, (Int32((&end - &begin)) + 1));
end;

method nk_str_delete_chars(s: ^__struct_nk_str; pos: Int32; len: Int32); public;
begin
  assert(s);
  if (Boolean((Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean(len)))) or Boolean((nk_size(pos) > (s)^.buffer.allocated)))) or Boolean((nk_size((pos + len)) > (s)^.buffer.allocated))) then begin
    exit;
  end;
  if (nk_size((pos + len)) < (s)^.buffer.allocated) then begin
    // memmove
    var dst: ^Byte := ^Byte(^Void((^nk_byte((s)^.buffer.memory.ptr) + pos)));
    var src: ^Byte := ^Byte(^Void((^nk_byte((s)^.buffer.memory.ptr) + (pos + len))));
    memcpy(dst, src, ((s)^.buffer.allocated - nk_size((pos + len))));
    assert(((Int32((s)^.buffer.allocated) - Int32(len)) ≥ 0));
    (s)^.buffer.allocated := (s)^.buffer.allocated - nk_size(len);
  end
  else begin
    nk_str_remove_chars(s, len);
  end;
  (s)^.len := nk_utf_len(^Byte((s)^.buffer.memory.ptr), Int32((s)^.buffer.allocated));
end;

method nk_str_delete_runes(s: ^__struct_nk_str; pos: Int32; len: Int32); public;
begin
  var temp: ^Byte;
  var unicode: nk_rune;
  var &begin: ^Byte;
  var &end: ^Byte;
  var unused: Int32;
  assert(s);
  assert(((s)^.len ≥ (pos + len)));
  if ((s)^.len < (pos + len)) then begin
    len := (if ((if (((s)^.len - pos) < (s)^.len) then (((s)^.len - pos)) else ((s)^.len)) < 0) then (0) else ((if (((s)^.len - pos) < (s)^.len) then (((s)^.len - pos)) else ((s)^.len))));
  end;
  if not Boolean(len) then begin
    exit;
  end;
  temp := ^Byte((s)^.buffer.memory.ptr);
  &begin := nk_str_at_rune(s, pos, (@unicode), (@unused));
  if not Boolean(&begin) then begin
    exit;
  end;
  (s)^.buffer.memory.ptr := &begin;
  &end := nk_str_at_rune(s, len, (@unicode), (@unused));
  (s)^.buffer.memory.ptr := temp;
  if not Boolean(&end) then begin
    exit;
  end;
  nk_str_delete_chars(s, Int32((&begin - temp)), Int32((&end - &begin)));
end;

method nk_str_at_char(s: ^__struct_nk_str; pos: Int32): ^Byte; public;
begin
  assert(s);
  if (Boolean(not Boolean(s)) or Boolean((pos > Int32((s)^.buffer.allocated)))) then begin
    exit 0;
  end;
  exit ^Byte(^Void((^nk_byte((s)^.buffer.memory.ptr) + pos)));
end;

method nk_str_at_rune(str: ^__struct_nk_str; pos: Int32; unicode: ^nk_rune; len: ^Int32): ^Byte; public;
begin
  var i: Int32 := 0;
  var src_len: Int32 := 0;
  var glyph_len: Int32 := 0;
  var text: ^Byte;
  var text_len: Int32;
  assert(str);
  assert(unicode);
  assert(len);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(unicode)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  if (pos < 0) then begin
    (unicode)^ := 0;
    (len)^ := 0;
    exit 0;
  end;
  text := ^Byte((str)^.buffer.memory.ptr);
  text_len := Int32((str)^.buffer.allocated);
  glyph_len := nk_utf_decode(text, unicode, text_len);
  while glyph_len do begin
    if (i = pos) then begin
      (len)^ := glyph_len;
      break;
    end;
    i := i + 1;
    src_len := (src_len + glyph_len);
    glyph_len := nk_utf_decode((text + src_len), unicode, (text_len - src_len));
  end;
  if (i ≠ pos) then begin
    exit 0;
  end;
  exit (text + src_len);
end;

method nk_str_at_char_const(s: ^__struct_nk_str; pos: Int32): ^Byte; public;
begin
  assert(s);
  if (Boolean(not Boolean(s)) or Boolean((pos > Int32((s)^.buffer.allocated)))) then begin
    exit 0;
  end;
  exit ^Byte(^Void((^nk_byte((s)^.buffer.memory.ptr) + pos)));
end;

method nk_str_at_const(str: ^__struct_nk_str; pos: Int32; unicode: ^nk_rune; len: ^Int32): ^Byte; public;
begin
  var i: Int32 := 0;
  var src_len: Int32 := 0;
  var glyph_len: Int32 := 0;
  var text: ^Byte;
  var text_len: Int32;
  assert(str);
  assert(unicode);
  assert(len);
  if (Boolean((Boolean(not Boolean(str)) or Boolean(not Boolean(unicode)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  if (pos < 0) then begin
    (unicode)^ := 0;
    (len)^ := 0;
    exit 0;
  end;
  text := ^Byte((str)^.buffer.memory.ptr);
  text_len := Int32((str)^.buffer.allocated);
  glyph_len := nk_utf_decode(text, unicode, text_len);
  while glyph_len do begin
    if (i = pos) then begin
      (len)^ := glyph_len;
      break;
    end;
    i := i + 1;
    src_len := (src_len + glyph_len);
    glyph_len := nk_utf_decode((text + src_len), unicode, (text_len - src_len));
  end;
  if (i ≠ pos) then begin
    exit 0;
  end;
  exit (text + src_len);
end;

method nk_str_rune_at(str: ^__struct_nk_str; pos: Int32): nk_rune; public;
begin
  var len: Int32;
  var unicode: nk_rune := 0;
  nk_str_at_const(str, pos, (@unicode), (@len));
  exit unicode;
end;

method nk_str_get(s: ^__struct_nk_str): ^Byte; public;
begin
  assert(s);
  if (Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean((s)^.len)))) or Boolean(not Boolean((s)^.buffer.allocated))) then begin
    exit 0;
  end;
  exit ^Byte((s)^.buffer.memory.ptr);
end;

method nk_str_get_const(s: ^__struct_nk_str): ^Byte; public;
begin
  assert(s);
  if (Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean((s)^.len)))) or Boolean(not Boolean((s)^.buffer.allocated))) then begin
    exit 0;
  end;
  exit ^Byte((s)^.buffer.memory.ptr);
end;

method nk_str_len(s: ^__struct_nk_str): Int32; public;
begin
  assert(s);
  if (Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean((s)^.len)))) or Boolean(not Boolean((s)^.buffer.allocated))) then begin
    exit 0;
  end;
  exit (s)^.len;
end;

method nk_str_len_char(s: ^__struct_nk_str): Int32; public;
begin
  assert(s);
  if (Boolean((Boolean(not Boolean(s)) or Boolean(not Boolean((s)^.len)))) or Boolean(not Boolean((s)^.buffer.allocated))) then begin
    exit 0;
  end;
  exit Int32((s)^.buffer.allocated);
end;

method nk_str_clear(str: ^__struct_nk_str); public;
begin
  assert(str);
  nk_buffer_clear((@(str)^.buffer));
  (str)^.len := 0;
end;

method nk_str_free(str: ^__struct_nk_str); public;
begin
  assert(str);
  nk_buffer_free((@(str)^.buffer));
  (str)^.len := 0;
end;

// ==============================================================
//  *
//  *                          DRAW
//  *
//  * ===============================================================
method nk_command_buffer_init(cb: ^__struct_nk_command_buffer; b: ^__struct_nk_buffer; clip: __enum_nk_command_clipping); public;
begin
  assert(cb);
  assert(b);
  if (Boolean(not Boolean(cb)) or Boolean(not Boolean(b))) then begin
    exit;
  end;
  (cb)^.base := b;
  (cb)^.use_clipping := Int32(clip);
  (cb)^.begin := (b)^.allocated;
  (cb)^.end := (b)^.allocated;
  (cb)^.last := (b)^.allocated;
end;

method nk_command_buffer_reset(b: ^__struct_nk_command_buffer); public;
begin
  assert(b);
  if not Boolean(b) then begin
    exit;
  end;
  (b)^.begin := 0;
  (b)^.end := 0;
  (b)^.last := 0;
  (b)^.clip := nk_null_rect;
end;

method nk_command_buffer_push(b: ^__struct_nk_command_buffer; t: __enum_nk_command_type; size: nk_size): ^Void; public;
begin
  var align: nk_size := (^Byte((@(^anontype_3(0))^._h)) - ^Byte(0));
  var cmd: ^__struct_nk_command;
  var alignment: nk_size;
  var unaligned: ^Void;
  var memory: ^Void;
  assert(b);
  assert((b)^.base);
  if not Boolean(b) then begin
    exit 0;
  end;
  cmd := ^__struct_nk_command(nk_buffer_alloc((b)^.base, NK_BUFFER_FRONT, size, align));
  if not Boolean(cmd) then begin
    exit 0;
  end;
  // make sure the offset to the next command is aligned
  (b)^.last := nk_size((^nk_byte(cmd) - ^nk_byte(((b)^.base)^.memory.ptr)));
  unaligned := (^nk_byte(cmd) + size);
  memory := ^Void((nk_size((^nk_byte(unaligned) + (align - 1))) and not (align - 1)));
  alignment := nk_size((^nk_byte(memory) - ^nk_byte(unaligned)));
  (cmd)^.type := t;
  (cmd)^.next := (((b)^.base)^.allocated + alignment);
  (b)^.end := (cmd)^.next;
  exit cmd;
end;

method nk_push_scissor(b: ^__struct_nk_command_buffer; r: __struct_nk_rect); public;
begin
  var cmd: ^__struct_nk_command_scissor;
  assert(b);
  if not Boolean(b) then begin
    exit;
  end;
  (b)^.clip.x := r.x;
  (b)^.clip.y := r.y;
  (b)^.clip.w := r.w;
  (b)^.clip.h := r.h;
  cmd := ^__struct_nk_command_scissor(nk_command_buffer_push(b, NK_COMMAND_SCISSOR, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.x := Int16(r.x);
  (cmd)^.y := Int16(r.y);
  (cmd)^.w := UInt16((if (0 < r.w) then (r.w) else (0)));
  (cmd)^.h := UInt16((if (0 < r.h) then (r.h) else (0)));
end;

method nk_stroke_line(b: ^__struct_nk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; line_thickness: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_line;
  assert(b);
  if (Boolean(not Boolean(b)) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  cmd := ^__struct_nk_command_line(nk_command_buffer_push(b, NK_COMMAND_LINE, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.begin.x := Int16(x0);
  (cmd)^.begin.y := Int16(y0);
  (cmd)^.end.x := Int16(x1);
  (cmd)^.end.y := Int16(y1);
  (cmd)^.color := c;
end;

method nk_stroke_curve(b: ^__struct_nk_command_buffer; ax: Single; ay: Single; ctrl0x: Single; ctrl0y: Single; ctrl1x: Single; ctrl1y: Single; bx: Single; &by: Single; line_thickness: Single; col: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_curve;
  assert(b);
  if (Boolean((Boolean(not Boolean(b)) or Boolean((col.a = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  cmd := ^__struct_nk_command_curve(nk_command_buffer_push(b, NK_COMMAND_CURVE, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.begin.x := Int16(ax);
  (cmd)^.begin.y := Int16(ay);
  (cmd)^.ctrl[0].x := Int16(ctrl0x);
  (cmd)^.ctrl[0].y := Int16(ctrl0y);
  (cmd)^.ctrl[1].x := Int16(ctrl1x);
  (cmd)^.ctrl[1].y := Int16(ctrl1y);
  (cmd)^.end.x := Int16(bx);
  (cmd)^.end.y := Int16(&by);
  (cmd)^.color := col;
end;

method nk_stroke_rect(b: ^__struct_nk_command_buffer; rect: __struct_nk_rect; rounding: Single; line_thickness: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_rect;
  assert(b);
  if (Boolean((Boolean((Boolean((Boolean(not Boolean(b)) or Boolean((c.a = 0)))) or Boolean((rect.w = 0)))) or Boolean((rect.h = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if not Boolean(not Boolean((Boolean((Boolean((Boolean(((clip)^.x > (rect.x + rect.w))) or Boolean((((clip)^.x + (clip)^.w) < rect.x)))) or Boolean(((clip)^.y > (rect.y + rect.h))))) or Boolean((((clip)^.y + (clip)^.h) < rect.y))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_rect(nk_command_buffer_push(b, NK_COMMAND_RECT, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.rounding := UInt16(rounding);
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.x := Int16(rect.x);
  (cmd)^.y := Int16(rect.y);
  (cmd)^.w := UInt16((if (0 < rect.w) then (rect.w) else (0)));
  (cmd)^.h := UInt16((if (0 < rect.h) then (rect.h) else (0)));
  (cmd)^.color := c;
end;

method nk_fill_rect(b: ^__struct_nk_command_buffer; rect: __struct_nk_rect; rounding: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_rect_filled;
  assert(b);
  if (Boolean((Boolean((Boolean(not Boolean(b)) or Boolean((c.a = 0)))) or Boolean((rect.w = 0)))) or Boolean((rect.h = 0))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if not Boolean(not Boolean((Boolean((Boolean((Boolean(((clip)^.x > (rect.x + rect.w))) or Boolean((((clip)^.x + (clip)^.w) < rect.x)))) or Boolean(((clip)^.y > (rect.y + rect.h))))) or Boolean((((clip)^.y + (clip)^.h) < rect.y))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_rect_filled(nk_command_buffer_push(b, NK_COMMAND_RECT_FILLED, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.rounding := UInt16(rounding);
  (cmd)^.x := Int16(rect.x);
  (cmd)^.y := Int16(rect.y);
  (cmd)^.w := UInt16((if (0 < rect.w) then (rect.w) else (0)));
  (cmd)^.h := UInt16((if (0 < rect.h) then (rect.h) else (0)));
  (cmd)^.color := c;
end;

method nk_fill_rect_multi_color(b: ^__struct_nk_command_buffer; rect: __struct_nk_rect; left: __struct_nk_color; top: __struct_nk_color; right: __struct_nk_color; bottom: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_rect_multi_color;
  assert(b);
  if (Boolean((Boolean(not Boolean(b)) or Boolean((rect.w = 0)))) or Boolean((rect.h = 0))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if not Boolean(not Boolean((Boolean((Boolean((Boolean(((clip)^.x > (rect.x + rect.w))) or Boolean((((clip)^.x + (clip)^.w) < rect.x)))) or Boolean(((clip)^.y > (rect.y + rect.h))))) or Boolean((((clip)^.y + (clip)^.h) < rect.y))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_rect_multi_color(nk_command_buffer_push(b, NK_COMMAND_RECT_MULTI_COLOR, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.x := Int16(rect.x);
  (cmd)^.y := Int16(rect.y);
  (cmd)^.w := UInt16((if (0 < rect.w) then (rect.w) else (0)));
  (cmd)^.h := UInt16((if (0 < rect.h) then (rect.h) else (0)));
  (cmd)^.left := left;
  (cmd)^.top := top;
  (cmd)^.right := right;
  (cmd)^.bottom := bottom;
end;

method nk_stroke_circle(b: ^__struct_nk_command_buffer; r: __struct_nk_rect; line_thickness: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_circle;
  if (Boolean((Boolean((Boolean(not Boolean(b)) or Boolean((r.w = 0)))) or Boolean((r.h = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if not Boolean(not Boolean((Boolean((Boolean((Boolean(((clip)^.x > (r.x + r.w))) or Boolean((((clip)^.x + (clip)^.w) < r.x)))) or Boolean(((clip)^.y > (r.y + r.h))))) or Boolean((((clip)^.y + (clip)^.h) < r.y))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_circle(nk_command_buffer_push(b, NK_COMMAND_CIRCLE, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.x := Int16(r.x);
  (cmd)^.y := Int16(r.y);
  (cmd)^.w := UInt16((if (r.w < 0) then (0) else (r.w)));
  (cmd)^.h := UInt16((if (r.h < 0) then (0) else (r.h)));
  (cmd)^.color := c;
end;

method nk_fill_circle(b: ^__struct_nk_command_buffer; r: __struct_nk_rect; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_circle_filled;
  assert(b);
  if (Boolean((Boolean((Boolean(not Boolean(b)) or Boolean((c.a = 0)))) or Boolean((r.w = 0)))) or Boolean((r.h = 0))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if not Boolean(not Boolean((Boolean((Boolean((Boolean(((clip)^.x > (r.x + r.w))) or Boolean((((clip)^.x + (clip)^.w) < r.x)))) or Boolean(((clip)^.y > (r.y + r.h))))) or Boolean((((clip)^.y + (clip)^.h) < r.y))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_circle_filled(nk_command_buffer_push(b, NK_COMMAND_CIRCLE_FILLED, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.x := Int16(r.x);
  (cmd)^.y := Int16(r.y);
  (cmd)^.w := UInt16((if (r.w < 0) then (0) else (r.w)));
  (cmd)^.h := UInt16((if (r.h < 0) then (0) else (r.h)));
  (cmd)^.color := c;
end;

method nk_stroke_arc(b: ^__struct_nk_command_buffer; cx: Single; cy: Single; radius: Single; a_min: Single; a_max: Single; line_thickness: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_arc;
  if (Boolean((Boolean(not Boolean(b)) or Boolean((c.a = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  cmd := ^__struct_nk_command_arc(nk_command_buffer_push(b, NK_COMMAND_ARC, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.cx := Int16(cx);
  (cmd)^.cy := Int16(cy);
  (cmd)^.r := UInt16(radius);
  (cmd)^.a[0] := a_min;
  (cmd)^.a[1] := a_max;
  (cmd)^.color := c;
end;

method nk_fill_arc(b: ^__struct_nk_command_buffer; cx: Single; cy: Single; radius: Single; a_min: Single; a_max: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_arc_filled;
  assert(b);
  if (Boolean(not Boolean(b)) or Boolean((c.a = 0))) then begin
    exit;
  end;
  cmd := ^__struct_nk_command_arc_filled(nk_command_buffer_push(b, NK_COMMAND_ARC_FILLED, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.cx := Int16(cx);
  (cmd)^.cy := Int16(cy);
  (cmd)^.r := UInt16(radius);
  (cmd)^.a[0] := a_min;
  (cmd)^.a[1] := a_max;
  (cmd)^.color := c;
end;

method nk_stroke_triangle(b: ^__struct_nk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; x2: Single; y2: Single; line_thickness: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_triangle;
  assert(b);
  if (Boolean((Boolean(not Boolean(b)) or Boolean((c.a = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if (Boolean((Boolean(not Boolean((Boolean((Boolean(((clip)^.x ≤ x0)) and Boolean((x0 < ((clip)^.x + (clip)^.w))))) and Boolean((Boolean(((clip)^.y ≤ y0)) and Boolean((y0 < ((clip)^.y + (clip)^.h)))))))) and Boolean(not Boolean((Boolean((Boolean(((clip)^.x ≤ x1)) and Boolean((x1 < ((clip)^.x + (clip)^.w))))) and Boolean((Boolean(((clip)^.y ≤ y1)) and Boolean((y1 < ((clip)^.y + (clip)^.h)))))))))) and Boolean(not Boolean((Boolean((Boolean(((clip)^.x ≤ x2)) and Boolean((x2 < ((clip)^.x + (clip)^.w))))) and Boolean((Boolean(((clip)^.y ≤ y2)) and Boolean((y2 < ((clip)^.y + (clip)^.h))))))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_triangle(nk_command_buffer_push(b, NK_COMMAND_TRIANGLE, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.a.x := Int16(x0);
  (cmd)^.a.y := Int16(y0);
  (cmd)^.b.x := Int16(x1);
  (cmd)^.b.y := Int16(y1);
  (cmd)^.c.x := Int16(x2);
  (cmd)^.c.y := Int16(y2);
  (cmd)^.color := c;
end;

method nk_fill_triangle(b: ^__struct_nk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; x2: Single; y2: Single; c: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_triangle_filled;
  assert(b);
  if (Boolean(not Boolean(b)) or Boolean((c.a = 0))) then begin
    exit;
  end;
  if not Boolean(b) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var clip: ^__struct_nk_rect := (@(b)^.clip);
    if (Boolean((Boolean(not Boolean((Boolean((Boolean(((clip)^.x ≤ x0)) and Boolean((x0 < ((clip)^.x + (clip)^.w))))) and Boolean((Boolean(((clip)^.y ≤ y0)) and Boolean((y0 < ((clip)^.y + (clip)^.h)))))))) and Boolean(not Boolean((Boolean((Boolean(((clip)^.x ≤ x1)) and Boolean((x1 < ((clip)^.x + (clip)^.w))))) and Boolean((Boolean(((clip)^.y ≤ y1)) and Boolean((y1 < ((clip)^.y + (clip)^.h)))))))))) and Boolean(not Boolean((Boolean((Boolean(((clip)^.x ≤ x2)) and Boolean((x2 < ((clip)^.x + (clip)^.w))))) and Boolean((Boolean(((clip)^.y ≤ y2)) and Boolean((y2 < ((clip)^.y + (clip)^.h))))))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_triangle_filled(nk_command_buffer_push(b, NK_COMMAND_TRIANGLE_FILLED, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.a.x := Int16(x0);
  (cmd)^.a.y := Int16(y0);
  (cmd)^.b.x := Int16(x1);
  (cmd)^.b.y := Int16(y1);
  (cmd)^.c.x := Int16(x2);
  (cmd)^.c.y := Int16(y2);
  (cmd)^.color := c;
end;

method nk_stroke_polygon(b: ^__struct_nk_command_buffer; points: ^Single; point_count: Int32; line_thickness: Single; col: __struct_nk_color); public;
begin
  var i: Int32;
  var size: nk_size := 0;
  var cmd: ^__struct_nk_command_polygon;
  assert(b);
  if (Boolean((Boolean(not Boolean(b)) or Boolean((col.a = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  size := (sizeOf((cmd)^) + ((sizeOf(Int16) * 2) * nk_size(point_count)));
  cmd := ^__struct_nk_command_polygon(nk_command_buffer_push(b, NK_COMMAND_POLYGON, size));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.color := col;
  (cmd)^.line_thickness := UInt16(line_thickness);
  (cmd)^.point_count := UInt16(point_count);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < point_count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      (cmd)^.points[i].x := Int16(points[(i * 2)]);
      (cmd)^.points[i].y := Int16(points[((i * 2) + 1)]);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_fill_polygon(b: ^__struct_nk_command_buffer; points: ^Single; point_count: Int32; col: __struct_nk_color); public;
begin
  var i: Int32;
  var size: nk_size := 0;
  var cmd: ^__struct_nk_command_polygon_filled;
  assert(b);
  if (Boolean(not Boolean(b)) or Boolean((col.a = 0))) then begin
    exit;
  end;
  size := (sizeOf((cmd)^) + ((sizeOf(Int16) * 2) * nk_size(point_count)));
  cmd := ^__struct_nk_command_polygon_filled(nk_command_buffer_push(b, NK_COMMAND_POLYGON_FILLED, size));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.color := col;
  (cmd)^.point_count := UInt16(point_count);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < point_count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      (cmd)^.points[i].x := Int16(points[((i * 2) + 0)]);
      (cmd)^.points[i].y := Int16(points[((i * 2) + 1)]);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_stroke_polyline(b: ^__struct_nk_command_buffer; points: ^Single; point_count: Int32; line_thickness: Single; col: __struct_nk_color); public;
begin
  var i: Int32;
  var size: nk_size := 0;
  var cmd: ^__struct_nk_command_polyline;
  assert(b);
  if (Boolean((Boolean(not Boolean(b)) or Boolean((col.a = 0)))) or Boolean((line_thickness ≤ 0))) then begin
    exit;
  end;
  size := (sizeOf((cmd)^) + ((sizeOf(Int16) * 2) * nk_size(point_count)));
  cmd := ^__struct_nk_command_polyline(nk_command_buffer_push(b, NK_COMMAND_POLYLINE, size));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.color := col;
  (cmd)^.point_count := UInt16(point_count);
  (cmd)^.line_thickness := UInt16(line_thickness);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < point_count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      (cmd)^.points[i].x := Int16(points[(i * 2)]);
      (cmd)^.points[i].y := Int16(points[((i * 2) + 1)]);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_draw_image(b: ^__struct_nk_command_buffer; r: __struct_nk_rect; img: ^__struct_nk_image; col: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command_image;
  assert(b);
  if not Boolean(b) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var c: ^__struct_nk_rect := (@(b)^.clip);
    if (Boolean((Boolean(((c)^.w = 0)) or Boolean(((c)^.h = 0)))) or Boolean(not Boolean(not Boolean((Boolean((Boolean((Boolean(((c)^.x > (r.x + r.w))) or Boolean((((c)^.x + (c)^.w) < r.x)))) or Boolean(((c)^.y > (r.y + r.h))))) or Boolean((((c)^.y + (c)^.h) < r.y))))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_image(nk_command_buffer_push(b, NK_COMMAND_IMAGE, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.x := Int16(r.x);
  (cmd)^.y := Int16(r.y);
  (cmd)^.w := UInt16((if (0 < r.w) then (r.w) else (0)));
  (cmd)^.h := UInt16((if (0 < r.h) then (r.h) else (0)));
  (cmd)^.img := (img)^;
  (cmd)^.col := col;
end;

method nk_push_custom(b: ^__struct_nk_command_buffer; r: __struct_nk_rect; cb: nk_command_custom_callback; usr: nk_handle); public;
begin
  var cmd: ^__struct_nk_command_custom;
  assert(b);
  if not Boolean(b) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var c: ^__struct_nk_rect := (@(b)^.clip);
    if (Boolean((Boolean(((c)^.w = 0)) or Boolean(((c)^.h = 0)))) or Boolean(not Boolean(not Boolean((Boolean((Boolean((Boolean(((c)^.x > (r.x + r.w))) or Boolean((((c)^.x + (c)^.w) < r.x)))) or Boolean(((c)^.y > (r.y + r.h))))) or Boolean((((c)^.y + (c)^.h) < r.y))))))) then begin
      exit;
    end;
  end;
  cmd := ^__struct_nk_command_custom(nk_command_buffer_push(b, NK_COMMAND_CUSTOM, sizeOf((cmd)^)));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.x := Int16(r.x);
  (cmd)^.y := Int16(r.y);
  (cmd)^.w := UInt16((if (0 < r.w) then (r.w) else (0)));
  (cmd)^.h := UInt16((if (0 < r.h) then (r.h) else (0)));
  (cmd)^.callback_data := usr;
  (cmd)^.callback := cb;
end;

method nk_draw_text(b: ^__struct_nk_command_buffer; r: __struct_nk_rect; string: ^Byte; length: Int32; font: ^__struct_nk_user_font; bg: __struct_nk_color; fg: __struct_nk_color); public;
begin
  var text_width: Single := 0;
  var cmd: ^__struct_nk_command_text;
  assert(b);
  assert(font);
  if (Boolean((Boolean((Boolean(not Boolean(b)) or Boolean(not Boolean(string)))) or Boolean(not Boolean(length)))) or Boolean((Boolean((bg.a = 0)) and Boolean((fg.a = 0))))) then begin
    exit;
  end;
  if (b)^.use_clipping then begin
    var c: ^__struct_nk_rect := (@(b)^.clip);
    if (Boolean((Boolean(((c)^.w = 0)) or Boolean(((c)^.h = 0)))) or Boolean(not Boolean(not Boolean((Boolean((Boolean((Boolean(((c)^.x > (r.x + r.w))) or Boolean((((c)^.x + (c)^.w) < r.x)))) or Boolean(((c)^.y > (r.y + r.h))))) or Boolean((((c)^.y + (c)^.h) < r.y))))))) then begin
      exit;
    end;
  end;
  // make sure text fits inside bounds
  text_width := (font)^.width((font)^.userdata, (font)^.height, string, length);
  if (text_width > r.w) then begin
    var glyphs: Int32 := 0;
    var txt_width: Single := Single(text_width);
    length := nk_text_clamp(font, string, length, r.w, (@glyphs), (@txt_width), 0, 0);
  end;
  if not Boolean(length) then begin
    exit;
  end;
  cmd := ^__struct_nk_command_text(nk_command_buffer_push(b, NK_COMMAND_TEXT, (sizeOf((cmd)^) + nk_size((length + 1)))));
  if not Boolean(cmd) then begin
    exit;
  end;
  (cmd)^.x := Int16(r.x);
  (cmd)^.y := Int16(r.y);
  (cmd)^.w := UInt16(r.w);
  (cmd)^.h := UInt16(r.h);
  (cmd)^.background := bg;
  (cmd)^.foreground := fg;
  (cmd)^.font := font;
  (cmd)^.length := length;
  (cmd)^.height := (font)^.height;
  memcpy((cmd)^.string, string, nk_size(length));
  (cmd)^.string[length] := 0;
end;

const NK_RP_HEURISTIC_Skyline_default = __enum_NK_RP_HEURISTIC.NK_RP_HEURISTIC_Skyline_default; public;
const NK_RP_HEURISTIC_Skyline_BL_sortHeight = __enum_NK_RP_HEURISTIC.NK_RP_HEURISTIC_Skyline_BL_sortHeight; public;
const NK_RP_HEURISTIC_Skyline_BF_sortHeight = __enum_NK_RP_HEURISTIC.NK_RP_HEURISTIC_Skyline_BF_sortHeight; public;
const NK_RP__INIT_skyline = __enum_NK_RP_INIT_STATE.NK_RP__INIT_skyline; public;

method nk_rp_setup_allow_out_of_mem(context: ^__struct_nk_rp_context; allow_out_of_mem: Int32); public;
begin
  if allow_out_of_mem then begin
    // if it's ok to run out of memory, then don't bother aligning them; 
    //  this gives better packing, but may fail due to OOM (even though 
    //  the rectangles easily fit). @TODO a smarter approach would be to only 
    //  quantize once we've hit OOM, then we could get rid of this parameter.
    (context)^.align := 1;
  end
  else begin
    // if it's not ok to run out of memory, then quantize the widths 
    //  so that num_nodes is always enough nodes. 
    //  
    //  I.e. num_nodes * align >= width 
    //                   align >= width / num_nodes 
    //                   align = ceil(width/num_nodes)
    (context)^.align := ((((context)^.width + (context)^.num_nodes) - 1) / (context)^.num_nodes);
  end;
end;

method nk_rp_init_target(context: ^__struct_nk_rp_context; width: Int32; height: Int32; nodes: ^__struct_nk_rp_node; num_nodes: Int32); public;
begin
  var i: Int32;
  assert((Boolean((width ≤ 65535)) and Boolean((height ≤ 65535))));
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < (num_nodes - 1)) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    nodes[i].next := (@nodes[(i + 1)]);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nodes[i].next := 0;
  (context)^.init_mode := NK_RP__INIT_skyline;
  (context)^.heuristic := NK_RP_HEURISTIC_Skyline_default;
  (context)^.free_head := (@nodes[0]);
  (context)^.active_head := (@(context)^.extra[0]);
  (context)^.width := width;
  (context)^.height := height;
  (context)^.num_nodes := num_nodes;
  nk_rp_setup_allow_out_of_mem(context, 0);
  // node 0 is the full width, node 1 is the sentinel (lets us not store width explicitly)
  (context)^.extra[0].x := 0;
  (context)^.extra[0].y := 0;
  (context)^.extra[0].next := (@(context)^.extra[1]);
  (context)^.extra[1].x := nk_rp_coord(width);
  (context)^.extra[1].y := 65535;
  (context)^.extra[1].next := 0;
end;

// find minimum y position if it starts at x1
method nk_rp__skyline_find_min_y(c: ^__struct_nk_rp_context; first: ^__struct_nk_rp_node; x0: Int32; width: Int32; pwaste: ^Int32): Int32; public;
begin
  var node: ^__struct_nk_rp_node := first;
  var x1: Int32 := (x0 + width);
  var min_y: Int32;
  var visited_width: Int32;
  var waste_area: Int32;
  assert(((first)^.x ≤ x0));
  assert((((node)^.next)^.x > x0));
  // we ended up handling this in the caller for efficiency
  assert(((node)^.x ≤ x0));
  min_y := 0;
  waste_area := 0;
  visited_width := 0;
  while ((node)^.x < x1) do begin
    if ((node)^.y > min_y) then begin
      // raise min_y higher. 
      //  we've accounted for all waste up to min_y, 
      //  but we'll now add more waste for everything we've visited
      waste_area := waste_area + (visited_width * ((node)^.y - min_y));
      min_y := (node)^.y;
      // the first time through, visited_width might be reduced
      if ((node)^.x < x0) then begin
        visited_width := visited_width + (((node)^.next)^.x - x0);
      end
      else begin
        visited_width := visited_width + (((node)^.next)^.x - (node)^.x);
      end;
    end
    else begin
      // add waste area
      var under_width: Int32 := (((node)^.next)^.x - (node)^.x);
      if ((under_width + visited_width) > width) then begin
        under_width := (width - visited_width);
      end;
      waste_area := waste_area + (under_width * (min_y - (node)^.y));
      visited_width := visited_width + under_width;
    end;
    node := (node)^.next;
  end;
  (pwaste)^ := waste_area;
  exit min_y;
end;

method nk_rp__skyline_find_best_pos(c: ^__struct_nk_rp_context; width: Int32; height: Int32): __struct_nk_rp__findresult; public;
begin
  var best_waste: Int32 := (1 shl 30);
  var best_x: Int32;
  var best_y: Int32 := (1 shl 30);
  var fr: __struct_nk_rp__findresult;
  var prev: ^^__struct_nk_rp_node;
  var node: ^__struct_nk_rp_node;
  var tail: ^__struct_nk_rp_node;
  var best: ^^__struct_nk_rp_node := 0;
  // align to multiple of c->align
  width := ((width + (c)^.align) - 1);
  width := width - (width mod (c)^.align);
  assert(((width mod (c)^.align) = 0));
  node := (c)^.active_head;
  prev := (@(c)^.active_head);
  while (((node)^.x + width) ≤ (c)^.width) do begin
    var y: Int32;
    var waste: Int32;
    y := nk_rp__skyline_find_min_y(c, node, (node)^.x, width, (@waste));
    // actually just want to test BL
    if ((c)^.heuristic = NK_RP_HEURISTIC_Skyline_BL_sortHeight) then begin
      // bottom left
      if (y < best_y) then begin
        best_y := y;
        best := prev;
      end;
    end
    else begin
      // best-fit
      if ((y + height) ≤ (c)^.height) then begin
        // can only use it if it first vertically
        if (Boolean((y < best_y)) or Boolean((Boolean((y = best_y)) and Boolean((waste < best_waste))))) then begin
          best_y := y;
          best_waste := waste;
          best := prev;
        end;
      end;
    end;
    prev := (@(node)^.next);
    node := (node)^.next;
  end;
  best_x := (if (best = 0) then (0) else (((best)^)^.x));
  // if doing best-fit (BF), we also have to try aligning right edge to each node position 
  //  
  //  e.g, if fitting 
  //  
  //      ____________________ 
  //     |____________________| 
  //  
  //             into 
  //  
  //    |                         | 
  //    |             ____________| 
  //    |____________| 
  //  
  //  then right-aligned reduces waste, but bottom-left BL is always chooses left-aligned 
  //  
  //  This makes BF take about 2x the time
  if ((c)^.heuristic = NK_RP_HEURISTIC_Skyline_BF_sortHeight) then begin
    tail := (c)^.active_head;
    node := (c)^.active_head;
    prev := (@(c)^.active_head);
    // find first node that's admissible
    while ((tail)^.x < width) do
      tail := (tail)^.next;
    while tail do begin
      var xpos: Int32 := ((tail)^.x - width);
      var y: Int32;
      var waste: Int32;
      assert((xpos ≥ 0));
      // find the left position that matches this
      while (((node)^.next)^.x ≤ xpos) do begin
        prev := (@(node)^.next);
        node := (node)^.next;
      end;
      assert((Boolean((((node)^.next)^.x > xpos)) and Boolean(((node)^.x ≤ xpos))));
      y := nk_rp__skyline_find_min_y(c, node, xpos, width, (@waste));
      if ((y + height) < (c)^.height) then begin
        if (y ≤ best_y) then begin
          if (Boolean((Boolean((y < best_y)) or Boolean((waste < best_waste)))) or Boolean((Boolean((waste = best_waste)) and Boolean((xpos < best_x))))) then begin
            best_x := xpos;
            assert((y ≤ best_y));
            best_y := y;
            best_waste := waste;
            best := prev;
          end;
        end;
      end;
      tail := (tail)^.next;
    end;
  end;
  fr.prev_link := best;
  fr.x := best_x;
  fr.y := best_y;
  exit fr;
end;

method nk_rp__skyline_pack_rectangle(context: ^__struct_nk_rp_context; width: Int32; height: Int32): __struct_nk_rp__findresult; public;
begin
  // find best position according to heuristic
  var res: __struct_nk_rp__findresult := nk_rp__skyline_find_best_pos(context, width, height);
  var node: ^__struct_nk_rp_node;
  var cur: ^__struct_nk_rp_node;
  // bail if: 
  //     1. it failed 
  //     2. the best node doesn't fit (we don't always check this) 
  //     3. we're out of memory
  if (Boolean((Boolean((res.prev_link = 0)) or Boolean(((res.y + height) > (context)^.height)))) or Boolean(((context)^.free_head = 0))) then begin
    res.prev_link := 0;
    exit res;
  end;
  // on success, create new node
  node := (context)^.free_head;
  (node)^.x := nk_rp_coord(res.x);
  (node)^.y := nk_rp_coord((res.y + height));
  (context)^.free_head := (node)^.next;
  // insert the new node into the right starting point, and 
  //  let 'cur' point to the remaining nodes needing to be 
  //  stitched back in
  cur := (res.prev_link)^;
  if ((cur)^.x < res.x) then begin
    // preserve the existing one, so start testing with the next one
    var next: ^__struct_nk_rp_node := (cur)^.next;
    (cur)^.next := node;
    cur := next;
  end
  else begin
    (res.prev_link)^ := node;
  end;
  // from here, traverse cur and free the nodes, until we get to one 
  //  that shouldn't be freed
  while (Boolean((cur)^.next) and Boolean((((cur)^.next)^.x ≤ (res.x + width)))) do begin
    var next: ^__struct_nk_rp_node := (cur)^.next;
    // move the current node to the free list
    (cur)^.next := (context)^.free_head;
    (context)^.free_head := cur;
    cur := next;
  end;
  // stitch the list back in
  (node)^.next := cur;
  if ((cur)^.x < (res.x + width)) then begin
    (cur)^.x := nk_rp_coord((res.x + width));
  end;
  exit res;
end;

method nk_rect_height_compare(a: ^Void; b: ^Void): Int32; public;
begin
  var p: ^__struct_nk_rp_rect := ^__struct_nk_rp_rect(a);
  var q: ^__struct_nk_rp_rect := ^__struct_nk_rp_rect(b);
  if ((p)^.h > (q)^.h) then begin
    exit -1;
  end;
  if ((p)^.h < (q)^.h) then begin
    exit 1;
  end;
  exit (if ((p)^.w > (q)^.w) then (-1) else (((p)^.w < (q)^.w)));
end;

method nk_rect_original_order(a: ^Void; b: ^Void): Int32; public;
begin
  var p: ^__struct_nk_rp_rect := ^__struct_nk_rp_rect(a);
  var q: ^__struct_nk_rp_rect := ^__struct_nk_rp_rect(b);
  exit (if ((p)^.was_packed < (q)^.was_packed) then (-1) else (((p)^.was_packed > (q)^.was_packed)));
end;

method nk_rp_qsort(&array: ^__struct_nk_rp_rect; len: UInt32; cmp: __fnptrtype22); public;
begin
  // iterative quick sort 
  //  defined: NK_MAX_SORT_STACK ()  64
  var right: UInt32;
  // iterative quick sort 
  //  defined: NK_MAX_SORT_STACK ()  64
  var left: UInt32 := 0;
  // iterative quick sort 
  //  defined: NK_MAX_SORT_STACK ()  64
  var stack: array[0..64 - 1] of UInt32;
  // iterative quick sort 
  //  defined: NK_MAX_SORT_STACK ()  64
  var pos: UInt32 := 0;
  var seed: UInt32 := (((len / 2) * 69069) + 1);
  begin
    // for loop: initializer
    // for loop: compare
    _looplabel0:;
    // for loop: body
    begin
      begin
        // for loop: initializer
        // for loop: compare
        _looplabel1:;
        if ((left + 1) < len) then begin
        end
        else begin
          goto _breaklabel1;
        end;
        // for loop: body
        begin
          var pivot: __struct_nk_rp_rect;
          var tmp: __struct_nk_rp_rect;
          if (pos = 64) then begin
            len := stack[(() -> begin
              var _tmp2 := 0;
              pos := _tmp2;
              exit _tmp2;
            end)()];
          end;
          pivot := &array[(left + (seed mod (len - left)))];
          seed := ((seed * 69069) + 1);
          stack[(() -> begin
            var _tmp3 := pos;
            pos := _tmp3 + 1;
            exit _tmp3;
          end)()] := len;
          begin
            // for loop: initializer
            right := (left - 1);
            // for loop: compare
            _looplabel4:;
            // for loop: body
            begin
              while (cmp((@&array[(() -> begin
                var _tmp5 := right + 1;
                right := _tmp5;
                exit _tmp5;
              end)()]), (@pivot)) < 0) do begin
              end;
              while (cmp((@pivot), (@&array[(() -> begin
                var _tmp6 := len - 1;
                len := _tmp6;
                exit _tmp6;
              end)()])) < 0) do begin
              end;
              if (right ≥ len) then begin
                goto _breaklabel4;
              end;
              tmp := &array[right];
              &array[right] := &array[len];
              &array[len] := tmp;
            end;
            _continuelabel4:;
            // for loop: increment/continue
            goto _looplabel4;
            // for loop: break
            _breaklabel4:;
          end;
        end;
        _continuelabel1:;
        // for loop: increment/continue
        len := len + 1;
        goto _looplabel1;
        // for loop: break
        _breaklabel1:;
      end;
      if (pos = 0) then begin
        goto _breaklabel0;
      end;
      left := len;
      len := stack[(() -> begin
        var _tmp7 := pos - 1;
        pos := _tmp7;
        exit _tmp7;
      end)()];
    end;
    _continuelabel0:;
    // for loop: increment/continue
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_rp_pack_rects(context: ^__struct_nk_rp_context; rects: ^__struct_nk_rp_rect; num_rects: Int32); public;
begin
  var i: Int32;
  // we use the 'was_packed' field internally to allow sorting/unsorting
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < num_rects) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      rects[i].was_packed := i;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  // sort according to heuristic
  nk_rp_qsort(rects, UInt32(num_rects), nk_rect_height_compare);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < num_rects) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    begin
      var fr: __struct_nk_rp__findresult := nk_rp__skyline_pack_rectangle(context, rects[i].w, rects[i].h);
      if fr.prev_link then begin
        rects[i].x := nk_rp_coord(fr.x);
        rects[i].y := nk_rp_coord(fr.y);
      end
      else begin
        rects[i].x := (() -> begin
          var _tmp2 := 65535;
          rects[i].y := _tmp2;
          exit _tmp2;
        end)();
      end;
    end;
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  // unsort
  nk_rp_qsort(rects, UInt32(num_rects), nk_rect_original_order);
  // set was_packed flags
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel3:;
    if (i < num_rects) then begin
    end
    else begin
      goto _breaklabel3;
    end;
    // for loop: body
    rects[i].was_packed := not Boolean((Boolean((rects[i].x = 65535)) and Boolean((rects[i].y = 65535))));
    _continuelabel3:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel3;
    // for loop: break
    _breaklabel3:;
  end;
end;

const NK_TT_vmove = ___anon4.NK_TT_vmove; public;
const NK_TT_vline = ___anon4.NK_TT_vline; public;
const NK_TT_vcurve = ___anon4.NK_TT_vcurve; public;
const NK_TT_PLATFORM_ID_UNICODE = ___anon5.NK_TT_PLATFORM_ID_UNICODE; public;
const NK_TT_PLATFORM_ID_MAC = ___anon5.NK_TT_PLATFORM_ID_MAC; public;
const NK_TT_PLATFORM_ID_ISO = ___anon5.NK_TT_PLATFORM_ID_ISO; public;
const NK_TT_PLATFORM_ID_MICROSOFT = ___anon5.NK_TT_PLATFORM_ID_MICROSOFT; public;
const NK_TT_UNICODE_EID_UNICODE_1_0 = ___anon6.NK_TT_UNICODE_EID_UNICODE_1_0; public;
const NK_TT_UNICODE_EID_UNICODE_1_1 = ___anon6.NK_TT_UNICODE_EID_UNICODE_1_1; public;
const NK_TT_UNICODE_EID_ISO_10646 = ___anon6.NK_TT_UNICODE_EID_ISO_10646; public;
const NK_TT_UNICODE_EID_UNICODE_2_0_BMP = ___anon6.NK_TT_UNICODE_EID_UNICODE_2_0_BMP; public;
const NK_TT_UNICODE_EID_UNICODE_2_0_FULL = ___anon6.NK_TT_UNICODE_EID_UNICODE_2_0_FULL; public;
const NK_TT_MS_EID_SYMBOL = ___anon7.NK_TT_MS_EID_SYMBOL; public;
const NK_TT_MS_EID_UNICODE_BMP = ___anon7.NK_TT_MS_EID_UNICODE_BMP; public;
const NK_TT_MS_EID_SHIFTJIS = ___anon7.NK_TT_MS_EID_SHIFTJIS; public;
const NK_TT_MS_EID_UNICODE_FULL = ___anon7.NK_TT_MS_EID_UNICODE_FULL; public;
const NK_TT_MAC_EID_ROMAN = ___anon8.NK_TT_MAC_EID_ROMAN; public;
const NK_TT_MAC_EID_ARABIC = ___anon8.NK_TT_MAC_EID_ARABIC; public;
const NK_TT_MAC_EID_JAPANESE = ___anon8.NK_TT_MAC_EID_JAPANESE; public;
const NK_TT_MAC_EID_HEBREW = ___anon8.NK_TT_MAC_EID_HEBREW; public;
const NK_TT_MAC_EID_CHINESE_TRAD = ___anon8.NK_TT_MAC_EID_CHINESE_TRAD; public;
const NK_TT_MAC_EID_GREEK = ___anon8.NK_TT_MAC_EID_GREEK; public;
const NK_TT_MAC_EID_KOREAN = ___anon8.NK_TT_MAC_EID_KOREAN; public;
const NK_TT_MAC_EID_RUSSIAN = ___anon8.NK_TT_MAC_EID_RUSSIAN; public;
const NK_TT_MS_LANG_ENGLISH = ___anon9.NK_TT_MS_LANG_ENGLISH; public;
const NK_TT_MS_LANG_ITALIAN = ___anon9.NK_TT_MS_LANG_ITALIAN; public;
const NK_TT_MS_LANG_CHINESE = ___anon9.NK_TT_MS_LANG_CHINESE; public;
const NK_TT_MS_LANG_JAPANESE = ___anon9.NK_TT_MS_LANG_JAPANESE; public;
const NK_TT_MS_LANG_DUTCH = ___anon9.NK_TT_MS_LANG_DUTCH; public;
const NK_TT_MS_LANG_KOREAN = ___anon9.NK_TT_MS_LANG_KOREAN; public;
const NK_TT_MS_LANG_FRENCH = ___anon9.NK_TT_MS_LANG_FRENCH; public;
const NK_TT_MS_LANG_RUSSIAN = ___anon9.NK_TT_MS_LANG_RUSSIAN; public;
const NK_TT_MS_LANG_GERMAN = ___anon9.NK_TT_MS_LANG_GERMAN; public;
const NK_TT_MS_LANG_SPANISH = ___anon9.NK_TT_MS_LANG_SPANISH; public;
const NK_TT_MS_LANG_HEBREW = ___anon9.NK_TT_MS_LANG_HEBREW; public;
const NK_TT_MS_LANG_SWEDISH = ___anon9.NK_TT_MS_LANG_SWEDISH; public;
const NK_TT_MAC_LANG_ENGLISH = ___anon10.NK_TT_MAC_LANG_ENGLISH; public;
const NK_TT_MAC_LANG_JAPANESE = ___anon10.NK_TT_MAC_LANG_JAPANESE; public;
const NK_TT_MAC_LANG_ARABIC = ___anon10.NK_TT_MAC_LANG_ARABIC; public;
const NK_TT_MAC_LANG_KOREAN = ___anon10.NK_TT_MAC_LANG_KOREAN; public;
const NK_TT_MAC_LANG_DUTCH = ___anon10.NK_TT_MAC_LANG_DUTCH; public;
const NK_TT_MAC_LANG_RUSSIAN = ___anon10.NK_TT_MAC_LANG_RUSSIAN; public;
const NK_TT_MAC_LANG_FRENCH = ___anon10.NK_TT_MAC_LANG_FRENCH; public;
const NK_TT_MAC_LANG_SPANISH = ___anon10.NK_TT_MAC_LANG_SPANISH; public;
const NK_TT_MAC_LANG_GERMAN = ___anon10.NK_TT_MAC_LANG_GERMAN; public;
const NK_TT_MAC_LANG_SWEDISH = ___anon10.NK_TT_MAC_LANG_SWEDISH; public;
const NK_TT_MAC_LANG_HEBREW = ___anon10.NK_TT_MAC_LANG_HEBREW; public;
const NK_TT_MAC_LANG_CHINESE_SIMPLIFIED = ___anon10.NK_TT_MAC_LANG_CHINESE_SIMPLIFIED; public;
const NK_TT_MAC_LANG_ITALIAN = ___anon10.NK_TT_MAC_LANG_ITALIAN; public;
const NK_TT_MAC_LANG_CHINESE_TRAD = ___anon10.NK_TT_MAC_LANG_CHINESE_TRAD; public;

// defined: nk_ttBYTE (p) (* (const nk_byte *) (p))
//  defined: nk_ttCHAR (p) (* (const char *) (p))
method nk_ttUSHORT(p: ^nk_byte): nk_ushort; public;
begin
  exit nk_ushort(((p[0] * 256) + p[1]));
end;

method nk_ttSHORT(p: ^nk_byte): nk_short; public;
begin
  exit nk_short(((p[0] * 256) + p[1]));
end;

method nk_ttULONG(p: ^nk_byte): nk_uint; public;
begin
  exit nk_uint(((((p[0] shl 24) + (p[1] shl 16)) + (p[2] shl 8)) + p[3]));
end;

method nk_tt__find_table(data: ^nk_byte; fontstart: nk_uint; tag: ^Byte): nk_uint; public;
begin
  // @OPTIMIZE: binary search
  var num_tables: nk_int := nk_ttUSHORT(((data + fontstart) + 4));
  var tabledir: nk_uint := (fontstart + 12);
  var i: nk_int;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < num_tables) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var loc: nk_uint := (tabledir + nk_uint((16 * i)));
      if (Boolean((Boolean((Boolean((((data + loc) + 0)[0] = tag[0])) and Boolean((((data + loc) + 0)[1] = tag[1])))) and Boolean((((data + loc) + 0)[2] = tag[2])))) and Boolean((((data + loc) + 0)[3] = tag[3]))) then begin
        exit nk_ttULONG(((data + loc) + 8));
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit 0;
end;

method nk_tt_InitFont(info: ^__struct_nk_tt_fontinfo; data2: ^Byte; fontstart: Int32): Int32; public;
begin
  var cmap: nk_uint;
  var t: nk_uint;
  var i: nk_int;
  var numTables: nk_int;
  var data: ^nk_byte := ^nk_byte(data2);
  (info)^.data := data;
  (info)^.fontstart := fontstart;
  cmap := nk_tt__find_table(data, nk_uint(fontstart), "cmap");
  // required
  (info)^.loca := Int32(nk_tt__find_table(data, nk_uint(fontstart), "loca"));
  // required
  (info)^.head := Int32(nk_tt__find_table(data, nk_uint(fontstart), "head"));
  // required
  (info)^.glyf := Int32(nk_tt__find_table(data, nk_uint(fontstart), "glyf"));
  // required
  (info)^.hhea := Int32(nk_tt__find_table(data, nk_uint(fontstart), "hhea"));
  // required
  (info)^.hmtx := Int32(nk_tt__find_table(data, nk_uint(fontstart), "hmtx"));
  // required
  (info)^.kern := Int32(nk_tt__find_table(data, nk_uint(fontstart), "kern"));
  // not required
  if (Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(cmap)) or Boolean(not Boolean((info)^.loca)))) or Boolean(not Boolean((info)^.head)))) or Boolean(not Boolean((info)^.glyf)))) or Boolean(not Boolean((info)^.hhea)))) or Boolean(not Boolean((info)^.hmtx))) then begin
    exit 0;
  end;
  t := nk_tt__find_table(data, nk_uint(fontstart), "maxp");
  if t then begin
    (info)^.numGlyphs := nk_ttUSHORT(((data + t) + 4));
  end
  else begin
    (info)^.numGlyphs := 65535;
  end;
  // find a cmap encoding table we understand *now* to avoid searching 
  //  later. (todo: could make this installable) 
  //  the same regardless of glyph.
  numTables := nk_ttUSHORT(((data + cmap) + 2));
  (info)^.index_map := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < numTables) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var encoding_record: nk_uint := ((cmap + 4) + (8 * nk_uint(i)));
      // find an encoding we understand:
      begin
        case nk_ttUSHORT((data + encoding_record)) of
          NK_TT_PLATFORM_ID_MICROSOFT: begin
              goto switch1_0;
            end;
          NK_TT_PLATFORM_ID_UNICODE: begin
              goto switch1_1;
            end;
          else begin
            goto switch1_default;
          end;
        end;
        goto _breaklabelswitch1;
        switch1_0:;
        begin
          case nk_ttUSHORT(((data + encoding_record) + 2)) of
            NK_TT_MS_EID_UNICODE_BMP: begin
                goto switch2_0;
              end;
            NK_TT_MS_EID_UNICODE_FULL: begin
                goto switch2_1;
              end;
            else begin
              goto switch2_default;
            end;
          end;
          goto _breaklabelswitch2;
          switch2_0:;
          switch2_1:;
          // MS/Unicode
          (info)^.index_map := Int32((cmap + nk_ttULONG(((data + encoding_record) + 4))));
          goto _breaklabelswitch2;
          switch2_default:;
          goto _breaklabelswitch2;
          _breaklabelswitch2:;
        end;
        goto _breaklabelswitch1;
        switch1_1:;
        // Mac/iOS has these 
        //  all the encodingIDs are unicode, so we don't bother to check it
        (info)^.index_map := Int32((cmap + nk_ttULONG(((data + encoding_record) + 4))));
        goto _breaklabelswitch1;
        switch1_default:;
        goto _breaklabelswitch1;
        _breaklabelswitch1:;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  if ((info)^.index_map = 0) then begin
    exit 0;
  end;
  (info)^.indexToLocFormat := nk_ttUSHORT(((data + (info)^.head) + 50));
  exit 1;
end;

method nk_tt_FindGlyphIndex(info: ^__struct_nk_tt_fontinfo; unicode_codepoint: Int32): Int32; public;
begin
  var data: ^nk_byte := (info)^.data;
  var index_map: nk_uint := nk_uint((info)^.index_map);
  var format: nk_ushort := nk_ttUSHORT(((data + index_map) + 0));
  if (format = 0) then begin
    // apple byte encoding
    var bytes: nk_int := nk_ttUSHORT(((data + index_map) + 2));
    if (unicode_codepoint < (bytes - 6)) then begin
      exit (^nk_byte((((data + index_map) + 6) + unicode_codepoint)))^;
    end;
    exit 0;
  end
  else begin
    if (format = 6) then begin
      var first: nk_uint := nk_ttUSHORT(((data + index_map) + 6));
      var count: nk_uint := nk_ttUSHORT(((data + index_map) + 8));
      if (Boolean((nk_uint(unicode_codepoint) ≥ first)) and Boolean((nk_uint(unicode_codepoint) < (first + count)))) then begin
        exit nk_ttUSHORT((((data + index_map) + 10) + ((unicode_codepoint - Int32(first)) * 2)));
      end;
      exit 0;
    end
    else begin
      if (format = 2) then begin
        assert(0);
        // @TODO: high-byte mapping for japanese/chinese/korean
        exit 0;
      end
      else begin
        if (format = 4) then begin
          // standard mapping for windows fonts: binary search collection of ranges
          var segcount: nk_ushort := (nk_ttUSHORT(((data + index_map) + 6)) shr 1);
          var searchRange: nk_ushort := (nk_ttUSHORT(((data + index_map) + 8)) shr 1);
          var entrySelector: nk_ushort := nk_ttUSHORT(((data + index_map) + 10));
          var rangeShift: nk_ushort := (nk_ttUSHORT(((data + index_map) + 12)) shr 1);
          // do a binary search of the segments
          var endCount: nk_uint := (index_map + 14);
          var search: nk_uint := endCount;
          if (unicode_codepoint > 65535) then begin
            exit 0;
          end;
          // they lie from endCount .. endCount + segCount 
          //  but searchRange is the nearest power of two, so...
          if (unicode_codepoint ≥ nk_ttUSHORT(((data + search) + (rangeShift * 2)))) then begin
            search := search + nk_uint((rangeShift * 2));
          end;
          // now decrement to bias correctly to find smallest
          search := search - 2;
          while entrySelector do begin
            var &end: nk_ushort;
            searchRange := searchRange shr 1;
            &end := nk_ttUSHORT(((data + search) + (searchRange * 2)));
            if (unicode_codepoint > &end) then begin
              search := search + nk_uint((searchRange * 2));
            end;
            entrySelector := entrySelector - 1;
          end;
          search := search + 2;
          begin
            var offset: nk_ushort;
            var start: nk_ushort;
            var item: nk_ushort := nk_ushort(((search - endCount) shr 1));
            assert((unicode_codepoint ≤ nk_ttUSHORT(((data + endCount) + (2 * item)))));
            start := nk_ttUSHORT((((((data + index_map) + 14) + (segcount * 2)) + 2) + (2 * item)));
            if (unicode_codepoint < start) then begin
              exit 0;
            end;
            offset := nk_ttUSHORT((((((data + index_map) + 14) + (segcount * 6)) + 2) + (2 * item)));
            if (offset = 0) then begin
              exit nk_ushort((unicode_codepoint + nk_ttSHORT((((((data + index_map) + 14) + (segcount * 4)) + 2) + (2 * item)))));
            end;
            exit nk_ttUSHORT((((((((data + offset) + ((unicode_codepoint - start) * 2)) + index_map) + 14) + (segcount * 6)) + 2) + (2 * item)));
          end;
        end
        else begin
          if (Boolean((format = 12)) or Boolean((format = 13))) then begin
            var ngroups: nk_uint := nk_ttULONG(((data + index_map) + 12));
            var low: nk_int;
            var high: nk_int;
            low := 0;
            high := nk_int(ngroups);
            // Binary search the right group.
            while (low < high) do begin
              var mid: nk_int := (low + ((high - low) shr 1));
              // rounds down, so low <= mid < high
              var start_char: nk_uint := nk_ttULONG((((data + index_map) + 16) + (mid * 12)));
              var end_char: nk_uint := nk_ttULONG(((((data + index_map) + 16) + (mid * 12)) + 4));
              if (nk_uint(unicode_codepoint) < start_char) then begin
                high := mid;
              end
              else begin
                if (nk_uint(unicode_codepoint) > end_char) then begin
                  low := (mid + 1);
                end
                else begin
                  var start_glyph: nk_uint := nk_ttULONG(((((data + index_map) + 16) + (mid * 12)) + 8));
                  if (format = 12) then begin
                    exit ((Int32(start_glyph) + Int32(unicode_codepoint)) - Int32(start_char));
                  end
                  else begin
                    // format == 13
                    exit Int32(start_glyph);
                  end;
                end;
              end;
            end;
            exit 0;
          end;
        end;
      end;
    end;
  end;
  // @TODO
  assert(0);
  exit 0;
end;

method nk_tt_setvertex(v: ^__struct_nk_tt_vertex; &type: nk_byte; x: nk_int; y: nk_int; cx: nk_int; cy: nk_int); public;
begin
  (v)^.type := &type;
  (v)^.x := nk_short(x);
  (v)^.y := nk_short(y);
  (v)^.cx := nk_short(cx);
  (v)^.cy := nk_short(cy);
end;

method nk_tt__GetGlyfOffset(info: ^__struct_nk_tt_fontinfo; glyph_index: Int32): Int32; public;
begin
  var g1: Int32;
  var g2: Int32;
  if (glyph_index ≥ (info)^.numGlyphs) then begin
    exit -1;
  end;
  // glyph index out of range
  if ((info)^.indexToLocFormat ≥ 2) then begin
    exit -1;
  end;
  // unknown index->glyph map format
  if ((info)^.indexToLocFormat = 0) then begin
    g1 := ((info)^.glyf + (nk_ttUSHORT((((info)^.data + (info)^.loca) + (glyph_index * 2))) * 2));
    g2 := ((info)^.glyf + (nk_ttUSHORT(((((info)^.data + (info)^.loca) + (glyph_index * 2)) + 2)) * 2));
  end
  else begin
    g1 := ((info)^.glyf + Int32(nk_ttULONG((((info)^.data + (info)^.loca) + (glyph_index * 4)))));
    g2 := ((info)^.glyf + Int32(nk_ttULONG(((((info)^.data + (info)^.loca) + (glyph_index * 4)) + 4))));
  end;
  exit (if (g1 = g2) then (-1) else (g1));
end;

method nk_tt_GetGlyphBox(info: ^__struct_nk_tt_fontinfo; glyph_index: Int32; x0: ^Int32; y0: ^Int32; x1: ^Int32; y1: ^Int32): Int32; public;
begin
  var g: Int32 := nk_tt__GetGlyfOffset(info, glyph_index);
  if (g < 0) then begin
    exit 0;
  end;
  if x0 then begin
    (x0)^ := nk_ttSHORT((((info)^.data + g) + 2));
  end;
  if y0 then begin
    (y0)^ := nk_ttSHORT((((info)^.data + g) + 4));
  end;
  if x1 then begin
    (x1)^ := nk_ttSHORT((((info)^.data + g) + 6));
  end;
  if y1 then begin
    (y1)^ := nk_ttSHORT((((info)^.data + g) + 8));
  end;
  exit 1;
end;

method nk_tt__close_shape(vertices: ^__struct_nk_tt_vertex; num_vertices: Int32; was_off: Int32; start_off: Int32; sx: nk_int; sy: nk_int; scx: nk_int; scy: nk_int; cx: nk_int; cy: nk_int): Int32; public;
begin
  if start_off then begin
    if was_off then begin
      nk_tt_setvertex((@vertices[(() -> begin
        var _tmp0 := num_vertices;
        num_vertices := _tmp0 + 1;
        exit _tmp0;
      end)()]), NK_TT_vcurve, ((cx + scx) shr 1), ((cy + scy) shr 1), cx, cy);
    end;
    nk_tt_setvertex((@vertices[(() -> begin
      var _tmp1 := num_vertices;
      num_vertices := _tmp1 + 1;
      exit _tmp1;
    end)()]), NK_TT_vcurve, sx, sy, scx, scy);
  end
  else begin
    if was_off then begin
      nk_tt_setvertex((@vertices[(() -> begin
        var _tmp2 := num_vertices;
        num_vertices := _tmp2 + 1;
        exit _tmp2;
      end)()]), NK_TT_vcurve, sx, sy, cx, cy);
    end
    else begin
      nk_tt_setvertex((@vertices[(() -> begin
        var _tmp3 := num_vertices;
        num_vertices := _tmp3 + 1;
        exit _tmp3;
      end)()]), NK_TT_vline, sx, sy, 0, 0);
    end;
  end;
  exit num_vertices;
end;

method nk_tt_GetGlyphShape(info: ^__struct_nk_tt_fontinfo; alloc: ^__struct_nk_allocator; glyph_index: Int32; pvertices: ^^__struct_nk_tt_vertex): Int32; public;
begin
  var numberOfContours: nk_short;
  var endPtsOfContours: ^nk_byte;
  var data: ^nk_byte := (info)^.data;
  var vertices: ^__struct_nk_tt_vertex := 0;
  var num_vertices: Int32 := 0;
  var g: Int32 := nk_tt__GetGlyfOffset(info, glyph_index);
  (pvertices)^ := 0;
  if (g < 0) then begin
    exit 0;
  end;
  numberOfContours := nk_ttSHORT((data + g));
  if (numberOfContours > 0) then begin
    var &flags: nk_byte := 0;
    var flagcount: nk_byte;
    var ins: nk_int;
    var i: nk_int;
    var j: nk_int := 0;
    var m: nk_int;
    var n: nk_int;
    var next_move: nk_int;
    var was_off: nk_int := 0;
    var off: nk_int;
    var start_off: nk_int := 0;
    var x: nk_int;
    var y: nk_int;
    var cx: nk_int;
    var cy: nk_int;
    var sx: nk_int;
    var sy: nk_int;
    var scx: nk_int;
    var scy: nk_int;
    var points: ^nk_byte;
    endPtsOfContours := ((data + g) + 10);
    ins := nk_ttUSHORT((((data + g) + 10) + (numberOfContours * 2)));
    points := (((((data + g) + 10) + (numberOfContours * 2)) + 2) + ins);
    n := (1 + nk_ttUSHORT(((endPtsOfContours + (numberOfContours * 2)) - 2)));
    m := (n + (2 * numberOfContours));
    // a loose bound on how many vertices we might need
    vertices := ^__struct_nk_tt_vertex((alloc)^.alloc((alloc)^.userdata, 0, (nk_size(m) * sizeOf(vertices[0]))));
    if (vertices = 0) then begin
      exit 0;
    end;
    next_move := 0;
    flagcount := 0;
    // in first pass, we load uninterpreted data into the allocated array 
    //  above, shifted to the end of the array so we won't overwrite it when 
    //  we create our final data starting from the front
    off := (m - n);
    // starting offset for uninterpreted data, regardless of how m ends up being calculated 
    //  first load flags
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < n) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        if (flagcount = 0) then begin
          &flags := ((() -> begin
            var _tmp1 := points;
            points := _tmp1 + 1;
            exit _tmp1;
          end)())^;
          if (&flags and 8) then begin
            flagcount := ((() -> begin
              var _tmp2 := points;
              points := _tmp2 + 1;
              exit _tmp2;
            end)())^;
          end;
        end
        else begin
          flagcount := flagcount - 1;
        end;
        vertices[(off + i)].type := &flags;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    // now load x coordinates
    x := 0;
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel3:;
      if (i < n) then begin
      end
      else begin
        goto _breaklabel3;
      end;
      // for loop: body
      begin
        &flags := vertices[(off + i)].type;
        if (&flags and 2) then begin
          var dx: nk_short := ((() -> begin
            var _tmp4 := points;
            points := _tmp4 + 1;
            exit _tmp4;
          end)())^;
          x := x + (if (&flags and 16) then (dx) else (-dx));
        end
        else begin
          if not Boolean((&flags and 16)) then begin
            x := (x + nk_short(((points[0] * 256) + points[1])));
            points := points + 2;
          end;
        end;
        vertices[(off + i)].x := nk_short(x);
      end;
      _continuelabel3:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel3;
      // for loop: break
      _breaklabel3:;
    end;
    // now load y coordinates
    y := 0;
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel7:;
      if (i < n) then begin
      end
      else begin
        goto _breaklabel7;
      end;
      // for loop: body
      begin
        &flags := vertices[(off + i)].type;
        if (&flags and 4) then begin
          var dy: nk_short := ((() -> begin
            var _tmp8 := points;
            points := _tmp8 + 1;
            exit _tmp8;
          end)())^;
          y := y + (if (&flags and 32) then (dy) else (-dy));
        end
        else begin
          if not Boolean((&flags and 32)) then begin
            y := (y + nk_short(((points[0] * 256) + points[1])));
            points := points + 2;
          end;
        end;
        vertices[(off + i)].y := nk_short(y);
      end;
      _continuelabel7:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel7;
      // for loop: break
      _breaklabel7:;
    end;
    // now convert them to our format
    num_vertices := 0;
    sx := (() -> begin
      var _tmp11 := (() -> begin
        var _tmp12 := (() -> begin
          var _tmp13 := (() -> begin
            var _tmp14 := (() -> begin
              var _tmp15 := 0;
              scy := _tmp15;
              exit _tmp15;
            end)();
            scx := _tmp14;
            exit _tmp14;
          end)();
          cy := _tmp13;
          exit _tmp13;
        end)();
        cx := _tmp12;
        exit _tmp12;
      end)();
      sy := _tmp11;
      exit _tmp11;
    end)();
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel16:;
      if (i < n) then begin
      end
      else begin
        goto _breaklabel16;
      end;
      // for loop: body
      begin
        &flags := vertices[(off + i)].type;
        x := nk_short(vertices[(off + i)].x);
        y := nk_short(vertices[(off + i)].y);
        if (next_move = i) then begin
          if (i ≠ 0) then begin
            num_vertices := nk_tt__close_shape(vertices, num_vertices, was_off, start_off, sx, sy, scx, scy, cx, cy);
          end;
          // now start the new one
          start_off := not Boolean((&flags and 1));
          if start_off then begin
            // if we start off with an off-curve point, then when we need to find a point on the curve 
            //  where we can start, and we need to save some state for when we wraparound.
            scx := x;
            scy := y;
            if not Boolean((vertices[((off + i) + 1)].type and 1)) then begin
              // next point is also a curve point, so interpolate an on-point curve
              sx := ((x + nk_int(vertices[((off + i) + 1)].x)) shr 1);
              sy := ((y + nk_int(vertices[((off + i) + 1)].y)) shr 1);
            end
            else begin
              // otherwise just use the next point as our start point
              sx := nk_int(vertices[((off + i) + 1)].x);
              sy := nk_int(vertices[((off + i) + 1)].y);
              i := i + 1;
            end;
          end
          else begin
            sx := x;
            sy := y;
          end;
          nk_tt_setvertex((@vertices[(() -> begin
            var _tmp17 := num_vertices;
            num_vertices := _tmp17 + 1;
            exit _tmp17;
          end)()]), NK_TT_vmove, sx, sy, 0, 0);
          was_off := 0;
          next_move := (1 + nk_ttUSHORT((endPtsOfContours + (j * 2))));
          j := j + 1;
        end
        else begin
          if not Boolean((&flags and 1)) then begin
            // if it's a curve
            if was_off then begin
              // two off-curve control points in a row means interpolate an on-curve midpoint
              nk_tt_setvertex((@vertices[(() -> begin
                var _tmp18 := num_vertices;
                num_vertices := _tmp18 + 1;
                exit _tmp18;
              end)()]), NK_TT_vcurve, ((cx + x) shr 1), ((cy + y) shr 1), cx, cy);
            end;
            cx := x;
            cy := y;
            was_off := 1;
          end
          else begin
            if was_off then begin
              nk_tt_setvertex((@vertices[(() -> begin
                var _tmp19 := num_vertices;
                num_vertices := _tmp19 + 1;
                exit _tmp19;
              end)()]), NK_TT_vcurve, x, y, cx, cy);
            end
            else begin
              nk_tt_setvertex((@vertices[(() -> begin
                var _tmp20 := num_vertices;
                num_vertices := _tmp20 + 1;
                exit _tmp20;
              end)()]), NK_TT_vline, x, y, 0, 0);
            end;
            was_off := 0;
          end;
        end;
      end;
      _continuelabel16:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel16;
      // for loop: break
      _breaklabel16:;
    end;
    num_vertices := nk_tt__close_shape(vertices, num_vertices, was_off, start_off, sx, sy, scx, scy, cx, cy);
  end
  else begin
    if (numberOfContours = -1) then begin
      // Compound shapes.
      var more: Int32 := 1;
      var comp: ^nk_byte := ((data + g) + 10);
      num_vertices := 0;
      vertices := 0;
      while more do begin
        var &flags: nk_ushort;
        var gidx: nk_ushort;
        var comp_num_verts: Int32 := 0;
        var i: Int32;
        var comp_verts: ^__struct_nk_tt_vertex := 0;
        var tmp: ^__struct_nk_tt_vertex := 0;
        var mtx: array[0..6 - 1] of Single := [1, 0, 0, 1, 0, 0];
        var m: Single;
        var n: Single;
        &flags := nk_ushort(nk_ttSHORT(comp));
        comp := comp + 2;
        gidx := nk_ushort(nk_ttSHORT(comp));
        comp := comp + 2;
        if (&flags and 2) then begin
          // XY values
          if (&flags and 1) then begin
            // shorts
            mtx[4] := nk_ttSHORT(comp);
            comp := comp + 2;
            mtx[5] := nk_ttSHORT(comp);
            comp := comp + 2;
          end
          else begin
            mtx[4] := (^Byte(comp))^;
            comp := comp + 1;
            mtx[5] := (^Byte(comp))^;
            comp := comp + 1;
          end;
        end
        else begin
          // @TODO handle matching point
          assert(0);
        end;
        if (&flags and (1 shl 3)) then begin
          // WE_HAVE_A_SCALE
          mtx[0] := (() -> begin
            var _tmp27 := (nk_ttSHORT(comp) / 16384.0);
            mtx[3] := _tmp27;
            exit _tmp27;
          end)();
          comp := comp + 2;
          mtx[1] := (() -> begin
            var _tmp29 := 0;
            mtx[2] := _tmp29;
            exit _tmp29;
          end)();
        end
        else begin
          if (&flags and (1 shl 6)) then begin
            // WE_HAVE_AN_X_AND_YSCALE
            mtx[0] := (nk_ttSHORT(comp) / 16384.0);
            comp := comp + 2;
            mtx[1] := (() -> begin
              var _tmp31 := 0;
              mtx[2] := _tmp31;
              exit _tmp31;
            end)();
            mtx[3] := (nk_ttSHORT(comp) / 16384.0);
            comp := comp + 2;
          end
          else begin
            if (&flags and (1 shl 7)) then begin
              // WE_HAVE_A_TWO_BY_TWO
              mtx[0] := (nk_ttSHORT(comp) / 16384.0);
              comp := comp + 2;
              mtx[1] := (nk_ttSHORT(comp) / 16384.0);
              comp := comp + 2;
              mtx[2] := (nk_ttSHORT(comp) / 16384.0);
              comp := comp + 2;
              mtx[3] := (nk_ttSHORT(comp) / 16384.0);
              comp := comp + 2;
            end;
          end;
        end;
        // Find transformation scales.
        m := Single(nk_sqrt(((mtx[0] * mtx[0]) + (mtx[1] * mtx[1]))));
        n := Single(nk_sqrt(((mtx[2] * mtx[2]) + (mtx[3] * mtx[3]))));
        // Get indexed glyph.
        comp_num_verts := nk_tt_GetGlyphShape(info, alloc, gidx, (@comp_verts));
        if (comp_num_verts > 0) then begin
          // Transform vertices.
          begin
            // for loop: initializer
            i := 0;
            // for loop: compare
            _looplabel37:;
            if (i < comp_num_verts) then begin
            end
            else begin
              goto _breaklabel37;
            end;
            // for loop: body
            begin
              var v: ^__struct_nk_tt_vertex := (@comp_verts[i]);
              var x: Int16;
              var y: Int16;
              x := (v)^.x;
              y := (v)^.y;
              (v)^.x := Int16((m * (((mtx[0] * x) + (mtx[2] * y)) + mtx[4])));
              (v)^.y := Int16((n * (((mtx[1] * x) + (mtx[3] * y)) + mtx[5])));
              x := (v)^.cx;
              y := (v)^.cy;
              (v)^.cx := Int16((m * (((mtx[0] * x) + (mtx[2] * y)) + mtx[4])));
              (v)^.cy := Int16((n * (((mtx[1] * x) + (mtx[3] * y)) + mtx[5])));
            end;
            _continuelabel37:;
            // for loop: increment/continue
            i := i + 1;
            goto _looplabel37;
            // for loop: break
            _breaklabel37:;
          end;
          // Append vertices.
          tmp := ^__struct_nk_tt_vertex((alloc)^.alloc((alloc)^.userdata, 0, (nk_size((num_vertices + comp_num_verts)) * sizeOf(__struct_nk_tt_vertex))));
          if not Boolean(tmp) then begin
            if vertices then begin
              (alloc)^.free((alloc)^.userdata, vertices);
            end;
            if comp_verts then begin
              (alloc)^.free((alloc)^.userdata, comp_verts);
            end;
            exit 0;
          end;
          if (num_vertices > 0) then begin
            memcpy(tmp, vertices, (nk_size(num_vertices) * sizeOf(__struct_nk_tt_vertex)));
          end;
          memcpy((tmp + num_vertices), comp_verts, (nk_size(comp_num_verts) * sizeOf(__struct_nk_tt_vertex)));
          if vertices then begin
            (alloc)^.free((alloc)^.userdata, vertices);
          end;
          vertices := tmp;
          (alloc)^.free((alloc)^.userdata, comp_verts);
          num_vertices := num_vertices + comp_num_verts;
        end;
        // More components ?
        more := (&flags and (1 shl 5));
      end;
    end
    else begin
      if (numberOfContours < 0) then begin
        // @TODO other compound variations?
        assert(0);
      end
      else begin
      end;
    end;
  end;
  (pvertices)^ := vertices;
  exit num_vertices;
end;

method nk_tt_GetGlyphHMetrics(info: ^__struct_nk_tt_fontinfo; glyph_index: Int32; advanceWidth: ^Int32; leftSideBearing: ^Int32); public;
begin
  var numOfLongHorMetrics: nk_ushort := nk_ttUSHORT((((info)^.data + (info)^.hhea) + 34));
  if (glyph_index < numOfLongHorMetrics) then begin
    if advanceWidth then begin
      (advanceWidth)^ := nk_ttSHORT((((info)^.data + (info)^.hmtx) + (4 * glyph_index)));
    end;
    if leftSideBearing then begin
      (leftSideBearing)^ := nk_ttSHORT(((((info)^.data + (info)^.hmtx) + (4 * glyph_index)) + 2));
    end;
  end
  else begin
    if advanceWidth then begin
      (advanceWidth)^ := nk_ttSHORT((((info)^.data + (info)^.hmtx) + (4 * (numOfLongHorMetrics - 1))));
    end;
    if leftSideBearing then begin
      (leftSideBearing)^ := nk_ttSHORT(((((info)^.data + (info)^.hmtx) + (4 * numOfLongHorMetrics)) + (2 * (glyph_index - numOfLongHorMetrics))));
    end;
  end;
end;

method nk_tt_GetFontVMetrics(info: ^__struct_nk_tt_fontinfo; ascent: ^Int32; descent: ^Int32; lineGap: ^Int32); public;
begin
  if ascent then begin
    (ascent)^ := nk_ttSHORT((((info)^.data + (info)^.hhea) + 4));
  end;
  if descent then begin
    (descent)^ := nk_ttSHORT((((info)^.data + (info)^.hhea) + 6));
  end;
  if lineGap then begin
    (lineGap)^ := nk_ttSHORT((((info)^.data + (info)^.hhea) + 8));
  end;
end;

method nk_tt_ScaleForPixelHeight(info: ^__struct_nk_tt_fontinfo; height: Single): Single; public;
begin
  var fheight: Int32 := (nk_ttSHORT((((info)^.data + (info)^.hhea) + 4)) - nk_ttSHORT((((info)^.data + (info)^.hhea) + 6)));
  exit (Single(height) / Single(fheight));
end;

method nk_tt_ScaleForMappingEmToPixels(info: ^__struct_nk_tt_fontinfo; pixels: Single): Single; public;
begin
  var unitsPerEm: Int32 := nk_ttUSHORT((((info)^.data + (info)^.head) + 18));
  exit (pixels / Single(unitsPerEm));
end;

// -------------------------------------------------------------
//  *            antialiasing software rasterizer
//  * --------------------------------------------------------------
method nk_tt_GetGlyphBitmapBoxSubpixel(font: ^__struct_nk_tt_fontinfo; glyph: Int32; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; ix0: ^Int32; iy0: ^Int32; ix1: ^Int32; iy1: ^Int32); public;
begin
  var x0: Int32;
  var y0: Int32;
  var x1: Int32;
  var y1: Int32;
  if not Boolean(nk_tt_GetGlyphBox(font, glyph, (@x0), (@y0), (@x1), (@y1))) then begin
    // e.g. space character
    if ix0 then begin
      (ix0)^ := 0;
    end;
    if iy0 then begin
      (iy0)^ := 0;
    end;
    if ix1 then begin
      (ix1)^ := 0;
    end;
    if iy1 then begin
      (iy1)^ := 0;
    end;
  end
  else begin
    // move to integral bboxes (treating pixels as little squares, what pixels get touched)?
    if ix0 then begin
      (ix0)^ := nk_ifloorf(((Single(x0) * scale_x) + shift_x));
    end;
    if iy0 then begin
      (iy0)^ := nk_ifloorf(((Single(-y1) * scale_y) + shift_y));
    end;
    if ix1 then begin
      (ix1)^ := nk_iceilf(((Single(x1) * scale_x) + shift_x));
    end;
    if iy1 then begin
      (iy1)^ := nk_iceilf(((Single(-y0) * scale_y) + shift_y));
    end;
  end;
end;

method nk_tt_GetGlyphBitmapBox(font: ^__struct_nk_tt_fontinfo; glyph: Int32; scale_x: Single; scale_y: Single; ix0: ^Int32; iy0: ^Int32; ix1: ^Int32; iy1: ^Int32); public;
begin
  nk_tt_GetGlyphBitmapBoxSubpixel(font, glyph, scale_x, scale_y, 0.0, 0.0, ix0, iy0, ix1, iy1);
end;

// -------------------------------------------------------------
//  *                          Rasterizer
//  * --------------------------------------------------------------
method nk_tt__hheap_alloc(hh: ^__struct_nk_tt__hheap; size: nk_size): ^Void; public;
begin
  if (hh)^.first_free then begin
    var p: ^Void := (hh)^.first_free;
    (hh)^.first_free := (^^Void(p))^;
    exit p;
  end
  else begin
    if ((hh)^.num_remaining_in_head_chunk = 0) then begin
      var count: Int32 := (if (size < 32) then (2000) else ((if (size < 128) then (800) else (100))));
      var c: ^__struct_nk_tt__hheap_chunk := ^__struct_nk_tt__hheap_chunk((hh)^.alloc.alloc((hh)^.alloc.userdata, 0, (sizeOf(__struct_nk_tt__hheap_chunk) + (size * nk_size(count)))));
      if (c = 0) then begin
        exit 0;
      end;
      (c)^.next := (hh)^.head;
      (hh)^.head := c;
      (hh)^.num_remaining_in_head_chunk := count;
    end;
    (hh)^.num_remaining_in_head_chunk := (hh)^.num_remaining_in_head_chunk - 1;
    exit (^Byte((hh)^.head) + (size * nk_size((hh)^.num_remaining_in_head_chunk)));
  end;
end;

method nk_tt__hheap_free(hh: ^__struct_nk_tt__hheap; p: ^Void); public;
begin
  (^^Void(p))^ := (hh)^.first_free;
  (hh)^.first_free := p;
end;

method nk_tt__hheap_cleanup(hh: ^__struct_nk_tt__hheap); public;
begin
  var c: ^__struct_nk_tt__hheap_chunk := (hh)^.head;
  while c do begin
    var n: ^__struct_nk_tt__hheap_chunk := (c)^.next;
    (hh)^.alloc.free((hh)^.alloc.userdata, c);
    c := n;
  end;
end;

method nk_tt__new_active(hh: ^__struct_nk_tt__hheap; e: ^__struct_nk_tt__edge; off_x: Int32; start_point: Single): ^__struct_nk_tt__active_edge; public;
begin
  var z: ^__struct_nk_tt__active_edge := ^__struct_nk_tt__active_edge(nk_tt__hheap_alloc(hh, sizeOf((z)^)));
  var dxdy: Single := (((e)^.x1 - (e)^.x0) / ((e)^.y1 - (e)^.y0));
  // STBTT_assert(e->y0 <= start_point);
  if not Boolean(z) then begin
    exit z;
  end;
  (z)^.fdx := dxdy;
  (z)^.fdy := (if (dxdy ≠ 0) then ((1 / dxdy)) else (0));
  (z)^.fx := ((e)^.x0 + (dxdy * (start_point - (e)^.y0)));
  (z)^.fx := (z)^.fx - Single(off_x);
  (z)^.direction := (if (e)^.invert then (1.0) else (-1.0));
  (z)^.sy := (e)^.y0;
  (z)^.ey := (e)^.y1;
  (z)^.next := 0;
  exit z;
end;

method nk_tt__handle_clipped_edge(scanline: ^Single; x: Int32; e: ^__struct_nk_tt__active_edge; x0: Single; y0: Single; x1: Single; y1: Single); public;
begin
  if (y0 = y1) then begin
    exit;
  end;
  assert((y0 < y1));
  assert(((e)^.sy ≤ (e)^.ey));
  if (y0 > (e)^.ey) then begin
    exit;
  end;
  if (y1 < (e)^.sy) then begin
    exit;
  end;
  if (y0 < (e)^.sy) then begin
    x0 := x0 + (((x1 - x0) * ((e)^.sy - y0)) / (y1 - y0));
    y0 := (e)^.sy;
  end;
  if (y1 > (e)^.ey) then begin
    x1 := x1 + (((x1 - x0) * ((e)^.ey - y1)) / (y1 - y0));
    y1 := (e)^.ey;
  end;
  if (x0 = x) then begin
    assert((x1 ≤ (x + 1)));
  end
  else begin
    if (x0 = (x + 1)) then begin
      assert((x1 ≥ x));
    end
    else begin
      if (x0 ≤ x) then begin
        assert((x1 ≤ x));
      end
      else begin
        if (x0 ≥ (x + 1)) then begin
          assert((x1 ≥ (x + 1)));
        end
        else begin
          assert((Boolean((x1 ≥ x)) and Boolean((x1 ≤ (x + 1)))));
        end;
      end;
    end;
  end;
  if (Boolean((x0 ≤ x)) and Boolean((x1 ≤ x))) then begin
    scanline[x] := scanline[x] + ((e)^.direction * (y1 - y0));
  end
  else begin
    if (Boolean((x0 ≥ (x + 1))) and Boolean((x1 ≥ (x + 1)))) then begin
    end
    else begin
      assert((Boolean((Boolean((Boolean((x0 ≥ x)) and Boolean((x0 ≤ (x + 1))))) and Boolean((x1 ≥ x)))) and Boolean((x1 ≤ (x + 1)))));
      // coverage = 1 - average x position
      scanline[x] := scanline[x] + ((Single((e)^.direction) * Single((y1 - y0))) * (1.0 - (((x0 - Single(x)) + (x1 - Single(x))) / 2.0)));
    end;
  end;
end;

method nk_tt__fill_active_edges_new(scanline: ^Single; scanline_fill: ^Single; len: Int32; e: ^__struct_nk_tt__active_edge; y_top: Single); public;
begin
  var y_bottom: Single := (y_top + 1);
  while e do begin
    // brute force every pixel 
    //  compute intersection points with top & bottom
    assert(((e)^.ey ≥ y_top));
    if ((e)^.fdx = 0) then begin
      var x0: Single := (e)^.fx;
      if (x0 < len) then begin
        if (x0 ≥ 0) then begin
          nk_tt__handle_clipped_edge(scanline, Int32(x0), e, x0, y_top, x0, y_bottom);
          nk_tt__handle_clipped_edge((scanline_fill - 1), (Int32(x0) + 1), e, x0, y_top, x0, y_bottom);
        end
        else begin
          nk_tt__handle_clipped_edge((scanline_fill - 1), 0, e, x0, y_top, x0, y_bottom);
        end;
      end;
    end
    else begin
      var x0: Single := (e)^.fx;
      var dx: Single := (e)^.fdx;
      var xb: Single := (x0 + dx);
      var x_top: Single;
      var x_bottom: Single;
      var y0: Single;
      var y1: Single;
      var dy: Single := (e)^.fdy;
      assert((Boolean(((e)^.sy ≤ y_bottom)) and Boolean(((e)^.ey ≥ y_top))));
      // compute endpoints of line segment clipped to this scanline (if the 
      //  line segment starts on this scanline. x0 is the intersection of the 
      //  line with y_top, but that may be off the line segment.
      if ((e)^.sy > y_top) then begin
        x_top := (x0 + (dx * ((e)^.sy - y_top)));
        y0 := (e)^.sy;
      end
      else begin
        x_top := x0;
        y0 := y_top;
      end;
      if ((e)^.ey < y_bottom) then begin
        x_bottom := (x0 + (dx * ((e)^.ey - y_top)));
        y1 := (e)^.ey;
      end
      else begin
        x_bottom := xb;
        y1 := y_bottom;
      end;
      if (Boolean((Boolean((Boolean((x_top ≥ 0)) and Boolean((x_bottom ≥ 0)))) and Boolean((x_top < len)))) and Boolean((x_bottom < len))) then begin
        // from here on, we don't have to range check x values
        if (Int32(x_top) = Int32(x_bottom)) then begin
          var height: Single;
          // simple case, only spans one pixel
          var x: Int32 := Int32(x_top);
          height := (y1 - y0);
          assert((Boolean((x ≥ 0)) and Boolean((x < len))));
          scanline[x] := scanline[x] + (((e)^.direction * (1.0 - (((Single(x_top) - Single(x)) + (Single(x_bottom) - Single(x))) / 2.0))) * Single(height));
          scanline_fill[x] := scanline_fill[x] + ((e)^.direction * Single(height));
        end
        else begin
          var x: Int32;
          var x1: Int32;
          var x2: Int32;
          var y_crossing: Single;
          var &step: Single;
          var sign: Single;
          var area: Single;
          // covers 2+ pixels
          if (x_top > x_bottom) then begin
            // flip scanline vertically; signed area is the same
            var t: Single;
            y0 := (y_bottom - (y0 - y_top));
            y1 := (y_bottom - (y1 - y_top));
            t := y0;
            y0 := y1;
            y1 := t;
            t := x_bottom;
            x_bottom := x_top;
            x_top := t;
            dx := -dx;
            dy := -dy;
            t := x0;
            x0 := xb;
            xb := t;
          end;
          x1 := Int32(x_top);
          x2 := Int32(x_bottom);
          // compute intersection with y axis at x1+1
          y_crossing := ((((Single(x1) + 1) - Single(x0)) * Single(dy)) + Single(y_top));
          sign := (e)^.direction;
          // area of the rectangle covered from y0..y_crossing
          area := (sign * (y_crossing - y0));
          // area of the triangle (x_top,y0), (x+1,y0), (x+1,y_crossing)
          scanline[x1] := scanline[x1] + (area * (1.0 - ((Single((Single(x_top) - Single(x1))) + Single(((x1 + 1) - x1))) / 2.0)));
          &step := (sign * dy);
          begin
            // for loop: initializer
            x := (x1 + 1);
            // for loop: compare
            _looplabel3:;
            if (x < x2) then begin
            end
            else begin
              goto _breaklabel3;
            end;
            // for loop: body
            begin
              scanline[x] := scanline[x] + (area + (&step / 2));
              area := area + &step;
            end;
            _continuelabel3:;
            // for loop: increment/continue
            x := x + 1;
            goto _looplabel3;
            // for loop: break
            _breaklabel3:;
          end;
          y_crossing := y_crossing + (Single(dy) * Single((x2 - (x1 + 1))));
          scanline[x2] := scanline[x2] + (area + ((sign * (1.0 - ((Single((x2 - x2)) + (Single(x_bottom) - Single(x2))) / 2.0))) * (y1 - y_crossing)));
          scanline_fill[x2] := scanline_fill[x2] + (sign * (y1 - y0));
        end;
      end
      else begin
        // if edge goes outside of box we're drawing, we require 
        //  clipping logic. since this does not match the intended use 
        //  of this library, we use a different, very slow brute 
        //  force implementation
        var x: Int32;
        begin
          // for loop: initializer
          x := 0;
          // for loop: compare
          _looplabel9:;
          if (x < len) then begin
          end
          else begin
            goto _breaklabel9;
          end;
          // for loop: body
          begin
            // cases: 
            //  
            //  there can be up to two intersections with the pixel. any intersection 
            //  with left or right edges can be handled by splitting into two (or three) 
            //  regions. intersections with top & bottom do not necessitate case-wise logic. 
            //  
            //  the old way of doing this found the intersections with the left & right edges, 
            //  then used some simple logic to produce up to three segments in sorted order 
            //  from top-to-bottom. however, this had a problem: if an x edge was epsilon 
            //  across the x border, then the corresponding y position might not be distinct 
            //  from the other y segment, and it might ignored as an empty segment. to avoid 
            //  that, we need to explicitly produce segments based on x positions. 
            //  rename variables to clear pairs
            var ya: Single := y_top;
            var x1: Single := Single(x);
            var x2: Single := Single((x + 1));
            var x3: Single := xb;
            var y3: Single := y_bottom;
            var yb: Single;
            var y2: Single;
            yb := (((Single(x) - x0) / dx) + y_top);
            y2 := ((((Single(x) + 1) - x0) / dx) + y_top);
            if (Boolean((x0 < x1)) and Boolean((x3 > x2))) then begin
              // three segments descending down-right
              nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x1, yb);
              nk_tt__handle_clipped_edge(scanline, x, e, x1, yb, x2, y2);
              nk_tt__handle_clipped_edge(scanline, x, e, x2, y2, x3, y3);
            end
            else begin
              if (Boolean((x3 < x1)) and Boolean((x0 > x2))) then begin
                // three segments descending down-left
                nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x2, y2);
                nk_tt__handle_clipped_edge(scanline, x, e, x2, y2, x1, yb);
                nk_tt__handle_clipped_edge(scanline, x, e, x1, yb, x3, y3);
              end
              else begin
                if (Boolean((x0 < x1)) and Boolean((x3 > x1))) then begin
                  // two segments across x, down-right
                  nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x1, yb);
                  nk_tt__handle_clipped_edge(scanline, x, e, x1, yb, x3, y3);
                end
                else begin
                  if (Boolean((x3 < x1)) and Boolean((x0 > x1))) then begin
                    // two segments across x, down-left
                    nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x1, yb);
                    nk_tt__handle_clipped_edge(scanline, x, e, x1, yb, x3, y3);
                  end
                  else begin
                    if (Boolean((x0 < x2)) and Boolean((x3 > x2))) then begin
                      // two segments across x+1, down-right
                      nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x2, y2);
                      nk_tt__handle_clipped_edge(scanline, x, e, x2, y2, x3, y3);
                    end
                    else begin
                      if (Boolean((x3 < x2)) and Boolean((x0 > x2))) then begin
                        // two segments across x+1, down-left
                        nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x2, y2);
                        nk_tt__handle_clipped_edge(scanline, x, e, x2, y2, x3, y3);
                      end
                      else begin
                        // one segment
                        nk_tt__handle_clipped_edge(scanline, x, e, x0, ya, x3, y3);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
          _continuelabel9:;
          // for loop: increment/continue
          x := x + 1;
          goto _looplabel9;
          // for loop: break
          _breaklabel9:;
        end;
      end;
    end;
    e := (e)^.next;
  end;
end;

method nk_tt__rasterize_sorted_edges(&result: ^__struct_nk_tt__bitmap; e: ^__struct_nk_tt__edge; n: Int32; vsubsample: Int32; off_x: Int32; off_y: Int32; alloc: ^__struct_nk_allocator); public;
begin
  // directly AA rasterize edges w/o supersampling
  var hh: __struct_nk_tt__hheap;
  var active: ^__struct_nk_tt__active_edge := 0;
  var y: Int32;
  var j: Int32 := 0;
  var i: Int32;
  var scanline_data: array[0..129 - 1] of Single;
  var scanline: ^Single;
  var scanline2: ^Single;
  nk_zero((@hh), sizeOf(hh));
  hh.alloc := (alloc)^;
  if ((&result)^.w > 64) then begin
    scanline := ^Single((alloc)^.alloc((alloc)^.userdata, 0, (nk_size((((&result)^.w * 2) + 1)) * sizeOf(Single))));
  end
  else begin
    scanline := scanline_data;
  end;
  scanline2 := (scanline + (&result)^.w);
  y := off_y;
  e[n].y0 := (Single((off_y + (&result)^.h)) + 1);
  while (j < (&result)^.h) do begin
    // find center of pixel for this scanline
    var scan_y_top: Single := (Single(y) + 0.0);
    var scan_y_bottom: Single := (Single(y) + 1.0);
    var &step: ^^__struct_nk_tt__active_edge := (@active);
    memset(scanline, 0, (nk_size((&result)^.w) * sizeOf(scanline[0])));
    memset(scanline2, 0, (nk_size(((&result)^.w + 1)) * sizeOf(scanline[0])));
    // update all active edges; 
    //  remove all active edges that terminate before the top of this scanline
    while (&step)^ do begin
      var z: ^__struct_nk_tt__active_edge := (&step)^;
      if ((z)^.ey ≤ scan_y_top) then begin
        (&step)^ := (z)^.next;
        // delete from list
        assert((z)^.direction);
        (z)^.direction := 0;
        nk_tt__hheap_free((@hh), z);
      end
      else begin
        &step := (@((&step)^)^.next);
      end;
    end;
    // insert all edges that start before the bottom of this scanline
    while ((e)^.y0 ≤ scan_y_bottom) do begin
      if ((e)^.y0 ≠ (e)^.y1) then begin
        var z: ^__struct_nk_tt__active_edge := nk_tt__new_active((@hh), e, off_x, scan_y_top);
        if (z ≠ 0) then begin
          assert(((z)^.ey ≥ scan_y_top));
          // insert at front
          (z)^.next := active;
          active := z;
        end;
      end;
      e := e + 1;
    end;
    // now process all active edges
    if active then begin
      nk_tt__fill_active_edges_new(scanline, (scanline2 + 1), (&result)^.w, active, scan_y_top);
    end;
    begin
      var sum: Single := 0;
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel0:;
        if (i < (&result)^.w) then begin
        end
        else begin
          goto _breaklabel0;
        end;
        // for loop: body
        begin
          var k: Single;
          var m: Int32;
          sum := sum + scanline2[i];
          k := (scanline[i] + sum);
          k := ((Single((if (k < 0) then (-k) else (k))) * 255.0) + 0.5);
          m := Int32(k);
          if (m > 255) then begin
            m := 255;
          end;
          (&result)^.pixels[((j * (&result)^.stride) + i)] := Byte(m);
        end;
        _continuelabel0:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel0;
        // for loop: break
        _breaklabel0:;
      end;
    end;
    // advance all the edges
    &step := (@active);
    while (&step)^ do begin
      var z: ^__struct_nk_tt__active_edge := (&step)^;
      (z)^.fx := (z)^.fx + (z)^.fdx;
      // advance to position for current scanline
      &step := (@((&step)^)^.next);
    end;
    y := y + 1;
    j := j + 1;
  end;
  nk_tt__hheap_cleanup((@hh));
  if (scanline ≠ scanline_data) then begin
    (alloc)^.free((alloc)^.userdata, scanline);
  end;
end;

method nk_tt__sort_edges_ins_sort(p: ^__struct_nk_tt__edge; n: Int32); public;
begin
  var i: Int32;
  var j: Int32;
  // defined: NK_TT__COMPARE (a,b) ((a)->y0 < (b)->y0)
  begin
    // for loop: initializer
    i := 1;
    // for loop: compare
    _looplabel0:;
    if (i < n) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var t: __struct_nk_tt__edge := p[i];
      var a: ^__struct_nk_tt__edge := (@t);
      j := i;
      while (j > 0) do begin
        var b: ^__struct_nk_tt__edge := (@p[(j - 1)]);
        var c: Int32 := ((a)^.y0 < (b)^.y0);
        if not Boolean(c) then begin
          break;
        end;
        p[j] := p[(j - 1)];
        j := j - 1;
      end;
      if (i ≠ j) then begin
        p[j] := t;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_tt__sort_edges_quicksort(p: ^__struct_nk_tt__edge; n: Int32); public;
begin
  // threshold for transitioning to insertion sort
  while (n > 12) do begin
    var t: __struct_nk_tt__edge;
    var c01: Int32;
    var c12: Int32;
    var c: Int32;
    var m: Int32;
    var i: Int32;
    var j: Int32;
    // compute median of three
    m := (n shr 1);
    c01 := (((@p[0]))^.y0 < ((@p[m]))^.y0);
    c12 := (((@p[m]))^.y0 < ((@p[(n - 1)]))^.y0);
    // if 0 >= mid >= end, or 0 < mid < end, then use mid
    if (c01 ≠ c12) then begin
      // otherwise, we'll need to swap something else to middle
      var z: Int32;
      c := (((@p[0]))^.y0 < ((@p[(n - 1)]))^.y0);
      // 0>mid && mid<n:  0>n => n; 0<n => 0 
      //  0<mid && mid>n:  0>n => 0; 0<n => n
      z := (if (c = c12) then (0) else ((n - 1)));
      t := p[z];
      p[z] := p[m];
      p[m] := t;
    end;
    // now p[m] is the median-of-three 
    //  swap it to the beginning so it won't move around
    t := p[0];
    p[0] := p[m];
    p[m] := t;
    // partition loop
    i := 1;
    j := (n - 1);
    begin
      // for loop: initializer
      // for loop: compare
      _looplabel0:;
      // for loop: body
      begin
        // handling of equality is crucial here 
        //  for sentinels & efficiency with duplicates
        begin
          // for loop: initializer
          // for loop: compare
          _looplabel1:;
          // for loop: body
          begin
            if not Boolean((((@p[i]))^.y0 < ((@p[0]))^.y0)) then begin
              goto _breaklabel1;
            end;
          end;
          _continuelabel1:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel1;
          // for loop: break
          _breaklabel1:;
        end;
        begin
          // for loop: initializer
          // for loop: compare
          _looplabel2:;
          // for loop: body
          begin
            if not Boolean((((@p[0]))^.y0 < ((@p[j]))^.y0)) then begin
              goto _breaklabel2;
            end;
          end;
          _continuelabel2:;
          // for loop: increment/continue
          j := j - 1;
          goto _looplabel2;
          // for loop: break
          _breaklabel2:;
        end;
        // make sure we haven't crossed
        if (i ≥ j) then begin
          goto _breaklabel0;
        end;
        t := p[i];
        p[i] := p[j];
        p[j] := t;
        i := i + 1;
        j := j - 1;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    // recurse on smaller side, iterate on larger
    if (j < (n - i)) then begin
      nk_tt__sort_edges_quicksort(p, j);
      p := (p + i);
      n := (n - i);
    end
    else begin
      nk_tt__sort_edges_quicksort((p + i), (n - i));
      n := j;
    end;
  end;
end;

method nk_tt__sort_edges(p: ^__struct_nk_tt__edge; n: Int32); public;
begin
  nk_tt__sort_edges_quicksort(p, n);
  nk_tt__sort_edges_ins_sort(p, n);
end;

method nk_tt__rasterize(&result: ^__struct_nk_tt__bitmap; pts: ^__struct_nk_tt__point; wcount: ^Int32; windings: Int32; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; off_x: Int32; off_y: Int32; invert: Int32; alloc: ^__struct_nk_allocator); public;
begin
  var y_scale_inv: Single := (if invert then (-scale_y) else (scale_y));
  var e: ^__struct_nk_tt__edge;
  var n: Int32;
  var i: Int32;
  var j: Int32;
  var k: Int32;
  var m: Int32;
  var vsubsample: Int32 := 1;
  // vsubsample should divide 255 evenly; otherwise we won't reach full opacity 
  //  now we have to blow out the windings into explicit edge lists
  n := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < windings) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    n := n + wcount[i];
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  e := ^__struct_nk_tt__edge((alloc)^.alloc((alloc)^.userdata, 0, (sizeOf((e)^) * nk_size((n + 1)))));
  if (e = 0) then begin
    exit;
  end;
  n := 0;
  m := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel2:;
    if (i < windings) then begin
    end
    else begin
      goto _breaklabel2;
    end;
    // for loop: body
    begin
      var p: ^__struct_nk_tt__point := (pts + m);
      m := m + wcount[i];
      j := (wcount[i] - 1);
      begin
        // for loop: initializer
        k := 0;
        // for loop: compare
        _looplabel4:;
        if (k < wcount[i]) then begin
        end
        else begin
          goto _breaklabel4;
        end;
        // for loop: body
        begin
          var a: Int32 := k;
          var b: Int32 := j;
          // skip the edge if horizontal
          if (p[j].y = p[k].y) then begin
            goto _continuelabel4;
          end;
          // add edge from j to k to the list
          e[n].invert := 0;
          if (if invert then ((p[j].y > p[k].y)) else ((p[j].y < p[k].y))) then begin
            e[n].invert := 1;
            (() -> begin
              (() -> begin
                var _tmp5 := j;
                a := _tmp5;
                exit _tmp5;
              end)();
              exit (() -> begin
                var _tmp6 := k;
                b := _tmp6;
                exit _tmp6;
              end)();
            end)();
          end;
          e[n].x0 := ((p[a].x * scale_x) + shift_x);
          e[n].y0 := (((p[a].y * y_scale_inv) + shift_y) * Single(vsubsample));
          e[n].x1 := ((p[b].x * scale_x) + shift_x);
          e[n].y1 := (((p[b].y * y_scale_inv) + shift_y) * Single(vsubsample));
          n := n + 1;
        end;
        _continuelabel4:;
        // for loop: increment/continue
        j := (() -> begin
          var _tmp7 := k;
          k := _tmp7 + 1;
          exit _tmp7;
        end)();
        goto _looplabel4;
        // for loop: break
        _breaklabel4:;
      end;
    end;
    _continuelabel2:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel2;
    // for loop: break
    _breaklabel2:;
  end;
  // now sort the edges by their highest point (should snap to integer, and then by x) 
  // STBTT_sort(e, n, sizeof(e[0]), nk_tt__edge_compare);
  nk_tt__sort_edges(e, n);
  // now, traverse the scanlines and find the intersections on each scanline, use xor winding rule
  nk_tt__rasterize_sorted_edges(&result, e, n, vsubsample, off_x, off_y, alloc);
  (alloc)^.free((alloc)^.userdata, e);
end;

method nk_tt__add_point(points: ^__struct_nk_tt__point; n: Int32; x: Single; y: Single); public;
begin
  if not Boolean(points) then begin
    exit;
  end;
  // during first pass, it's unallocated
  points[n].x := x;
  points[n].y := y;
end;

method nk_tt__tesselate_curve(points: ^__struct_nk_tt__point; num_points: ^Int32; x0: Single; y0: Single; x1: Single; y1: Single; x2: Single; y2: Single; objspace_flatness_squared: Single; n: Int32): Int32; public;
begin
  // tesselate until threshold p is happy...
  //      * @TODO warped to compensate for non-linear stretching 
  //  midpoint
  var mx: Single := (((x0 + (2 * x1)) + x2) / 4);
  var my: Single := (((y0 + (2 * y1)) + y2) / 4);
  // versus directly drawn line
  var dx: Single := (((x0 + x2) / 2) - mx);
  var dy: Single := (((y0 + y2) / 2) - my);
  if (n > 16) then begin
    // 65536 segments on one curve better be enough!
    exit 1;
  end;
  // half-pixel error allowed... need to be smaller if AA
  if (((dx * dx) + (dy * dy)) > objspace_flatness_squared) then begin
    nk_tt__tesselate_curve(points, num_points, x0, y0, ((x0 + x1) / 2.0), ((y0 + y1) / 2.0), mx, my, objspace_flatness_squared, (n + 1));
    nk_tt__tesselate_curve(points, num_points, mx, my, ((x1 + x2) / 2.0), ((y1 + y2) / 2.0), x2, y2, objspace_flatness_squared, (n + 1));
  end
  else begin
    nk_tt__add_point(points, (num_points)^, x2, y2);
    (num_points)^ := ((num_points)^ + 1);
  end;
  exit 1;
end;

method nk_tt_FlattenCurves(vertices: ^__struct_nk_tt_vertex; num_verts: Int32; objspace_flatness: Single; contour_lengths: ^^Int32; num_contours: ^Int32; alloc: ^__struct_nk_allocator): ^__struct_nk_tt__point; public;
begin
  // returns number of contours
  var points: ^__struct_nk_tt__point := 0;
  var num_points: Int32 := 0;
  var objspace_flatness_squared: Single := (objspace_flatness * objspace_flatness);
  var i: Int32;
  var n: Int32 := 0;
  var start: Int32 := 0;
  var pass: Int32;
  // count how many "moves" there are to get the contour count
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < num_verts) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    if (vertices[i].type = NK_TT_vmove) then begin
      n := n + 1;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  (num_contours)^ := n;
  if (n = 0) then begin
    exit 0;
  end;
  (contour_lengths)^ := ^Int32((alloc)^.alloc((alloc)^.userdata, 0, (sizeOf(((contour_lengths)^)^) * nk_size(n))));
  if ((contour_lengths)^ = 0) then begin
    (num_contours)^ := 0;
    exit 0;
  end;
  // make two passes through the points so we don't need to realloc
  begin
    // for loop: initializer
    pass := 0;
    // for loop: compare
    _looplabel1:;
    if (pass < 2) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    begin
      var x: Single := 0;
      var y: Single := 0;
      if (pass = 1) then begin
        points := ^__struct_nk_tt__point((alloc)^.alloc((alloc)^.userdata, 0, (nk_size(num_points) * sizeOf(points[0]))));
        if (points = 0) then begin
          goto error;
        end;
        begin
        end;
      end;
      num_points := 0;
      n := -1;
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel2:;
        if (i < num_verts) then begin
        end
        else begin
          goto _breaklabel2;
        end;
        // for loop: body
        begin
          case vertices[i].type of
            NK_TT_vmove: begin
                goto switch3_0;
              end;
            NK_TT_vline: begin
                goto switch3_1;
              end;
            NK_TT_vcurve: begin
                goto switch3_2;
              end;
            else begin
              goto switch3_default;
            end;
          end;
          goto _breaklabelswitch3;
          switch3_0:;
          // start the next contour
          if (n ≥ 0) then begin
            (contour_lengths)^[n] := (num_points - start);
          end;
          n := n + 1;
          start := num_points;
          (() -> begin
            (() -> begin
              var _tmp4 := vertices[i].x;
              x := _tmp4;
              exit _tmp4;
            end)();
            exit (() -> begin
              var _tmp5 := vertices[i].y;
              y := _tmp5;
              exit _tmp5;
            end)();
          end)();
          nk_tt__add_point(points, (() -> begin
            var _tmp6 := num_points;
            num_points := _tmp6 + 1;
            exit _tmp6;
          end)(), x, y);
          goto _breaklabelswitch3;
          switch3_1:;
          (() -> begin
            (() -> begin
              var _tmp7 := vertices[i].x;
              x := _tmp7;
              exit _tmp7;
            end)();
            exit (() -> begin
              var _tmp8 := vertices[i].y;
              y := _tmp8;
              exit _tmp8;
            end)();
          end)();
          nk_tt__add_point(points, (() -> begin
            var _tmp9 := num_points;
            num_points := _tmp9 + 1;
            exit _tmp9;
          end)(), x, y);
          goto _breaklabelswitch3;
          switch3_2:;
          nk_tt__tesselate_curve(points, (@num_points), x, y, vertices[i].cx, vertices[i].cy, vertices[i].x, vertices[i].y, objspace_flatness_squared, 0);
          (() -> begin
            (() -> begin
              var _tmp10 := vertices[i].x;
              x := _tmp10;
              exit _tmp10;
            end)();
            exit (() -> begin
              var _tmp11 := vertices[i].y;
              y := _tmp11;
              exit _tmp11;
            end)();
          end)();
          goto _breaklabelswitch3;
          switch3_default:;
          goto _breaklabelswitch3;
          _breaklabelswitch3:;
        end;
        _continuelabel2:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel2;
        // for loop: break
        _breaklabel2:;
      end;
      (contour_lengths)^[n] := (num_points - start);
    end;
    _continuelabel1:;
    // for loop: increment/continue
    pass := pass + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  exit points;
  error:;
  (alloc)^.free((alloc)^.userdata, points);
  (alloc)^.free((alloc)^.userdata, (contour_lengths)^);
  (contour_lengths)^ := 0;
  (num_contours)^ := 0;
  exit 0;
end;

method nk_tt_Rasterize(&result: ^__struct_nk_tt__bitmap; flatness_in_pixels: Single; vertices: ^__struct_nk_tt_vertex; num_verts: Int32; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; x_off: Int32; y_off: Int32; invert: Int32; alloc: ^__struct_nk_allocator); public;
begin
  var scale: Single := (if (scale_x > scale_y) then (scale_y) else (scale_x));
  var winding_count: Int32;
  var winding_lengths: ^Int32;
  var windings: ^__struct_nk_tt__point := nk_tt_FlattenCurves(vertices, num_verts, (flatness_in_pixels / scale), (@winding_lengths), (@winding_count), alloc);
  assert(alloc);
  if windings then begin
    nk_tt__rasterize(&result, windings, winding_lengths, winding_count, scale_x, scale_y, shift_x, shift_y, x_off, y_off, invert, alloc);
    (alloc)^.free((alloc)^.userdata, winding_lengths);
    (alloc)^.free((alloc)^.userdata, windings);
  end;
end;

method nk_tt_MakeGlyphBitmapSubpixel(info: ^__struct_nk_tt_fontinfo; output: ^Byte; out_w: Int32; out_h: Int32; out_stride: Int32; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; glyph: Int32; alloc: ^__struct_nk_allocator); public;
begin
  var ix0: Int32;
  var iy0: Int32;
  var vertices: ^__struct_nk_tt_vertex;
  var num_verts: Int32 := nk_tt_GetGlyphShape(info, alloc, glyph, (@vertices));
  var gbm: __struct_nk_tt__bitmap;
  nk_tt_GetGlyphBitmapBoxSubpixel(info, glyph, scale_x, scale_y, shift_x, shift_y, (@ix0), (@iy0), 0, 0);
  gbm.pixels := output;
  gbm.w := out_w;
  gbm.h := out_h;
  gbm.stride := out_stride;
  if (Boolean(gbm.w) and Boolean(gbm.h)) then begin
    nk_tt_Rasterize((@gbm), 0.349999994039536, vertices, num_verts, scale_x, scale_y, shift_x, shift_y, ix0, iy0, 1, alloc);
  end;
  (alloc)^.free((alloc)^.userdata, vertices);
end;

// -------------------------------------------------------------
//  *                          Bitmap baking
//  * --------------------------------------------------------------
method nk_tt_PackBegin(spc: ^__struct_nk_tt_pack_context; pixels: ^Byte; pw: Int32; ph: Int32; stride_in_bytes: Int32; padding: Int32; alloc: ^__struct_nk_allocator): Int32; public;
begin
  var num_nodes: Int32 := (pw - padding);
  var context: ^__struct_nk_rp_context := ^__struct_nk_rp_context((alloc)^.alloc((alloc)^.userdata, 0, sizeOf((context)^)));
  var nodes: ^__struct_nk_rp_node := ^__struct_nk_rp_node((alloc)^.alloc((alloc)^.userdata, 0, (sizeOf((nodes)^) * nk_size(num_nodes))));
  if (Boolean((context = 0)) or Boolean((nodes = 0))) then begin
    if (context ≠ 0) then begin
      (alloc)^.free((alloc)^.userdata, context);
    end;
    if (nodes ≠ 0) then begin
      (alloc)^.free((alloc)^.userdata, nodes);
    end;
    exit 0;
  end;
  (spc)^.width := pw;
  (spc)^.height := ph;
  (spc)^.pixels := pixels;
  (spc)^.pack_info := context;
  (spc)^.nodes := nodes;
  (spc)^.padding := padding;
  (spc)^.stride_in_bytes := (if (stride_in_bytes ≠ 0) then (stride_in_bytes) else (pw));
  (spc)^.h_oversample := 1;
  (spc)^.v_oversample := 1;
  nk_rp_init_target(context, (pw - padding), (ph - padding), nodes, num_nodes);
  if pixels then begin
    memset(pixels, 0, nk_size((pw * ph)));
  end;
  // background of 0 around pixels
  exit 1;
end;

method nk_tt_PackEnd(spc: ^__struct_nk_tt_pack_context; alloc: ^__struct_nk_allocator); public;
begin
  (alloc)^.free((alloc)^.userdata, (spc)^.nodes);
  (alloc)^.free((alloc)^.userdata, (spc)^.pack_info);
end;

method nk_tt_PackSetOversampling(spc: ^__struct_nk_tt_pack_context; h_oversample: UInt32; v_oversample: UInt32); public;
begin
  assert((h_oversample ≤ 8));
  assert((v_oversample ≤ 8));
  if (h_oversample ≤ 8) then begin
    (spc)^.h_oversample := h_oversample;
  end;
  if (v_oversample ≤ 8) then begin
    (spc)^.v_oversample := v_oversample;
  end;
end;

method nk_tt__h_prefilter(pixels: ^Byte; w: Int32; h: Int32; stride_in_bytes: Int32; kernel_width: Int32); public;
begin
  var buffer: array[0..8 - 1] of Byte;
  var safe_w: Int32 := (w - kernel_width);
  var j: Int32;
  begin
    // for loop: initializer
    j := 0;
    // for loop: compare
    _looplabel0:;
    if (j < h) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var i: Int32;
      var total: UInt32;
      memset(buffer, 0, nk_size(kernel_width));
      total := 0;
      // make kernel_width a constant in common cases so compiler can optimize out the divide
      begin
        case kernel_width of
          2: begin
              goto switch1_0;
            end;
          3: begin
              goto switch1_1;
            end;
          4: begin
              goto switch1_2;
            end;
          5: begin
              goto switch1_3;
            end;
          else begin
            goto switch1_default;
          end;
        end;
        goto _breaklabelswitch1;
        switch1_0:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel2:;
          if (i ≤ safe_w) then begin
          end
          else begin
            goto _breaklabel2;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[i] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[i];
            pixels[i] := Byte((total / 2));
          end;
          _continuelabel2:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel2;
          // for loop: break
          _breaklabel2:;
        end;
        goto _breaklabelswitch1;
        switch1_1:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel4:;
          if (i ≤ safe_w) then begin
          end
          else begin
            goto _breaklabel4;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[i] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[i];
            pixels[i] := Byte((total / 3));
          end;
          _continuelabel4:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel4;
          // for loop: break
          _breaklabel4:;
        end;
        goto _breaklabelswitch1;
        switch1_2:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel6:;
          if (i ≤ safe_w) then begin
          end
          else begin
            goto _breaklabel6;
          end;
          // for loop: body
          begin
            total := total + (UInt32(pixels[i]) - buffer[(i and (8 - 1))]);
            buffer[((i + kernel_width) and (8 - 1))] := pixels[i];
            pixels[i] := Byte((total / 4));
          end;
          _continuelabel6:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel6;
          // for loop: break
          _breaklabel6:;
        end;
        goto _breaklabelswitch1;
        switch1_3:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel8:;
          if (i ≤ safe_w) then begin
          end
          else begin
            goto _breaklabel8;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[i] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[i];
            pixels[i] := Byte((total / 5));
          end;
          _continuelabel8:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel8;
          // for loop: break
          _breaklabel8:;
        end;
        goto _breaklabelswitch1;
        switch1_default:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel10:;
          if (i ≤ safe_w) then begin
          end
          else begin
            goto _breaklabel10;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[i] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[i];
            pixels[i] := Byte((total / UInt32(kernel_width)));
          end;
          _continuelabel10:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel10;
          // for loop: break
          _breaklabel10:;
        end;
        goto _breaklabelswitch1;
        _breaklabelswitch1:;
      end;
      begin
        // for loop: initializer
        // for loop: compare
        _looplabel12:;
        if (i < w) then begin
        end
        else begin
          goto _breaklabel12;
        end;
        // for loop: body
        begin
          assert((pixels[i] = 0));
          total := total - UInt32(buffer[(i and (8 - 1))]);
          pixels[i] := Byte((total / UInt32(kernel_width)));
        end;
        _continuelabel12:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel12;
        // for loop: break
        _breaklabel12:;
      end;
      pixels := pixels + stride_in_bytes;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    j := j + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_tt__v_prefilter(pixels: ^Byte; w: Int32; h: Int32; stride_in_bytes: Int32; kernel_width: Int32); public;
begin
  var buffer: array[0..8 - 1] of Byte;
  var safe_h: Int32 := (h - kernel_width);
  var j: Int32;
  begin
    // for loop: initializer
    j := 0;
    // for loop: compare
    _looplabel0:;
    if (j < w) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var i: Int32;
      var total: UInt32;
      memset(buffer, 0, nk_size(kernel_width));
      total := 0;
      // make kernel_width a constant in common cases so compiler can optimize out the divide
      begin
        case kernel_width of
          2: begin
              goto switch1_0;
            end;
          3: begin
              goto switch1_1;
            end;
          4: begin
              goto switch1_2;
            end;
          5: begin
              goto switch1_3;
            end;
          else begin
            goto switch1_default;
          end;
        end;
        goto _breaklabelswitch1;
        switch1_0:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel2:;
          if (i ≤ safe_h) then begin
          end
          else begin
            goto _breaklabel2;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[(i * stride_in_bytes)] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[(i * stride_in_bytes)];
            pixels[(i * stride_in_bytes)] := Byte((total / 2));
          end;
          _continuelabel2:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel2;
          // for loop: break
          _breaklabel2:;
        end;
        goto _breaklabelswitch1;
        switch1_1:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel4:;
          if (i ≤ safe_h) then begin
          end
          else begin
            goto _breaklabel4;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[(i * stride_in_bytes)] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[(i * stride_in_bytes)];
            pixels[(i * stride_in_bytes)] := Byte((total / 3));
          end;
          _continuelabel4:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel4;
          // for loop: break
          _breaklabel4:;
        end;
        goto _breaklabelswitch1;
        switch1_2:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel6:;
          if (i ≤ safe_h) then begin
          end
          else begin
            goto _breaklabel6;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[(i * stride_in_bytes)] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[(i * stride_in_bytes)];
            pixels[(i * stride_in_bytes)] := Byte((total / 4));
          end;
          _continuelabel6:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel6;
          // for loop: break
          _breaklabel6:;
        end;
        goto _breaklabelswitch1;
        switch1_3:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel8:;
          if (i ≤ safe_h) then begin
          end
          else begin
            goto _breaklabel8;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[(i * stride_in_bytes)] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[(i * stride_in_bytes)];
            pixels[(i * stride_in_bytes)] := Byte((total / 5));
          end;
          _continuelabel8:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel8;
          // for loop: break
          _breaklabel8:;
        end;
        goto _breaklabelswitch1;
        switch1_default:;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel10:;
          if (i ≤ safe_h) then begin
          end
          else begin
            goto _breaklabel10;
          end;
          // for loop: body
          begin
            total := total + UInt32((pixels[(i * stride_in_bytes)] - buffer[(i and (8 - 1))]));
            buffer[((i + kernel_width) and (8 - 1))] := pixels[(i * stride_in_bytes)];
            pixels[(i * stride_in_bytes)] := Byte((total / UInt32(kernel_width)));
          end;
          _continuelabel10:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel10;
          // for loop: break
          _breaklabel10:;
        end;
        goto _breaklabelswitch1;
        _breaklabelswitch1:;
      end;
      begin
        // for loop: initializer
        // for loop: compare
        _looplabel12:;
        if (i < h) then begin
        end
        else begin
          goto _breaklabel12;
        end;
        // for loop: body
        begin
          assert((pixels[(i * stride_in_bytes)] = 0));
          total := total - UInt32(buffer[(i and (8 - 1))]);
          pixels[(i * stride_in_bytes)] := Byte((total / UInt32(kernel_width)));
        end;
        _continuelabel12:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel12;
        // for loop: break
        _breaklabel12:;
      end;
      pixels := pixels + 1;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    j := j + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_tt__oversample_shift(oversample: Int32): Single; public;
begin
  if not Boolean(oversample) then begin
    exit 0.0;
  end;
  // The prefilter is a box filter of width "oversample", 
  //  which shifts phase by (oversample - 1)/2 pixels in 
  //  oversampled space. We want to shift in the opposite 
  //  direction to counter this.
  exit (Single(-(oversample - 1)) / (2.0 * Single(oversample)));
end;

method nk_tt_PackFontRangesGatherRects(spc: ^__struct_nk_tt_pack_context; info: ^__struct_nk_tt_fontinfo; ranges: ^__struct_nk_tt_pack_range; num_ranges: Int32; rects: ^__struct_nk_rp_rect): Int32; public;
begin
  // rects array must be big enough to accommodate all characters in the given ranges
  var i: Int32;
  // rects array must be big enough to accommodate all characters in the given ranges
  var j: Int32;
  // rects array must be big enough to accommodate all characters in the given ranges
  var k: Int32;
  k := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < num_ranges) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var fh: Single := ranges[i].font_size;
      var scale: Single := (if (fh > 0) then (nk_tt_ScaleForPixelHeight(info, fh)) else (nk_tt_ScaleForMappingEmToPixels(info, -fh)));
      ranges[i].h_oversample := Byte((spc)^.h_oversample);
      ranges[i].v_oversample := Byte((spc)^.v_oversample);
      begin
        // for loop: initializer
        j := 0;
        // for loop: compare
        _looplabel1:;
        if (j < ranges[i].num_chars) then begin
        end
        else begin
          goto _breaklabel1;
        end;
        // for loop: body
        begin
          var x0: Int32;
          var y0: Int32;
          var x1: Int32;
          var y1: Int32;
          var codepoint: Int32 := (if ranges[i].first_unicode_codepoint_in_range then ((ranges[i].first_unicode_codepoint_in_range + j)) else (ranges[i].array_of_unicode_codepoints[j]));
          var glyph: Int32 := nk_tt_FindGlyphIndex(info, codepoint);
          nk_tt_GetGlyphBitmapBoxSubpixel(info, glyph, (scale * Single((spc)^.h_oversample)), (scale * Single((spc)^.v_oversample)), 0, 0, (@x0), (@y0), (@x1), (@y1));
          rects[k].w := nk_rp_coord(((((x1 - x0) + (spc)^.padding) + Int32((spc)^.h_oversample)) - 1));
          rects[k].h := nk_rp_coord(((((y1 - y0) + (spc)^.padding) + Int32((spc)^.v_oversample)) - 1));
          k := k + 1;
        end;
        _continuelabel1:;
        // for loop: increment/continue
        j := j + 1;
        goto _looplabel1;
        // for loop: break
        _breaklabel1:;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit k;
end;

method nk_tt_PackFontRangesRenderIntoRects(spc: ^__struct_nk_tt_pack_context; info: ^__struct_nk_tt_fontinfo; ranges: ^__struct_nk_tt_pack_range; num_ranges: Int32; rects: ^__struct_nk_rp_rect; alloc: ^__struct_nk_allocator): Int32; public;
begin
  var i: Int32;
  var j: Int32;
  var k: Int32;
  var return_value: Int32 := 1;
  // save current values
  var old_h_over: Int32 := Int32((spc)^.h_oversample);
  var old_v_over: Int32 := Int32((spc)^.v_oversample);
  // rects array must be big enough to accommodate all characters in the given ranges
  k := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < num_ranges) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var fh: Single := ranges[i].font_size;
      var recip_h: Single;
      var recip_v: Single;
      var sub_x: Single;
      var sub_y: Single;
      var scale: Single := (if (fh > 0) then (nk_tt_ScaleForPixelHeight(info, fh)) else (nk_tt_ScaleForMappingEmToPixels(info, -fh)));
      (spc)^.h_oversample := ranges[i].h_oversample;
      (spc)^.v_oversample := ranges[i].v_oversample;
      recip_h := (1.0 / Single((spc)^.h_oversample));
      recip_v := (1.0 / Single((spc)^.v_oversample));
      sub_x := nk_tt__oversample_shift(Int32((spc)^.h_oversample));
      sub_y := nk_tt__oversample_shift(Int32((spc)^.v_oversample));
      begin
        // for loop: initializer
        j := 0;
        // for loop: compare
        _looplabel1:;
        if (j < ranges[i].num_chars) then begin
        end
        else begin
          goto _breaklabel1;
        end;
        // for loop: body
        begin
          var r: ^__struct_nk_rp_rect := (@rects[k]);
          if (r)^.was_packed then begin
            var bc: ^__struct_nk_tt_packedchar := (@ranges[i].chardata_for_range[j]);
            var advance: Int32;
            var lsb: Int32;
            var x0: Int32;
            var y0: Int32;
            var x1: Int32;
            var y1: Int32;
            var codepoint: Int32 := (if ranges[i].first_unicode_codepoint_in_range then ((ranges[i].first_unicode_codepoint_in_range + j)) else (ranges[i].array_of_unicode_codepoints[j]));
            var glyph: Int32 := nk_tt_FindGlyphIndex(info, codepoint);
            var pad: nk_rp_coord := nk_rp_coord((spc)^.padding);
            // pad on left and top
            (r)^.x := nk_rp_coord((Int32((r)^.x) + Int32(pad)));
            (r)^.y := nk_rp_coord((Int32((r)^.y) + Int32(pad)));
            (r)^.w := nk_rp_coord((Int32((r)^.w) - Int32(pad)));
            (r)^.h := nk_rp_coord((Int32((r)^.h) - Int32(pad)));
            nk_tt_GetGlyphHMetrics(info, glyph, (@advance), (@lsb));
            nk_tt_GetGlyphBitmapBox(info, glyph, (scale * Single((spc)^.h_oversample)), (scale * Single((spc)^.v_oversample)), (@x0), (@y0), (@x1), (@y1));
            nk_tt_MakeGlyphBitmapSubpixel(info, (((spc)^.pixels + (r)^.x) + ((r)^.y * (spc)^.stride_in_bytes)), Int32((((r)^.w - (spc)^.h_oversample) + 1)), Int32((((r)^.h - (spc)^.v_oversample) + 1)), (spc)^.stride_in_bytes, (scale * Single((spc)^.h_oversample)), (scale * Single((spc)^.v_oversample)), 0, 0, glyph, alloc);
            if ((spc)^.h_oversample > 1) then begin
              nk_tt__h_prefilter((((spc)^.pixels + (r)^.x) + ((r)^.y * (spc)^.stride_in_bytes)), (r)^.w, (r)^.h, (spc)^.stride_in_bytes, Int32((spc)^.h_oversample));
            end;
            if ((spc)^.v_oversample > 1) then begin
              nk_tt__v_prefilter((((spc)^.pixels + (r)^.x) + ((r)^.y * (spc)^.stride_in_bytes)), (r)^.w, (r)^.h, (spc)^.stride_in_bytes, Int32((spc)^.v_oversample));
            end;
            (bc)^.x0 := nk_ushort((r)^.x);
            (bc)^.y0 := nk_ushort((r)^.y);
            (bc)^.x1 := nk_ushort(((r)^.x + (r)^.w));
            (bc)^.y1 := nk_ushort(((r)^.y + (r)^.h));
            (bc)^.xadvance := (scale * Single(advance));
            (bc)^.xoff := ((Single(x0) * recip_h) + sub_x);
            (bc)^.yoff := ((Single(y0) * recip_v) + sub_y);
            (bc)^.xoff2 := (((Single(x0) + (r)^.w) * recip_h) + sub_x);
            (bc)^.yoff2 := (((Single(y0) + (r)^.h) * recip_v) + sub_y);
          end
          else begin
            return_value := 0;
          end;
          k := k + 1;
        end;
        _continuelabel1:;
        // for loop: increment/continue
        j := j + 1;
        goto _looplabel1;
        // for loop: break
        _breaklabel1:;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  // restore original values
  (spc)^.h_oversample := UInt32(old_h_over);
  (spc)^.v_oversample := UInt32(old_v_over);
  exit return_value;
end;

method nk_tt_GetPackedQuad(chardata: ^__struct_nk_tt_packedchar; pw: Int32; ph: Int32; char_index: Int32; xpos: ^Single; ypos: ^Single; q: ^__struct_nk_tt_aligned_quad; align_to_integer: Int32); public;
begin
  var ipw: Single := (1.0 / Single(pw));
  var iph: Single := (1.0 / Single(ph));
  var b: ^__struct_nk_tt_packedchar := ^__struct_nk_tt_packedchar((chardata + char_index));
  if align_to_integer then begin
    var tx: Int32 := nk_ifloorf((((xpos)^ + (b)^.xoff) + 0.5));
    var ty: Int32 := nk_ifloorf((((ypos)^ + (b)^.yoff) + 0.5));
    var x: Single := Single(tx);
    var y: Single := Single(ty);
    (q)^.x0 := x;
    (q)^.y0 := y;
    (q)^.x1 := ((x + (b)^.xoff2) - (b)^.xoff);
    (q)^.y1 := ((y + (b)^.yoff2) - (b)^.yoff);
  end
  else begin
    (q)^.x0 := ((xpos)^ + (b)^.xoff);
    (q)^.y0 := ((ypos)^ + (b)^.yoff);
    (q)^.x1 := ((xpos)^ + (b)^.xoff2);
    (q)^.y1 := ((ypos)^ + (b)^.yoff2);
  end;
  (q)^.s0 := ((b)^.x0 * ipw);
  (q)^.t0 := ((b)^.y0 * iph);
  (q)^.s1 := ((b)^.x1 * ipw);
  (q)^.t1 := ((b)^.y1 * iph);
  (xpos)^ := (xpos)^ + (b)^.xadvance;
end;

var nk_rect_align: nk_size := (^Byte((@(^anontype_11(0))^._h)) - ^Byte(0)); public;
var nk_range_align: nk_size := (^Byte((@(^anontype_12(0))^._h)) - ^Byte(0)); public;
var nk_char_align: nk_size := (^Byte((@(^anontype_13(0))^._h)) - ^Byte(0)); public;
var nk_build_align: nk_size := (^Byte((@(^anontype_14(0))^._h)) - ^Byte(0)); public;
var nk_baker_align: nk_size := (^Byte((@(^anontype_15(0))^._h)) - ^Byte(0)); public;

method nk_range_count(range: ^nk_rune): Int32; public;
begin
  var iter: ^nk_rune := range;
  assert(range);
  if not Boolean(range) then begin
    exit 0;
  end;
  while (((() -> begin
    var _tmp0 := iter;
    iter := _tmp0 + 1;
    exit _tmp0;
  end)())^ ≠ 0) do begin
  end;
  exit (if (iter = range) then (0) else (Int32(((iter - range) / 2))));
end;

method nk_range_glyph_count(range: ^nk_rune; count: Int32): Int32; public;
begin
  var i: Int32 := 0;
  var total_glyphs: Int32 := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var diff: Int32;
      var f: nk_rune := range[((i * 2) + 0)];
      var t: nk_rune := range[((i * 2) + 1)];
      assert((t ≥ f));
      diff := Int32(((t - f) + 1));
      total_glyphs := total_glyphs + diff;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit total_glyphs;
end;

method nk_font_default_glyph_ranges: ^nk_rune; public;
begin
  var ranges: ^nk_rune := [32, 255, 0];
  exit ranges;
end;

method nk_font_chinese_glyph_ranges: ^nk_rune; public;
begin
  var ranges: ^nk_rune := [32, 255, 12288, 12543, 12784, 12799, 65280, 65519, 19968, 40879, 0];
  exit ranges;
end;

method nk_font_cyrillic_glyph_ranges: ^nk_rune; public;
begin
  var ranges: ^nk_rune := [32, 255, 1024, 1327, 11744, 11775, 42560, 42655, 0];
  exit ranges;
end;

method nk_font_korean_glyph_ranges: ^nk_rune; public;
begin
  var ranges: ^nk_rune := [32, 255, 12593, 12643, 44032, 55197, 0];
  exit ranges;
end;

method nk_font_baker_memory(temp: ^nk_size; glyph_count: ^Int32; config_list: ^__struct_nk_font_config; count: Int32); public;
begin
  var range_count: Int32 := 0;
  var total_range_count: Int32 := 0;
  var iter: ^__struct_nk_font_config;
  var i: ^__struct_nk_font_config;
  assert(config_list);
  assert(glyph_count);
  if not Boolean(config_list) then begin
    (temp)^ := 0;
    (glyph_count)^ := 0;
    exit;
  end;
  (glyph_count)^ := 0;
  begin
    // for loop: initializer
    iter := config_list;
    // for loop: compare
    _looplabel0:;
    if iter then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      i := iter;
      repeat
        if not Boolean((i)^.range) then begin
          (iter)^.range := nk_font_default_glyph_ranges();
        end;
        range_count := nk_range_count((i)^.range);
        total_range_count := total_range_count + range_count;
        (glyph_count)^ := (glyph_count)^ + nk_range_glyph_count((i)^.range, range_count);
      until not ((() -> begin
        var _tmp1 := (i)^.n;
        i := _tmp1;
        exit _tmp1;
      end)() ≠ iter);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    iter := (iter)^.next;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  (temp)^ := (nk_size((glyph_count)^) * sizeOf(__struct_nk_rp_rect));
  (temp)^ := (temp)^ + (nk_size(total_range_count) * sizeOf(__struct_nk_tt_pack_range));
  (temp)^ := (temp)^ + (nk_size((glyph_count)^) * sizeOf(__struct_nk_tt_packedchar));
  (temp)^ := (temp)^ + (nk_size(count) * sizeOf(__struct_nk_font_bake_data));
  (temp)^ := (temp)^ + sizeOf(__struct_nk_font_baker);
  (temp)^ := (temp)^ + ((nk_rect_align + nk_range_align) + nk_char_align);
  (temp)^ := (temp)^ + (nk_build_align + nk_baker_align);
end;

method nk_font_baker(memory: ^Void; glyph_count: Int32; count: Int32; alloc: ^__struct_nk_allocator): ^__struct_nk_font_baker; public;
begin
  var baker: ^__struct_nk_font_baker;
  if not Boolean(memory) then begin
    exit 0;
  end;
  // setup baker inside a memory block
  baker := ^__struct_nk_font_baker(^Void((nk_size((^nk_byte(memory) + (nk_baker_align - 1))) and not (nk_baker_align - 1))));
  (baker)^.build := ^__struct_nk_font_bake_data(^Void((nk_size((^nk_byte((baker + 1)) + (nk_build_align - 1))) and not (nk_build_align - 1))));
  (baker)^.packed_chars := ^__struct_nk_tt_packedchar(^Void((nk_size((^nk_byte(((baker)^.build + count)) + (nk_char_align - 1))) and not (nk_char_align - 1))));
  (baker)^.rects := ^__struct_nk_rp_rect(^Void((nk_size((^nk_byte(((baker)^.packed_chars + glyph_count)) + (nk_rect_align - 1))) and not (nk_rect_align - 1))));
  (baker)^.ranges := ^__struct_nk_tt_pack_range(^Void((nk_size((^nk_byte(((baker)^.rects + glyph_count)) + (nk_range_align - 1))) and not (nk_range_align - 1))));
  (baker)^.alloc := (alloc)^;
  exit baker;
end;

method nk_font_bake_pack(baker: ^__struct_nk_font_baker; image_memory: ^nk_size; width: ^Int32; height: ^Int32; custom: ^__struct_nk_recti; config_list: ^__struct_nk_font_config; count: Int32; alloc: ^__struct_nk_allocator): Int32; public;
begin
  var max_height: nk_size := (1024 * 32);
  var config_iter: ^__struct_nk_font_config;
  var it: ^__struct_nk_font_config;
  var total_glyph_count: Int32 := 0;
  var total_range_count: Int32 := 0;
  var range_count: Int32 := 0;
  var i: Int32 := 0;
  assert(image_memory);
  assert(width);
  assert(height);
  assert(config_list);
  assert(count);
  assert(alloc);
  if (Boolean((Boolean((Boolean((Boolean(not Boolean(image_memory)) or Boolean(not Boolean(width)))) or Boolean(not Boolean(height)))) or Boolean(not Boolean(config_list)))) or Boolean(not Boolean(count))) then begin
    exit nk_false;
  end;
  begin
    // for loop: initializer
    config_iter := config_list;
    // for loop: compare
    _looplabel0:;
    if config_iter then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      it := config_iter;
      repeat
        range_count := nk_range_count((it)^.range);
        total_range_count := total_range_count + range_count;
        total_glyph_count := total_glyph_count + nk_range_glyph_count((it)^.range, range_count);
      until not ((() -> begin
        var _tmp1 := (it)^.n;
        it := _tmp1;
        exit _tmp1;
      end)() ≠ config_iter);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    config_iter := (config_iter)^.next;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  // setup font baker from temporary memory
  begin
    // for loop: initializer
    config_iter := config_list;
    // for loop: compare
    _looplabel4:;
    if config_iter then begin
    end
    else begin
      goto _breaklabel4;
    end;
    // for loop: body
    begin
      it := config_iter;
      repeat
        if not Boolean(nk_tt_InitFont((@(baker)^.build[(() -> begin
          var _tmp6 := i;
          i := _tmp6 + 1;
          exit _tmp6;
        end)()].info), ^Byte((it)^.ttf_blob), 0)) then begin
          exit nk_false;
        end;
      until not ((() -> begin
        var _tmp5 := (it)^.n;
        it := _tmp5;
        exit _tmp5;
      end)() ≠ config_iter);
    end;
    _continuelabel4:;
    // for loop: increment/continue
    config_iter := (config_iter)^.next;
    goto _looplabel4;
    // for loop: break
    _breaklabel4:;
  end;
  (height)^ := 0;
  (width)^ := (if (total_glyph_count > 1000) then (1024) else (512));
  nk_tt_PackBegin((@(baker)^.spc), 0, Int32((width)^), Int32(max_height), 0, 1, alloc);
  begin
    var input_i: Int32 := 0;
    var range_n: Int32 := 0;
    var rect_n: Int32 := 0;
    var char_n: Int32 := 0;
    if custom then begin
      // pack custom user data first so it will be in the upper left corner
      var custom_space: __struct_nk_rp_rect;
      nk_zero((@custom_space), sizeOf(custom_space));
      custom_space.w := nk_rp_coord((custom)^.w);
      custom_space.h := nk_rp_coord((custom)^.h);
      nk_tt_PackSetOversampling((@(baker)^.spc), 1, 1);
      nk_rp_pack_rects(^__struct_nk_rp_context((baker)^.spc.pack_info), (@custom_space), 1);
      (height)^ := (if ((height)^ < Int32((custom_space.y + custom_space.h))) then (Int32((custom_space.y + custom_space.h))) else ((height)^));
      (custom)^.x := Int16(custom_space.x);
      (custom)^.y := Int16(custom_space.y);
      (custom)^.w := Int16(custom_space.w);
      (custom)^.h := Int16(custom_space.h);
    end;
    // first font pass: pack all glyphs
    begin
      // for loop: initializer
      input_i := 0;
      config_iter := config_list;
      // for loop: compare
      _looplabel7:;
      if (Boolean((input_i < count)) and Boolean(config_iter)) then begin
      end
      else begin
        goto _breaklabel7;
      end;
      // for loop: body
      begin
        it := config_iter;
        repeat
          var n: Int32 := 0;
          var glyph_count: Int32;
          var in_range: ^nk_rune;
          var cfg: ^__struct_nk_font_config := it;
          var tmp: ^__struct_nk_font_bake_data := (@(baker)^.build[(() -> begin
            var _tmp9 := input_i;
            input_i := _tmp9 + 1;
            exit _tmp9;
          end)()]);
          // count glyphs + ranges in current font
          glyph_count := 0;
          range_count := 0;
          begin
            // for loop: initializer
            in_range := (cfg)^.range;
            // for loop: compare
            _looplabel10:;
            if (Boolean(in_range[0]) and Boolean(in_range[1])) then begin
            end
            else begin
              goto _breaklabel10;
            end;
            // for loop: body
            begin
              glyph_count := glyph_count + (Int32((in_range[1] - in_range[0])) + 1);
              range_count := range_count + 1;
            end;
            _continuelabel10:;
            // for loop: increment/continue
            in_range := in_range + 2;
            goto _looplabel10;
            // for loop: break
            _breaklabel10:;
          end;
          // setup ranges
          (tmp)^.ranges := ((baker)^.ranges + range_n);
          (tmp)^.range_count := nk_rune(range_count);
          range_n := range_n + range_count;
          begin
            // for loop: initializer
            i := 0;
            // for loop: compare
            _looplabel14:;
            if (i < range_count) then begin
            end
            else begin
              goto _breaklabel14;
            end;
            // for loop: body
            begin
              in_range := (@(cfg)^.range[(i * 2)]);
              (tmp)^.ranges[i].font_size := (cfg)^.size;
              (tmp)^.ranges[i].first_unicode_codepoint_in_range := Int32(in_range[0]);
              (tmp)^.ranges[i].num_chars := (Int32((in_range[1] - in_range[0])) + 1);
              (tmp)^.ranges[i].chardata_for_range := ((baker)^.packed_chars + char_n);
              char_n := char_n + (tmp)^.ranges[i].num_chars;
            end;
            _continuelabel14:;
            // for loop: increment/continue
            i := i + 1;
            goto _looplabel14;
            // for loop: break
            _breaklabel14:;
          end;
          // pack
          (tmp)^.rects := ((baker)^.rects + rect_n);
          rect_n := rect_n + glyph_count;
          nk_tt_PackSetOversampling((@(baker)^.spc), (cfg)^.oversample_h, (cfg)^.oversample_v);
          n := nk_tt_PackFontRangesGatherRects((@(baker)^.spc), (@(tmp)^.info), (tmp)^.ranges, Int32((tmp)^.range_count), (tmp)^.rects);
          nk_rp_pack_rects(^__struct_nk_rp_context((baker)^.spc.pack_info), (tmp)^.rects, Int32(n));
          // texture height
          begin
            // for loop: initializer
            i := 0;
            // for loop: compare
            _looplabel17:;
            if (i < n) then begin
            end
            else begin
              goto _breaklabel17;
            end;
            // for loop: body
            begin
              if (tmp)^.rects[i].was_packed then begin
                (height)^ := (if ((height)^ < ((tmp)^.rects[i].y + (tmp)^.rects[i].h)) then (((tmp)^.rects[i].y + (tmp)^.rects[i].h)) else ((height)^));
              end;
            end;
            _continuelabel17:;
            // for loop: increment/continue
            i := i + 1;
            goto _looplabel17;
            // for loop: break
            _breaklabel17:;
          end;
        until not ((() -> begin
          var _tmp8 := (it)^.n;
          it := _tmp8;
          exit _tmp8;
        end)() ≠ config_iter);
      end;
      _continuelabel7:;
      // for loop: increment/continue
      config_iter := (config_iter)^.next;
      goto _looplabel7;
      // for loop: break
      _breaklabel7:;
    end;
    assert((rect_n = total_glyph_count));
    assert((char_n = total_glyph_count));
    assert((range_n = total_range_count));
  end;
  (height)^ := Int32(nk_round_up_pow2(nk_uint((height)^)));
  (image_memory)^ := (nk_size((width)^) * nk_size((height)^));
  exit nk_true;
end;

method nk_font_bake(baker: ^__struct_nk_font_baker; image_memory: ^Void; width: Int32; height: Int32; glyphs: ^__struct_nk_font_glyph; glyphs_count: Int32; config_list: ^__struct_nk_font_config; font_count: Int32); public;
begin
  var input_i: Int32 := 0;
  var glyph_n: nk_rune := 0;
  var config_iter: ^__struct_nk_font_config;
  var it: ^__struct_nk_font_config;
  assert(image_memory);
  assert(width);
  assert(height);
  assert(config_list);
  assert(baker);
  assert(font_count);
  assert(glyphs_count);
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(image_memory)) or Boolean(not Boolean(width)))) or Boolean(not Boolean(height)))) or Boolean(not Boolean(config_list)))) or Boolean(not Boolean(font_count)))) or Boolean(not Boolean(glyphs)))) or Boolean(not Boolean(glyphs_count))) then begin
    exit;
  end;
  // second font pass: render glyphs
  nk_zero(image_memory, nk_size((nk_size(width) * nk_size(height))));
  (baker)^.spc.pixels := ^Byte(image_memory);
  (baker)^.spc.height := Int32(height);
  begin
    // for loop: initializer
    input_i := 0;
    config_iter := config_list;
    // for loop: compare
    _looplabel0:;
    if (Boolean((input_i < font_count)) and Boolean(config_iter)) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      it := config_iter;
      repeat
        var cfg: ^__struct_nk_font_config := it;
        var tmp: ^__struct_nk_font_bake_data := (@(baker)^.build[(() -> begin
          var _tmp2 := input_i;
          input_i := _tmp2 + 1;
          exit _tmp2;
        end)()]);
        nk_tt_PackSetOversampling((@(baker)^.spc), (cfg)^.oversample_h, (cfg)^.oversample_v);
        nk_tt_PackFontRangesRenderIntoRects((@(baker)^.spc), (@(tmp)^.info), (tmp)^.ranges, Int32((tmp)^.range_count), (tmp)^.rects, (@(baker)^.alloc));
      until not ((() -> begin
        var _tmp1 := (it)^.n;
        it := _tmp1;
        exit _tmp1;
      end)() ≠ config_iter);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    config_iter := (config_iter)^.next;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_tt_PackEnd((@(baker)^.spc), (@(baker)^.alloc));
  // third pass: setup font and glyphs
  begin
    // for loop: initializer
    input_i := 0;
    config_iter := config_list;
    // for loop: compare
    _looplabel3:;
    if (Boolean((input_i < font_count)) and Boolean(config_iter)) then begin
    end
    else begin
      goto _breaklabel3;
    end;
    // for loop: body
    begin
      it := config_iter;
      repeat
        var i: nk_size := 0;
        var char_idx: Int32 := 0;
        var glyph_count: nk_rune := 0;
        var cfg: ^__struct_nk_font_config := it;
        var tmp: ^__struct_nk_font_bake_data := (@(baker)^.build[(() -> begin
          var _tmp5 := input_i;
          input_i := _tmp5 + 1;
          exit _tmp5;
        end)()]);
        var dst_font: ^__struct_nk_baked_font := (cfg)^.font;
        var font_scale: Single := nk_tt_ScaleForPixelHeight((@(tmp)^.info), (cfg)^.size);
        var unscaled_ascent: Int32;
        var unscaled_descent: Int32;
        var unscaled_line_gap: Int32;
        nk_tt_GetFontVMetrics((@(tmp)^.info), (@unscaled_ascent), (@unscaled_descent), (@unscaled_line_gap));
        // fill baked font
        if not Boolean((cfg)^.merge_mode) then begin
          (dst_font)^.ranges := (cfg)^.range;
          (dst_font)^.height := (cfg)^.size;
          (dst_font)^.ascent := (Single(unscaled_ascent) * font_scale);
          (dst_font)^.descent := (Single(unscaled_descent) * font_scale);
          (dst_font)^.glyph_offset := glyph_n;
        end;
        // fill own baked font glyph array
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel6:;
          if (i < (tmp)^.range_count) then begin
          end
          else begin
            goto _breaklabel6;
          end;
          // for loop: body
          begin
            var range: ^__struct_nk_tt_pack_range := (@(tmp)^.ranges[i]);
            begin
              // for loop: initializer
              char_idx := 0;
              // for loop: compare
              _looplabel7:;
              if (char_idx < (range)^.num_chars) then begin
              end
              else begin
                goto _breaklabel7;
              end;
              // for loop: body
              begin
                var codepoint: nk_rune := 0;
                var dummy_x: Single := 0;
                var dummy_y: Single := 0;
                var q: __struct_nk_tt_aligned_quad;
                var glyph: ^__struct_nk_font_glyph;
                // query glyph bounds from stb_truetype
                var pc: ^__struct_nk_tt_packedchar := (@(range)^.chardata_for_range[char_idx]);
                if (Boolean((Boolean((Boolean(not Boolean((pc)^.x0)) and Boolean(not Boolean((pc)^.x1)))) and Boolean(not Boolean((pc)^.y0)))) and Boolean(not Boolean((pc)^.y1))) then begin
                  goto _continuelabel7;
                end;
                codepoint := nk_rune(((range)^.first_unicode_codepoint_in_range + char_idx));
                nk_tt_GetPackedQuad((range)^.chardata_for_range, Int32(width), Int32(height), char_idx, (@dummy_x), (@dummy_y), (@q), 0);
                // fill own glyph type with data
                glyph := (@glyphs[(((dst_font)^.glyph_offset + (dst_font)^.glyph_count) + UInt32(glyph_count))]);
                (glyph)^.codepoint := codepoint;
                (glyph)^.x0 := q.x0;
                (glyph)^.y0 := q.y0;
                (glyph)^.x1 := q.x1;
                (glyph)^.y1 := q.y1;
                (glyph)^.y0 := (glyph)^.y0 + ((dst_font)^.ascent + 0.5);
                (glyph)^.y1 := (glyph)^.y1 + ((dst_font)^.ascent + 0.5);
                (glyph)^.w := (((glyph)^.x1 - (glyph)^.x0) + 0.5);
                (glyph)^.h := ((glyph)^.y1 - (glyph)^.y0);
                if ((cfg)^.coord_type = NK_COORD_PIXEL) then begin
                  (glyph)^.u0 := (q.s0 * Single(width));
                  (glyph)^.v0 := (q.t0 * Single(height));
                  (glyph)^.u1 := (q.s1 * Single(width));
                  (glyph)^.v1 := (q.t1 * Single(height));
                end
                else begin
                  (glyph)^.u0 := q.s0;
                  (glyph)^.v0 := q.t0;
                  (glyph)^.u1 := q.s1;
                  (glyph)^.v1 := q.t1;
                end;
                (glyph)^.xadvance := ((pc)^.xadvance + (cfg)^.spacing.x);
                if (cfg)^.pixel_snap then begin
                  (glyph)^.xadvance := Single(Int32(((glyph)^.xadvance + 0.5)));
                end;
                glyph_count := glyph_count + 1;
              end;
              _continuelabel7:;
              // for loop: increment/continue
              char_idx := char_idx + 1;
              goto _looplabel7;
              // for loop: break
              _breaklabel7:;
            end;
          end;
          _continuelabel6:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel6;
          // for loop: break
          _breaklabel6:;
        end;
        (dst_font)^.glyph_count := (dst_font)^.glyph_count + glyph_count;
        glyph_n := glyph_n + glyph_count;
      until not ((() -> begin
        var _tmp4 := (it)^.n;
        it := _tmp4;
        exit _tmp4;
      end)() ≠ config_iter);
    end;
    _continuelabel3:;
    // for loop: increment/continue
    config_iter := (config_iter)^.next;
    goto _looplabel3;
    // for loop: break
    _breaklabel3:;
  end;
end;

method nk_font_bake_custom_data(img_memory: ^Void; img_width: Int32; img_height: Int32; img_dst: __struct_nk_recti; texture_data_mask: ^Byte; tex_width: Int32; tex_height: Int32; white: Byte; black: Byte); public;
begin
  var pixels: ^nk_byte;
  var y: Int32 := 0;
  var x: Int32 := 0;
  var n: Int32 := 0;
  assert(img_memory);
  assert(img_width);
  assert(img_height);
  assert(texture_data_mask);
  if (Boolean((Boolean((Boolean(not Boolean(img_memory)) or Boolean(not Boolean(img_width)))) or Boolean(not Boolean(img_height)))) or Boolean(not Boolean(texture_data_mask))) then begin
    exit;
  end;
  pixels := ^nk_byte(img_memory);
  begin
    // for loop: initializer
    y := 0;
    n := 0;
    // for loop: compare
    _looplabel0:;
    if (y < tex_height) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      // for loop: initializer
      x := 0;
      // for loop: compare
      _looplabel1:;
      if (x < tex_width) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      begin
        var off0: Int32 := ((img_dst.x + x) + ((img_dst.y + y) * img_width));
        var off1: Int32 := ((off0 + 1) + tex_width);
        pixels[off0] := (if (texture_data_mask[n] = white) then (255) else (0));
        pixels[off1] := (if (texture_data_mask[n] = black) then (255) else (0));
      end;
      _continuelabel1:;
      // for loop: increment/continue
      x := x + 1;
      n := n + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    y := y + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_font_bake_convert(out_memory: ^Void; img_width: Int32; img_height: Int32; in_memory: ^Void); public;
begin
  var n: Int32 := 0;
  var dst: ^nk_rune;
  var src: ^nk_byte;
  assert(out_memory);
  assert(in_memory);
  assert(img_width);
  assert(img_height);
  if (Boolean((Boolean((Boolean(not Boolean(out_memory)) or Boolean(not Boolean(in_memory)))) or Boolean(not Boolean(img_height)))) or Boolean(not Boolean(img_width))) then begin
    exit;
  end;
  dst := ^nk_rune(out_memory);
  src := ^nk_byte(in_memory);
  begin
    // for loop: initializer
    n := Int32((img_width * img_height));
    // for loop: compare
    _looplabel0:;
    if (n > 0) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    ((() -> begin
      var _tmp1 := dst;
      dst := _tmp1 + 1;
      exit _tmp1;
    end)())^ := ((nk_rune(((() -> begin
      var _tmp2 := src;
      src := _tmp2 + 1;
      exit _tmp2;
    end)())^) shl 24) or 16777215);
    _continuelabel0:;
    // for loop: increment/continue
    n := n - 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

// -------------------------------------------------------------
//  *
//  *                          FONT
//  *
//  * --------------------------------------------------------------
method nk_font_text_width(handle: nk_handle; height: Single; text: ^Byte; len: Int32): Single; public;
begin
  var unicode: nk_rune;
  var text_len: Int32 := 0;
  var text_width: Single := 0;
  var glyph_len: Int32 := 0;
  var scale: Single := 0;
  var font: ^__struct_nk_font := ^__struct_nk_font(handle.ptr);
  assert(font);
  assert((font)^.glyphs);
  if (Boolean((Boolean(not Boolean(font)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  scale := (height / (font)^.info.height);
  glyph_len := (() -> begin
    var _tmp0 := nk_utf_decode(text, (@unicode), Int32(len));
    text_len := _tmp0;
    exit _tmp0;
  end)();
  if not Boolean(glyph_len) then begin
    exit 0;
  end;
  while (Boolean((text_len ≤ Int32(len))) and Boolean(glyph_len)) do begin
    var g: ^__struct_nk_font_glyph;
    if (unicode = 65533) then begin
      break;
    end;
    // query currently drawn glyph information
    g := nk_font_find_glyph(font, unicode);
    text_width := text_width + ((g)^.xadvance * scale);
    // offset next glyph
    glyph_len := nk_utf_decode((text + text_len), (@unicode), (Int32(len) - text_len));
    text_len := text_len + glyph_len;
  end;
  exit text_width;
end;

method nk_font_find_glyph(font: ^__struct_nk_font; unicode: nk_rune): ^__struct_nk_font_glyph; public;
begin
  var i: Int32 := 0;
  var count: Int32;
  var total_glyphs: Int32 := 0;
  var glyph: ^__struct_nk_font_glyph := 0;
  var iter: ^__struct_nk_font_config := 0;
  assert(font);
  assert((font)^.glyphs);
  assert((font)^.info.ranges);
  if (Boolean(not Boolean(font)) or Boolean(not Boolean((font)^.glyphs))) then begin
    exit 0;
  end;
  glyph := (font)^.fallback;
  iter := (font)^.config;
  repeat
    count := nk_range_count((iter)^.range);
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < count) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      begin
        var f: nk_rune := (iter)^.range[((i * 2) + 0)];
        var t: nk_rune := (iter)^.range[((i * 2) + 1)];
        var diff: Int32 := Int32(((t - f) + 1));
        if (Boolean((unicode ≥ f)) and Boolean((unicode ≤ t))) then begin
          exit (@(font)^.glyphs[(nk_rune(total_glyphs) + (unicode - f))]);
        end;
        total_glyphs := total_glyphs + diff;
      end;
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
  until not ((() -> begin
    var _tmp0 := (iter)^.n;
    iter := _tmp0;
    exit _tmp0;
  end)() ≠ (font)^.config);
  exit glyph;
end;

method nk_font_init(font: ^__struct_nk_font; pixel_height: Single; fallback_codepoint: nk_rune; glyphs: ^__struct_nk_font_glyph; baked_font: ^__struct_nk_baked_font; atlas: nk_handle); public;
begin
  var baked: __struct_nk_baked_font;
  assert(font);
  assert(glyphs);
  assert(baked_font);
  if (Boolean((Boolean(not Boolean(font)) or Boolean(not Boolean(glyphs)))) or Boolean(not Boolean(baked_font))) then begin
    exit;
  end;
  baked := (baked_font)^;
  (font)^.fallback := 0;
  (font)^.info := baked;
  (font)^.scale := (Single(pixel_height) / Single((font)^.info.height));
  (font)^.glyphs := (@glyphs[(baked_font)^.glyph_offset]);
  (font)^.texture := atlas;
  (font)^.fallback_codepoint := fallback_codepoint;
  (font)^.fallback := nk_font_find_glyph(font, fallback_codepoint);
  (font)^.handle.height := ((font)^.info.height * (font)^.scale);
  (font)^.handle.width := nk_font_text_width;
  (font)^.handle.userdata.ptr := font;
end;

var nk_proggy_clean_ttf_compressed_data_base85: array[0..(11980 + 1) - 1] of Byte := "7])#######hV0qs'/###[),##/l:$#Q6>##5[n42>c-TH`->>#/e>11NNV=Bv(*:.F?uu#(gRU.o0XGH`$vhLG1hxt9?W`#,5LsCp#-i>.r$<$6pD>Lb';9Crc6tgXmKVeU2cD4Eo3R/2*>]b(MC;$jPfY.;h^`IWM9<Lh2TlS+f-s$o6Q<BWH`YiU.xfLq$N;$0iR/GX:U(jcW2p/W*q?-qmnUCI;jHSAiFWM.R*kU@C=GH?a9wp8f$e.-4^Qg1)Q-GL(lf(r/7GrRgwV%MS=C#`8ND>Qo#t'X#(v#Y9w0#1D$CIf;W'#pWUPXOuxXuU(H9M(1<q-UE31#^-V'8IRUo7Qf./L>=Ke$$'5F%)]0^#0X@U.a<r:QLtFsLcL6##lOj)#.Y5<-R&KgLwqJfLgN&;Q?gI^#DY2uLi@^rMl9t=cWq6##weg>$FBjVQTSDgEKnIS7EM9>ZY9w0#L;>>#Mx&4Mvt//L[MkA#W@lK.N'[0#7RL_&#w+F%HtG9M#XL`N&.,GM4Pg;-<nLENhvx>-VsM.M0rJfLH2eTM`*oJMHRC`NkfimM2J,W-jXS:)r0wK#@Fge$U>`w'N7G#$#fB#$E^$#:9:hk+eOe--6x)F7*E%?76%^GMHePW-Z5l'&GiF#$956:rS?dA#fiK:)Yr+`&#0j@'DbG&#^$PG.Ll+DNa<XCMKEV*N)LN/N*b=%Q6pia-Xg8I$<MR&,VdJe$<(7G;Ckl'&hF;;$<_=X(b.RS%%)###MPBuuE1V:v&cX&#2m#(&cV]`k9OhLMbn%s$G2,B$BfD3X*sp5#l,$R#]x_X1xKX%b5U*[r5iMfUo9U`N99hG)tm+/Us9pG)XPu`<0s-)WTt(gCRxIg(%6sfh=ktMKn3j)<6<b5Sk_/0(^]AaN#(p/L>&VZ>1i%h1S9u5o@YaaW$e+b<TWFn/Z:Oh(Cx2$lNEoN^e)#CFY@@I;BOQ*sRwZtZxRcU7uW6CXow0i(?$Q[cjOd[P4d)]>ROPOpxTO7Stwi1::iB1q)C_=dV26J;2,]7op$]uQr@_V7$q^%lQwtuHY]=DX,n3L#0PHDO4f9>dC@O>HBuKPpP*E,N+b3L#lpR/MrTEH.IAQk.a>D[.e;mc.x]Ip.PH^'/aqUO/$1WxLoW0[iLA<QT;5HKD+@qQ'NQ(3_PLhE48R.qAPSwQ0/WK?Z,[x?-J;jQTWA0X@KJ(_Y8N-:/M74:/-ZpKrUss?d#dZq]DAbkU*JqkL+nwX@@47`5>w=4h(9.`GCRUxHPeR`5Mjol(dUWxZa(>STrPkrJiWx`5U7F#.g*jrohGg`cg:lSTvEY/EV_7H4Q9[Z%cnv;JQYZ5q.l7Zeas:HOIZOB?G<Nald$qs]@]L<J7bR*>gv:[7MI2k).'2($5FNP&EQ(,)U]W]+fh18.vsai00);D3@4ku5P?DP8aJt+;qUM]=+b'8@;mViBKx0DE[-auGl8:PJ&Dj+M6OC]O^((##]`0i)drT;-7X`=-H3[igUnPG-NZlo.#k@h#=Ork$m>a>$-?Tm$UV(?#P6YY#'/###xe7q.73rI3*pP/$1>s9)W,JrM7SN]'/4C#v$U`0#V.[0>xQsH$fEmPMgY2u7Kh(G%siIfLSoS+MK2eTM$=5,M8p`A.;_R%#u[K#$x4AG8.kK/HSB==-'Ie/QTtG?-.*^N-4B/ZM_3YlQC7(p7q)&](`6_c)$/*JL(L-^(]$wIM`dPtOdGA,U3:w2M-0<q-]L_?^)1vw'.,MRsqVr.L;aN&#/EgJ)PBc[-f>+WomX2u7lqM2iEumMTcsF?-aT=Z-97UEnXglEn1K-bnEO`guFt(c%=;Am_Qs@jLooI&NX;]0#j4#F14;gl8-GQpgwhrq8'=l_f-b49'UOqkLu7-##oDY2L(te+Mch&gLYtJ,MEtJfLh'x'M=$CS-ZZ%P]8bZ>#S?YY#%Q&q'3^Fw&?D)UDNrocM3A76//oL"+
                                                      "?#h7gl85[qW/NDOk%16ij;+:1a'iNIdb-ou8.P*w,v5#EI$TWS>Pot-R*H'-SEpA:g)f+O$%%`kA#G=8RMmG1&O`>to8bC]T&$,n.LoO>29sp3dt-52U%VM#q7'DHpg+#Z9%H[K<L%a2E-grWVM3@2=-k22tL]4$##6We'8UJCKE[d_=%wI;'6X-GsLX4j^SgJ$##R*w,vP3wK#iiW&#*h^D&R?jp7+/u&#(AP##XU8c$fSYW-J95_-Dp[g9wcO&#M-h1OcJlc-*vpw0xUX&#OQFKNX@QI'IoPp7nb,QU//MQ&ZDkKP)X<WSVL(68uVl&#c'[0#(s1X&xm$Y%B7*K:eDA323j998GXbA#pwMs-jgD$9QISB-A_(aN4xoFM^@C58D0+Q+q3n0#3U1InDjF682-SjMXJK)(h$hxua_K]ul92%'BOU&#BRRh-slg8KDlr:%L71Ka:.A;%YULjDPmL<LYs8i#XwJOYaKPKc1h:'9Ke,g)b),78=I39B;xiY$bgGw-&.Zi9InXDuYa%G*f2Bq7mn9^#p1vv%#(Wi-;/Z5ho;#2:;%d&#x9v68C5g?ntX0X)pT`;%pB3q7mgGN)3%(P8nTd5L7GeA-GL@+%J3u2:(Yf>et`e;)f#Km8&+DC$I46>#Kr]]u-[=99tts1.qb#q72g1WJO81q+eN'03'eM>&1XxY-caEnOj%2n8)),?ILR5^.Ibn<-X-Mq7[a82Lq:F&#ce+S9wsCK*x`569E8ew'He]h:sI[2LM$[guka3ZRd6:t%IG:;$%YiJ:Nq=?eAw;/:nnDq0(CYcMpG)qLN4$##&J<j$UpK<Q4a1]MupW^-sj_$%[HK%'F####QRZJ::Y3EGl4'@%FkiAOg#p[##O`gukTfBHagL<LHw%q&OV0##F=6/:chIm0@eCP8X]:kFI%hl8hgO@RcBhS-@Qb$%+m=hPDLg*%K8ln(wcf3/'DW-$.lR?n[nCH-eXOONTJlh:.RYF%3'p6sq:UIMA945&^HFS87@$EP2iG<-lCO$%c`uKGD3rC$x0BL8aFn--`ke%#HMP'vh1/R&O_J9'um,.<tx[@%wsJk&bUT2`0uMv7gg#qp/ij.L56'hl;.s5CUrxjOM7-##.l+Au'A&O:-T72L]P`&=;ctp'XScX*rU.>-XTt,%OVU4)S1+R-#dg0/Nn?Ku1^0f$B*P:Rowwm-`0PKjYDDM'3]d39VZHEl4,.j']Pk-M.h^&:0FACm$maq-&sgw0t7/6(^xtk%LuH88Fj-ekm>GA#_>568x6(OFRl-IZp`&b,_P'$M<Jnq79VsJW/mWS*PUiq76;]/NM_>hLbxfc$mj`,O;&%W2m`Zh:/)Uetw:aJ%]K9h:TcF]u_-Sj9,VK3M.*'&0D[Ca]J9gp8,kAW]%(?A%R$f<->Zts'^kn=-^@c4%-pY6qI%J%1IGxfLU9CP8cbPlXv);C=b),<2mOvP8up,UVf3839acAWAW-W?#ao/^#%KYo8fRULNd2.>%m]UK:n%r$'sw]J;5pAoO_#2mO3n,'=H5(etHg*`+RLgv>=4U8guD$I%D:W>-r5V*%j*W:Kvej.Lp$<M-SGZ':+Q_k+uvOSLiEo(<aD/K<CCc`'Lx>'?;++O'>()jLR-^u68PHm8ZFWe+ej8h:9r6L*0//c&iH&R8pRbA#Kjm%upV1g:a_#Ur7FuA#(tRh#.Y5K+@?3<-8m0$PEn;J:rh6?I6uG<-`wMU'ircp0LaE_OtlMb&1#6T.#FDKu#1Lw%u%+GM+X'e?YLfjM[VO0MbuFp7;>Q&#WIo)0@F%q7c#4XAXN-U&VB<HFF*qL($/V,;(kXZejWO`<[5??ewY(*9=%wDc;,u<'9t3W-(H1th3+G]ucQ]kLs7df($/*JL]@*t7Bu_G3_7mp7<iaQjO@.kLg;x3B0lqp7Hf,^Ze7-##@/c58Mo(3;knp0%)A7?-W+eI'o8)b<nKnw'Ho8C=Y>pqB>0ie&jhZ[?iLR@@_AvA-iQ"+
                                                      "C(=ksRZRVp7`.=+NpBC%rh&3]R:8XDmE5^V8O(x<<aG/1N$#FX$0V5Y6x'aErI3I$7x%E`v<-BY,)%-?Psf*l?%C3.mM(=/M0:JxG'?7WhH%o'a<-80g0NBxoO(GH<dM]n.+%q@jH?f.UsJ2Ggs&4<-e47&Kl+f//9@`b+?.TeN_&B8Ss?v;^Trk;f#YvJkl&w$]>-+k?'(<S:68tq*WoDfZu';mM?8X[ma8W%*`-=;D.(nc7/;)g:T1=^J$&BRV(-lTmNB6xqB[@0*o.erM*<SWF]u2=st-*(6v>^](H.aREZSi,#1:[IXaZFOm<-ui#qUq2$##Ri;u75OK#(RtaW-K-F`S+cF]uN`-KMQ%rP/Xri.LRcB##=YL3BgM/3MD?@f&1'BW-)Ju<L25gl8uhVm1hL$##*8###'A3/LkKW+(^rWX?5W_8g)a(m&K8P>#bmmWCMkk&#TR`C,5d>g)F;t,4:@_l8G/5h4vUd%&%950:VXD'QdWoY-F$BtUwmfe$YqL'8(PWX(P?^@Po3$##`MSs?DWBZ/S>+4%>fX,VWv/w'KD`LP5IbH;rTV>n3cEK8U#bX]l-/V+^lj3;vlMb&[5YQ8#pekX9JP3XUC72L,,?+Ni&co7ApnO*5NK,((W-i:$,kp'UDAO(G0Sq7MVjJsbIu)'Z,*[>br5fX^:FPAWr-m2KgL<LUN098kTF&#lvo58=/vjDo;.;)Ka*hLR#/k=rKbxuV`>Q_nN6'8uTG&#1T5g)uLv:873UpTLgH+#FgpH'_o1780Ph8KmxQJ8#H72L4@768@Tm&Qh4CB/5OvmA&,Q&QbUoi$a_%3M01H)4x7I^&KQVgtFnV+;[Pc>[m4k//,]1?#`VY[Jr*3&&slRfLiVZJ:]?=K3Sw=[$=uRB?3xk48@aeg<Z'<$#4H)6,>e0jT6'N#(q%.O=?2S]u*(m<-V8J'(1)G][68hW$5'q[GC&5j`TE?m'esFGNRM)j,ffZ?-qx8;->g4t*:CIP/[Qap7/9'#(1sao7w-.qNUdkJ)tCF&#B^;xGvn2r9FEPFFFcL@.iFNkTve$m%#QvQS8U@)2Z+3K:AKM5isZ88+dKQ)W6>J%CL<KE>`.d*(B`-n8D9oK<Up]c$X$(,)M8Zt7/[rdkqTgl-0cuGMv'?>-XV1q['-5k'cAZ69e;D_?$ZPP&s^+7])$*$#@QYi9,5P&#9r+$%CE=68>K8r0=dSC%%(@p7.m7jilQ02'0-VWAg<a/''3u.=4L$Y)6k/K:_[3=&jvL<L0C/2'v:^;-DIBW,B4E68:kZ;%?8(Q8BH=kO65BW?xSG&#@uU,DS*,?.+(o(#1vCS8#CHF>TlGW'b)Tq7VT9q^*^$$.:&N@@$&)WHtPm*5_rO0&e%K&#-30j(E4#'Zb.o/(Tpm$>K'f@[PvFl,hfINTNU6u'0pao7%XUp9]5.>%h`8_=VYbxuel.NTSsJfLacFu3B'lQSu/m6-Oqem8T+oE--$0a/k]uj9EwsG>%veR*hv^BFpQj:K'#SJ,sB-'#](j.Lg92rTw-*n%@/;39rrJF,l#qV%OrtBeC6/,;qB3ebNW[?,Hqj2L.1NP&GjUR=1D8QaS3Up&@*9wP?+lo7b?@%'k4`p0Z$22%K3+iCZj?XJN4Nm&+YF]u@-W$U%VEQ/,,>>#)D<h#`)h0:<Q6909ua+&VU%n2:cG3FJ-%@Bj-DgLr`Hw&HAKjKjseK</xKT*)B,N9X3]krc12t'pgTV(Lv-tL[xg_%=M_q7a^x?7Ubd>#%8cY#YZ?=,`Wdxu/ae&#w6)R89tI#6@s'(6Bf7a&?S=^ZI_kS&ai`&=tE72L_D,;^R)7[$s<Eh#c&)q.MXI%#v9ROa5FZO%sF7q7Nwb&#ptUJ:aqJe$Sl68%.D###EC><?-aF&#RNQv>o8lKN%5/$(vdfq7+ebA#u1p]ovUKW&Y%q]'>$1@-[xfn$7ZTp7mM,G,Ko7a&Gu%G[RMxJs[0MM%wci.LFDK)(<c`Q8N"+
                                                      ")jEIF*+?P2a8g%)$q]o2aH8C&<SibC/q,(e:v;-b#6[$NtDZ84Je2KNvB#$P5?tQ3nt(0d=j.LQf./Ll33+(;q3L-w=8dX$#WF&uIJ@-bfI>%:_i2B5CsR8&9Z&#=mPEnm0f`<&c)QL5uJ#%u%lJj+D-r;BoF&#4DoS97h5g)E#o:&S4weDF,9^Hoe`h*L+_a*NrLW-1pG_&2UdB86e%B/:=>)N4xeW.*wft-;$'58-ESqr<b?UI(_%@[P46>#U`'6AQ]m&6/`Z>#S?YY#Vc;r7U2&326d=w&H####?TZ`*4?&.MK?LP8Vxg>$[QXc%QJv92.(Db*B)gb*BM9dM*hJMAo*c&#b0v=Pjer]$gG&JXDf->'StvU7505l9$AFvgYRI^&<^b68?j#q9QX4SM'RO#&sL1IM.rJfLUAj221]d##DW=m83u5;'bYx,*Sl0hL(W;;$doB&O/TQ:(Z^xBdLjL<Lni;''X.`$#8+1GD:k$YUWsbn8ogh6rxZ2Z9]%nd+>V#*8U_72Lh+2Q8Cj0i:6hp&$C/:p(HK>T8Y[gHQ4`4)'$Ab(Nof%V'8hL&#<NEdtg(n'=S1A(Q1/I&4([%dM`,Iu'1:_hL>SfD07&6D<fp8dHM7/g+tlPN9J*rKaPct&?'uBCem^jn%9_K)<,C5K3s=5g&GmJb*[SYq7K;TRLGCsM-$$;S%:Y@r7AK0pprpL<Lrh,q7e/%KWK:50I^+m'vi`3?%Zp+<-d+$L-Sv:@.o19n$s0&39;kn;S%BSq*$3WoJSCLweV[aZ'MQIjO<7;X-X;&+dMLvu#^UsGEC9WEc[X(wI7#2.(F0jV*eZf<-Qv3J-c+J5AlrB#$p(H68LvEA'q3n0#m,[`*8Ft)FcYgEud]CWfm68,(aLA$@EFTgLXoBq/UPlp7:d[/;r_ix=:TF`S5H-b<LI&HY(K=h#)]Lk$K14lVfm:x$H<3^Ql<M`$OhapBnkup'D#L$Pb_`N*g]2e;X/Dtg,bsj&K#2[-:iYr'_wgH)NUIR8a1n#S?Yej'h8^58UbZd+^FKD*T@;6A7aQC[K8d-(v6GI$x:T<&'Gp5Uf>@M.*J:;$-rv29'M]8qMv-tLp,'886iaC=Hb*YJoKJ,(j%K=H`K.v9HggqBIiZu'QvBT.#=)0ukruV&.)3=(^1`o*Pj4<-<aN((^7('#Z0wK#5GX@7u][`*S^43933A4rl][`*O4CgLEl]v$1Q3AeF37dbXk,.)vj#x'd`;qgbQR%FW,2(?LO=s%Sc68%NP'##Aotl8x=BE#j1UD([3$M(]UI2LX3RpKN@;/#f'f/&_mt&F)XdF<9t4)Qa.*kTLwQ'(TTB9.xH'>#MJ+gLq9-##@HuZPN0]u:h7.T..G:;$/Usj(T7`Q8tT72LnYl<-qx8;-HV7Q-&Xdx%1a,hC=0u+HlsV>nuIQL-5<N?)NBS)QN*_I,?&)2'IM%L3I)X((e/dl2&8'<M:^#M*Q+[T.Xri.LYS3v%fF`68h;b-X[/En'CR.q7E)p'/kle2HM,u;^%OKC-N+Ll%F9CF<Nf'^#t2L,;27W:0O@6##U6W7:$rJfLWHj$#)woqBefIZ.PK<b*t7ed;p*_m;4ExK#h@&]>_>@kXQtMacfD.m-VAb8;IReM3$wf0''hra*so568'Ip&vRs849'MRYSp%:t:h5qSgwpEr$B>Q,;s(C#$)`svQuF$##-D,##,g68@2[T;.XSdN9Qe)rpt._K-#5wF)sP'##p#C0c%-Gb%hd+<-j'Ai*x&&HMkT]C'OSl##5RG[JXaHN;d'uA#x._U;.`PU@(Z3dt4r152@:v,'R.Sj'w#0<-;kPI)FfJ&#AYJ&#//)>-k=m=*XnK$>=)72L]0I%>.G690a:$##<,);?;72#?x9+d;^V'9;jY@;)br#q^YQpx:X#Te$Z^'=-=bGhLf:D6&bNwZ9-ZD#n^9HhLMr5G;']d&6'wYmTFmL<LD)F^%[tC'8;+9E#C$g%#5Y>q9wI>P("+
                                                      "9mI[>kC-ekLC/R&CH+s'B;K-M6$EB%is00:+A4[7xks.LrNk0&E)wILYF@2L'0Nb$+pv<(2.768/FrY&h$^3i&@+G%JT'<-,v`3;_)I9M^AE]CN?Cl2AZg+%4iTpT3<n-&%H%b<FDj2M<hH=&Eh<2Len$b*aTX=-8QxN)k11IM1c^j%9s<L<NFSo)B?+<-(GxsF,^-Eh@$4dXhN$+#rxK8'je'D7k`e;)2pYwPA'_p9&@^18ml1^[@g4t*[JOa*[=Qp7(qJ_oOL^('7fB&Hq-:sf,sNj8xq^>$U4O]GKx'm9)b@p7YsvK3w^YR-CdQ*:Ir<($u&)#(&?L9Rg3H)4fiEp^iI9O8KnTj,]H?D*r7'M;PwZ9K0E^k&-cpI;.p/6_vwoFMV<->#%Xi.LxVnrU(4&8/P+:hLSKj$#U%]49t'I:rgMi'FL@a:0Y-uA[39',(vbma*hU%<-SRF`Tt:542R_VV$p@[p8DV[A,?1839FWdF<TddF<9Ah-6&9tWoDlh]&1SpGMq>Ti1O*H&#(AL8[_P%.M>v^-))qOT*F5Cq0`Ye%+$B6i:7@0IX<N+T+0MlMBPQ*Vj>SsD<U4JHY8kD2)2fU/M#$e.)T4,_=8hLim[&);?UkK'-x?'(:siIfL<$pFM`i<?%W(mGDHM%>iWP,##P`%/L<eXi:@Z9C.7o=@(pXdAO/NLQ8lPl+HPOQa8wD8=^GlPa8TKI1CjhsCTSLJM'/Wl>-S(qw%sf/@%#B6;/U7K]uZbi^Oc^2n<bhPmUkMw>%t<)'mEVE''n`WnJra$^TKvX5B>;_aSEK',(hwa0:i4G?.Bci.(X[?b*($,=-n<.Q%`(X=?+@Am*Js0&=3bh8K]mL<LoNs'6,'85`0?t/'_U59@]ddF<#LdF<eWdF<OuN/45rY<-L@&#+fm>69=Lb,OcZV/);TTm8VI;?%OtJ<(b4mq7M6:u?KRdF<gR@2L=FNU-<b[(9c/ML3m;Z[$oF3g)GAWqpARc=<ROu7cL5l;-[A]%/+fsd;l#SafT/f*W]0=O'$(Tb<[)*@e775R-:Yob%g*>l*:xP?Yb.5)%w_I?7uk5JC+FS(m#i'k.'a0i)9<7b'fs'59hq$*5Uhv##pi^8+hIEBF`nvo`;'l0.^S1<-wUK2/Coh58KKhLjM=SO*rfO`+qC`W-On.=AJ56>>i2@2LH6A:&5q`?9I3@@'04&p2/LVa*T-4<-i3;M9UvZd+N7>b*eIwg:CC)c<>nO&#<IGe;__.thjZl<%w(Wk2xmp4Q@I#I9,DF]u7-P=.-_:YJ]aS@V?6*C()dOp7:WL,b&3Rg/.cmM9&r^>$(>.Z-I&J(Q0Hd5Q%7Co-b`-c<N(6r@ip+AurK<m86QIth*#v;-OBqi+L7wDE-Ir8K['m+DDSLwK&/.?-V%U_%3:qKNu$_b*B-kp7NaD'QdWQPKYq[@>P)hI;*_F]u`Rb[.j8_Q/<&>uu+VsH$sM9TA%?)(vmJ80),P7E>)tjD%2L=-t#fK[%`v=Q8<FfNkgg^oIbah*#8/Qt$F&:K*-(N/'+1vMB,u()-a.VUU*#[e%gAAO(S>WlA2);Sa>gXm8YB`1d@K#n]76-a$U,mF<fX]idqd)<3,]J7JmW4`6]uks=4-72L(jEk+:bJ0M^q-8Dm_Z?0olP1C9Sa&H[d&c$ooQUj]Exd*3ZM@-WGW2%s',B-_M%>%Ul:#/'xoFM9QX-$.QN'>[%$Z$uF6pA6Ki2O5:8w*vP1<-1`[G,)-m#>0`P&#eb#.3i)rtB61(o'$?X3B</R90;eZ]%Ncq;-Tl]#F>2Qft^ae_5tKL9MUe9b*sLEQ95C&`=G?@Mj=wh*'3E>=-<)Gt*Iw)'QG:`@IwOf7&]1i'S01B+Ev/Nac#9S;=;YQpg_6U`*kVY39xK,[/6Aj7:'1Bm-_1EYfa1+o&o4hp7KN_Q(OlIo@S%;jVdn0'1<Vc52=u`3^o-n1'g4v58Hj&6_t7$##?M)c<$bgQ_'SY((-xkA"+
                                                      "#Y(,p'H9rIVY-b,'%bCPF7.J<Up^,(dU1VY*5#WkTU>h19w,WQhLI)3S#f$2(eb,jr*b;3Vw]*7NH%$c4Vs,eD9>XW8?N]o+(*pgC%/72LV-u<Hp,3@e^9UB1J+ak9-TN/mhKPg+AJYd$MlvAF_jCK*.O-^(63adMT->W%iewS8W6m2rtCpo'RS1R84=@paTKt)>=%&1[)*vp'u+x,VrwN;&]kuO9JDbg=pO$J*.jVe;u'm0dr9l,<*wMK*Oe=g8lV_KEBFkO'oU]^=[-792#ok,)i]lR8qQ2oA8wcRCZ^7w/Njh;?.stX?Q1>S1q4Bn$)K1<-rGdO'$Wr.Lc.CG)$/*JL4tNR/,SVO3,aUw'DJN:)Ss;wGn9A32ijw%FL+Z0Fn.U9;reSq)bmI32U==5ALuG&#Vf1398/pVo1*c-(aY168o<`JsSbk-,1N;$>0:OUas(3:8Z972LSfF8eb=c-;>SPw7.6hn3m`9^Xkn(r.qS[0;T%&Qc=+STRxX'q1BNk3&*eu2;&8q$&x>Q#Q7^Tf+6<(d%ZVmj2bDi%.3L2n+4W'$PiDDG)g,r%+?,$@?uou5tSe2aN_AQU*<h`e-GI7)?OK2A.d7_c)?wQ5AS@DL3r#7fSkgl6-++D:'A,uq7SvlB$pcpH'q3n0#_%dY#xCpr-l<F0NR@-##FEV6NTF6##$l84N1w?AO>'IAOURQ##V^Fv-XFbGM7Fl(N<3DhLGF%q.1rC$#:T__&Pi68%0xi_&[qFJ(77j_&JWoF.V735&T,[R*:xFR*K5>>#`bW-?4Ne_&6Ne_&6Ne_&n`kr-#GJcM6X;uM6X;uM(.a..^2TkL%oR(#;u.T%fAr%4tJ8&><1=GHZ_+m9/#H1F^R#SC#*N=BA9(D?v[UiFY>>^8p,KKF.W]L29uLkLlu/+4T<XoIB&hx=T1PcDaB&;HH+-AFr?(m9HZV)FKS8JCw;SD=6[^/DZUL`EUDf]GGlG&>w$)F./^n3+rlo+DB;5sIYGNk+i1t-69Jg--0pao7Sm#K)pdHW&;LuDNH@H>#/X-TI(;P>#,Gc>#0Su>#4`1?#8lC?#<xU?#@.i?#D:%@#HF7@#LRI@#P_[@#Tkn@#Xw*A#]-=A#a9OA#d<F&#*;G##.GY##2Sl##6`($#:l:$#>xL$#B.`$#F:r$#JF.%#NR@%#R_R%#Vke%#Zww%#_-4&#3^Rh%Sflr-k'MS.o?.5/sWel/wpEM0%3'/1)K^f1-d>G21&v(35>V`39V7A4=onx4A1OY5EI0;6Ibgr6M$HS7Q<)58C5w,;WoA*#[%T*#`1g*#d=#+#hI5+#lUG+#pbY+#tnl+#x$),#&1;,#*=M,#.I`,#2Ur,#6b.-#;w[H#iQtA#m^0B#qjBB#uvTB##-hB#'9$C#+E6C#/QHC#3^ZC#7jmC#;v)D#?,<D#C8ND#GDaD#KPsD#O]/E#g1A5#KA*1#gC17#MGd;#8(02#L-d3#rWM4#Hga1#,<w0#T.j<#O#'2#CYN1#qa^:#_4m3#o@/=#eG8=#t8J5#`+78#4uI-#m3B2#SB[8#Q0@8#i[*9#iOn8#1Nm;#^sN9#qh<9#:=x-#P;K2#$%X9#bC+.#Rg;<#mN=.#MTF.#RZO.#2?)4#Y#(/#[)1/#b;L/#dAU/#0Sv;#lY$0#n`-0#sf60#(F24#wrH0#%/e0#TmD<#%JSMFove:CTBEXI:<eh2g)B,3h2^G3i;#d3jD>)4kMYD4lVu`4m`:&5niUA5@(A5BA1]PBB:xlBCC=2CDLXMCEUtiCf&0g2'tN?PGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CP-qekC`.9kEg^+F$kwViFJTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5o,^<-28ZI'O?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;"+
                                                      "xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xp;7q-#lLYI:xvD=#"; public;
var nk_custom_cursor_data: array[0..((90 * 27) + 1) - 1] of Byte := ["..-         -XXXXXXX-    X    -           X           -XXXXXXX          -          XXXXXXX..-         -X.....X-   X.X   -          X.X          -X.....X          -          X.....X---         -XXX.XXX-  X...X  -         X...X         -X....X           -           X....XX           -  X.X  - X.....X -        X.....X        -X...X            -            X...XXX          -  X.X  -X.......X-       X.......X       -X..X.X           -           X.X..XX.X         -  X.X  -XXXX.XXXX-       XXXX.XXXX       -X.X X.X          -          X.X X.XX..X        -  X.X  -   X.X   -          X.X          -XX   X.X         -         X.X   XXX...X       -  X.X  -   X.X   -    XX    X.X    XX    -      X.X        -        X.X      X....X      -  X.X  -   X.X   -   X.X    X.X    X.X   -       X.X       -       X.X       X.....X     -  X.X  -   X.X   -  X..X    X.X    X..X  -        X.X      -      X.X        X......X    -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -         X.X   XX-XX   X.X         X.......X   -  X.X  -   X.X   -X.....................X-          X.X X.X-X.X X.X          X........X  -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -           X.X..X-X..X.X           X.........X -XXX.XXX-   X.X   -  X..X    X.X    X..X  -            X...X-X...X            X..........X-X.....X-   X.X   -   X.X    X.X    X.X   -           X....X-X....X           X......XXXXX-XXXXXXX-   X.X   -    XX    X.X    XX    -          X.....X-X.....X          X...X..X    ---------   X.X   -          X.X          -          XXXXXXX-XXXXXXX          X..X X..X   -       -XXXX.XXXX-       XXXX.XXXX       ------------------------------------X.X  X..X   -       -X.......X-       X.......X       -    XX           XX    -           XX    X..X  -       - X.....X -        X.....X        -   X.X           X.X   -                 X..X          -  X...X  -         X...X         -  X..X           X..X  -                  XX           -   X.X   -          X.X          - X...XXXXXXXXXXXXX...X -          "+
                                                                     " ------------        -    X    -           X           -X.....................X-                               ----------------------------------- X...XXXXXXXXXXXXX...X -                                                                 -  X..X           X..X  -                                                                 -   X.X           X.X   -                                                                 -    XX           XX    -           "]; public;
var nk__barrier: ^Byte; public;
var nk__barrier2: ^Byte; public;
var nk__barrier3: ^Byte; public;
var nk__barrier4: ^Byte; public;
var nk__dout: ^Byte; public;

method nk_decompress_length(input: ^Byte): UInt32; public;
begin
  exit UInt32(((((input[8] shl 24) + (input[9] shl 16)) + (input[10] shl 8)) + input[11]));
end;

method nk__match(data: ^Byte; length: UInt32); public;
begin
  // INVERSE of memmove... write each byte before copying the next...
  assert(((nk__dout + length) ≤ nk__barrier));
  if ((nk__dout + length) > nk__barrier) then begin
    nk__dout := nk__dout + length;
    exit;
  end;
  if (data < nk__barrier4) then begin
    nk__dout := (nk__barrier + 1);
    exit;
  end;
  while (() -> begin
    var _tmp1 := length;
    length := _tmp1 - 1;
    exit _tmp1;
  end)() do
    ((() -> begin
      var _tmp2 := nk__dout;
      nk__dout := _tmp2 + 1;
      exit _tmp2;
    end)())^ := ((() -> begin
      var _tmp3 := data;
      data := _tmp3 + 1;
      exit _tmp3;
    end)())^;
end;

method nk__lit(data: ^Byte; length: UInt32); public;
begin
  assert(((nk__dout + length) ≤ nk__barrier));
  if ((nk__dout + length) > nk__barrier) then begin
    nk__dout := nk__dout + length;
    exit;
  end;
  if (data < nk__barrier2) then begin
    nk__dout := (nk__barrier + 1);
    exit;
  end;
  memcpy(nk__dout, data, length);
  nk__dout := nk__dout + length;
end;

method nk_decompress_token(i: ^Byte): ^Byte; public;
begin
  // defined: nk__in2 (x) ((i[x] << 8) + i[(x)+1])
  //  defined: nk__in3 (x) ((i[x] << 16) + nk__in2((x)+1))
  //  defined: nk__in4 (x) ((i[x] << 24) + nk__in3((x)+1))
  if ((i)^ ≥ 32) then begin
    // use fewer if's for cases that expand small
    if ((i)^ ≥ 128) then begin
      (() -> begin
        nk__match(((nk__dout - i[1]) - 1), ((UInt32(i[0]) - 128) + 1));
        exit (() -> begin
          var _tmp0 := i + 2;
          i := _tmp0;
          exit _tmp0;
        end)();
      end)();
    end
    else begin
      if ((i)^ ≥ 64) then begin
        (() -> begin
          nk__match((nk__dout - ((((i[0] shl 8) + i[(0 + 1)]) - 16384) + 1)), (UInt32(i[2]) + 1));
          exit (() -> begin
            var _tmp1 := i + 3;
            i := _tmp1;
            exit _tmp1;
          end)();
        end)();
      end
      else begin
        // *i >= 0x20
        (() -> begin
          nk__lit((i + 1), ((UInt32(i[0]) - 32) + 1));
          exit (() -> begin
            var _tmp2 := i + (1 + ((i[0] - 32) + 1));
            i := _tmp2;
            exit _tmp2;
          end)();
        end)();
      end;
    end;
  end
  else begin
    // more ifs for cases that expand large, since overhead is amortized
    if ((i)^ ≥ 24) then begin
      (() -> begin
        nk__match((nk__dout - UInt32(((((i[0] shl 16) + ((i[(0 + 1)] shl 8) + i[((0 + 1) + 1)])) - 1572864) + 1))), (UInt32(i[3]) + 1));
        exit (() -> begin
          var _tmp3 := i + 4;
          i := _tmp3;
          exit _tmp3;
        end)();
      end)();
    end
    else begin
      if ((i)^ ≥ 16) then begin
        (() -> begin
          nk__match((nk__dout - UInt32(((((i[0] shl 16) + ((i[(0 + 1)] shl 8) + i[((0 + 1) + 1)])) - 1048576) + 1))), (UInt32(((i[3] shl 8) + i[(3 + 1)])) + 1));
          exit (() -> begin
            var _tmp4 := i + 5;
            i := _tmp4;
            exit _tmp4;
          end)();
        end)();
      end
      else begin
        if ((i)^ ≥ 8) then begin
          (() -> begin
            nk__lit((i + 2), ((UInt32(((i[0] shl 8) + i[(0 + 1)])) - 2048) + 1));
            exit (() -> begin
              var _tmp5 := i + (2 + ((((i[0] shl 8) + i[(0 + 1)]) - 2048) + 1));
              i := _tmp5;
              exit _tmp5;
            end)();
          end)();
        end
        else begin
          if ((i)^ = 7) then begin
            (() -> begin
              nk__lit((i + 3), (UInt32(((i[1] shl 8) + i[(1 + 1)])) + 1));
              exit (() -> begin
                var _tmp6 := i + (3 + (((i[1] shl 8) + i[(1 + 1)]) + 1));
                i := _tmp6;
                exit _tmp6;
              end)();
            end)();
          end
          else begin
            if ((i)^ = 6) then begin
              (() -> begin
                nk__match((nk__dout - UInt32((((i[1] shl 16) + ((i[(1 + 1)] shl 8) + i[((1 + 1) + 1)])) + 1))), (i[4] + 1));
                exit (() -> begin
                  var _tmp7 := i + 5;
                  i := _tmp7;
                  exit _tmp7;
                end)();
              end)();
            end
            else begin
              if ((i)^ = 4) then begin
                (() -> begin
                  nk__match((nk__dout - UInt32((((i[1] shl 16) + ((i[(1 + 1)] shl 8) + i[((1 + 1) + 1)])) + 1))), (UInt32(((i[4] shl 8) + i[(4 + 1)])) + 1));
                  exit (() -> begin
                    var _tmp8 := i + 6;
                    i := _tmp8;
                    exit _tmp8;
                  end)();
                end)();
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  exit i;
end;

method nk_adler32(adler32: UInt32; buffer: ^Byte; buflen: UInt32): UInt32; public;
begin
  var ADLER_MOD: UIntPtr := 65521;
  var s1: UIntPtr := (adler32 and 65535);
  var s2: UIntPtr := (adler32 shr 16);
  var blocklen: UIntPtr;
  var i: UIntPtr;
  blocklen := (buflen mod 5552);
  while buflen do begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if ((i + 7) < blocklen) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        s1 := s1 + buffer[0];
        s2 := s2 + s1;
        s1 := s1 + buffer[1];
        s2 := s2 + s1;
        s1 := s1 + buffer[2];
        s2 := s2 + s1;
        s1 := s1 + buffer[3];
        s2 := s2 + s1;
        s1 := s1 + buffer[4];
        s2 := s2 + s1;
        s1 := s1 + buffer[5];
        s2 := s2 + s1;
        s1 := s1 + buffer[6];
        s2 := s2 + s1;
        s1 := s1 + buffer[7];
        s2 := s2 + s1;
        buffer := buffer + 8;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 8;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    begin
      // for loop: initializer
      // for loop: compare
      _looplabel19:;
      if (i < blocklen) then begin
      end
      else begin
        goto _breaklabel19;
      end;
      // for loop: body
      begin
        s1 := s1 + ((() -> begin
          var _tmp21 := buffer;
          buffer := _tmp21 + 1;
          exit _tmp21;
        end)())^;
        s2 := s2 + s1;
      end;
      _continuelabel19:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel19;
      // for loop: break
      _breaklabel19:;
    end;
    s1 := s1 mod ADLER_MOD;
    s2 := s2 mod ADLER_MOD;
    buflen := buflen - UInt32(blocklen);
    blocklen := 5552;
  end;
  exit (UInt32((s2 shl 16)) + UInt32(s1));
end;

method nk_decompress(output: ^Byte; i: ^Byte; length: UInt32): UInt32; public;
begin
  var olen: UInt32;
  if (((i[0] shl 24) + ((i[(0 + 1)] shl 16) + ((i[((0 + 1) + 1)] shl 8) + i[(((0 + 1) + 1) + 1)]))) ≠ 1471938560) then begin
    exit 0;
  end;
  if (((i[4] shl 24) + ((i[(4 + 1)] shl 16) + ((i[((4 + 1) + 1)] shl 8) + i[(((4 + 1) + 1) + 1)]))) ≠ 0) then begin
    exit 0;
  end;
  // error! stream is > 4GB
  olen := nk_decompress_length(i);
  nk__barrier2 := i;
  nk__barrier3 := (i + length);
  nk__barrier := (output + olen);
  nk__barrier4 := output;
  i := i + 16;
  nk__dout := output;
  begin
    // for loop: initializer
    // for loop: compare
    _looplabel1:;
    // for loop: body
    begin
      var old_i: ^Byte := i;
      i := nk_decompress_token(i);
      if (i = old_i) then begin
        if (Boolean(((i)^ = 5)) and Boolean((i[1] = 250))) then begin
          assert((nk__dout = (output + olen)));
          if (nk__dout ≠ (output + olen)) then begin
            exit 0;
          end;
          if (nk_adler32(1, output, olen) ≠ UInt32(((i[2] shl 24) + ((i[(2 + 1)] shl 16) + ((i[((2 + 1) + 1)] shl 8) + i[(((2 + 1) + 1) + 1)]))))) then begin
            exit 0;
          end;
          exit olen;
        end
        else begin
          assert(0);
          // NOTREACHED
          exit 0;
        end;
      end;
      assert((nk__dout ≤ (output + olen)));
      if (nk__dout > (output + olen)) then begin
        exit 0;
      end;
    end;
    _continuelabel1:;
    // for loop: increment/continue
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
end;

method nk_decode_85_byte(c: Byte): UInt32; public;
begin
  exit UInt32((if (c ≥ 92) then ((c - 36)) else ((c - 35))));
end;

method nk_decode_85(dst: ^Byte; src: ^Byte); public;
begin
  while (src)^ do begin
    var tmp: UInt32 := (nk_decode_85_byte(Byte(src[0])) + (85 * (nk_decode_85_byte(Byte(src[1])) + (85 * (nk_decode_85_byte(Byte(src[2])) + (85 * (nk_decode_85_byte(Byte(src[3])) + (85 * nk_decode_85_byte(Byte(src[4]))))))))));
    // we can't assume little-endianess.
    dst[0] := Byte(((tmp shr 0) and 255));
    dst[1] := Byte(((tmp shr 8) and 255));
    dst[2] := Byte(((tmp shr 16) and 255));
    dst[3] := Byte(((tmp shr 24) and 255));
    src := src + 5;
    dst := dst + 4;
  end;
end;

// -------------------------------------------------------------
//  *
//  *                          FONT ATLAS
//  *
//  * --------------------------------------------------------------
method nk_font_config(pixel_height: Single): __struct_nk_font_config; public;
begin
  var cfg: __struct_nk_font_config;
  nk_zero((@cfg), sizeOf(cfg));
  cfg.ttf_blob := 0;
  cfg.ttf_size := 0;
  cfg.ttf_data_owned_by_atlas := 0;
  cfg.size := pixel_height;
  cfg.oversample_h := 3;
  cfg.oversample_v := 1;
  cfg.pixel_snap := 0;
  cfg.coord_type := NK_COORD_UV;
  cfg.spacing := nk_vec2(0, 0);
  cfg.range := nk_font_default_glyph_ranges();
  cfg.merge_mode := 0;
  cfg.fallback_glyph := 63;
  cfg.font := 0;
  cfg.n := 0;
  exit cfg;
end;

method nk_font_atlas_init_default(atlas: ^__struct_nk_font_atlas); public;
begin
  assert(atlas);
  if not Boolean(atlas) then begin
    exit;
  end;
  nk_zero((@(atlas)^), sizeOf((atlas)^));
  (atlas)^.temporary.userdata.ptr := 0;
  (atlas)^.temporary.alloc := nk_malloc;
  (atlas)^.temporary.free := nk_mfree;
  (atlas)^.permanent.userdata.ptr := 0;
  (atlas)^.permanent.alloc := nk_malloc;
  (atlas)^.permanent.free := nk_mfree;
end;

method nk_font_atlas_init(atlas: ^__struct_nk_font_atlas; alloc: ^__struct_nk_allocator); public;
begin
  assert(atlas);
  assert(alloc);
  if (Boolean(not Boolean(atlas)) or Boolean(not Boolean(alloc))) then begin
    exit;
  end;
  nk_zero((@(atlas)^), sizeOf((atlas)^));
  (atlas)^.permanent := (alloc)^;
  (atlas)^.temporary := (alloc)^;
end;

method nk_font_atlas_init_custom(atlas: ^__struct_nk_font_atlas; permanent: ^__struct_nk_allocator; temporary: ^__struct_nk_allocator); public;
begin
  assert(atlas);
  assert(permanent);
  assert(temporary);
  if (Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean(permanent)))) or Boolean(not Boolean(temporary))) then begin
    exit;
  end;
  nk_zero((@(atlas)^), sizeOf((atlas)^));
  (atlas)^.permanent := (permanent)^;
  (atlas)^.temporary := (temporary)^;
end;

method nk_font_atlas_begin(atlas: ^__struct_nk_font_atlas); public;
begin
  assert(atlas);
  assert((Boolean((atlas)^.temporary.alloc) and Boolean((atlas)^.temporary.free)));
  assert((Boolean((atlas)^.permanent.alloc) and Boolean((atlas)^.permanent.free)));
  if (Boolean((Boolean((Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free)))) or Boolean(not Boolean((atlas)^.temporary.alloc)))) or Boolean(not Boolean((atlas)^.temporary.free))) then begin
    exit;
  end;
  if (atlas)^.glyphs then begin
    (atlas)^.permanent.free((atlas)^.permanent.userdata, (atlas)^.glyphs);
    (atlas)^.glyphs := 0;
  end;
  if (atlas)^.pixel then begin
    (atlas)^.permanent.free((atlas)^.permanent.userdata, (atlas)^.pixel);
    (atlas)^.pixel := 0;
  end;
end;

method nk_font_atlas_add(atlas: ^__struct_nk_font_atlas; config: ^__struct_nk_font_config): ^__struct_nk_font; public;
begin
  var font: ^__struct_nk_font := 0;
  var cfg: ^__struct_nk_font_config;
  assert(atlas);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert(config);
  assert((config)^.ttf_blob);
  assert((config)^.ttf_size);
  assert(((config)^.size > 0.0));
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean(config)))) or Boolean(not Boolean((config)^.ttf_blob)))) or Boolean(not Boolean((config)^.ttf_size)))) or Boolean(((config)^.size ≤ 0.0)))) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free)))) or Boolean(not Boolean((atlas)^.temporary.alloc)))) or Boolean(not Boolean((atlas)^.temporary.free))) then begin
    exit 0;
  end;
  // allocate font config
  cfg := ^__struct_nk_font_config((atlas)^.permanent.alloc((atlas)^.permanent.userdata, 0, sizeOf(__struct_nk_font_config)));
  memcpy(cfg, config, sizeOf((config)^));
  (cfg)^.n := cfg;
  (cfg)^.p := cfg;
  if not Boolean((config)^.merge_mode) then begin
    // insert font config into list
    if not Boolean((atlas)^.config) then begin
      (atlas)^.config := cfg;
      (cfg)^.next := 0;
    end
    else begin
      var i: ^__struct_nk_font_config := (atlas)^.config;
      while (i)^.next do
        i := (i)^.next;
      (i)^.next := cfg;
      (cfg)^.next := 0;
    end;
    // allocate new font
    font := ^__struct_nk_font((atlas)^.permanent.alloc((atlas)^.permanent.userdata, 0, sizeOf(__struct_nk_font)));
    assert(font);
    nk_zero(font, sizeOf((font)^));
    if not Boolean(font) then begin
      exit 0;
    end;
    (font)^.config := cfg;
    // insert font into list
    if not Boolean((atlas)^.fonts) then begin
      (atlas)^.fonts := font;
      (font)^.next := 0;
    end
    else begin
      var i: ^__struct_nk_font := (atlas)^.fonts;
      while (i)^.next do
        i := (i)^.next;
      (i)^.next := font;
      (font)^.next := 0;
    end;
    (cfg)^.font := (@(font)^.info);
  end
  else begin
    // extend previously added font
    var f: ^__struct_nk_font := 0;
    var c: ^__struct_nk_font_config := 0;
    assert((atlas)^.font_num);
    f := (atlas)^.fonts;
    c := (f)^.config;
    (cfg)^.font := (@(f)^.info);
    (cfg)^.n := c;
    (cfg)^.p := (c)^.p;
    ((c)^.p)^.n := cfg;
    (c)^.p := cfg;
  end;
  // create own copy of .TTF font blob
  if not Boolean((config)^.ttf_data_owned_by_atlas) then begin
    (cfg)^.ttf_blob := (atlas)^.permanent.alloc((atlas)^.permanent.userdata, 0, (cfg)^.ttf_size);
    assert((cfg)^.ttf_blob);
    if not Boolean((cfg)^.ttf_blob) then begin
      (atlas)^.font_num := (atlas)^.font_num + 1;
      exit 0;
    end;
    memcpy((cfg)^.ttf_blob, (config)^.ttf_blob, (cfg)^.ttf_size);
    (cfg)^.ttf_data_owned_by_atlas := 1;
  end;
  (atlas)^.font_num := (atlas)^.font_num + 1;
  exit font;
end;

method nk_font_atlas_add_from_memory(atlas: ^__struct_nk_font_atlas; memory: ^Void; size: nk_size; height: Single; config: ^__struct_nk_font_config): ^__struct_nk_font; public;
begin
  var cfg: __struct_nk_font_config;
  assert(memory);
  assert(size);
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean((atlas)^.temporary.alloc)))) or Boolean(not Boolean((atlas)^.temporary.free)))) or Boolean(not Boolean(memory)))) or Boolean(not Boolean(size)))) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free))) then begin
    exit 0;
  end;
  cfg := (if config then ((config)^) else (nk_font_config(height)));
  cfg.ttf_blob := memory;
  cfg.ttf_size := size;
  cfg.size := height;
  cfg.ttf_data_owned_by_atlas := 0;
  exit nk_font_atlas_add(atlas, (@cfg));
end;

method nk_font_atlas_add_compressed(atlas: ^__struct_nk_font_atlas; compressed_data: ^Void; compressed_size: nk_size; height: Single; config: ^__struct_nk_font_config): ^__struct_nk_font; public;
begin
  var decompressed_size: UInt32;
  var decompressed_data: ^Void;
  var cfg: __struct_nk_font_config;
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  assert(compressed_data);
  assert(compressed_size);
  if (Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean(compressed_data)))) or Boolean(not Boolean((atlas)^.temporary.alloc)))) or Boolean(not Boolean((atlas)^.temporary.free)))) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free))) then begin
    exit 0;
  end;
  decompressed_size := nk_decompress_length(^Byte(compressed_data));
  decompressed_data := (atlas)^.permanent.alloc((atlas)^.permanent.userdata, 0, decompressed_size);
  assert(decompressed_data);
  if not Boolean(decompressed_data) then begin
    exit 0;
  end;
  nk_decompress(^Byte(decompressed_data), ^Byte(compressed_data), UInt32(compressed_size));
  cfg := (if config then ((config)^) else (nk_font_config(height)));
  cfg.ttf_blob := decompressed_data;
  cfg.ttf_size := decompressed_size;
  cfg.size := height;
  cfg.ttf_data_owned_by_atlas := 1;
  exit nk_font_atlas_add(atlas, (@cfg));
end;

method nk_font_atlas_add_compressed_base85(atlas: ^__struct_nk_font_atlas; data_base85: ^Byte; height: Single; config: ^__struct_nk_font_config): ^__struct_nk_font; public;
begin
  var compressed_size: Int32;
  var compressed_data: ^Void;
  var font: ^__struct_nk_font;
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  assert(data_base85);
  if (Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean(data_base85)))) or Boolean(not Boolean((atlas)^.temporary.alloc)))) or Boolean(not Boolean((atlas)^.temporary.free)))) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free))) then begin
    exit 0;
  end;
  compressed_size := (((Int32(nk_strlen(data_base85)) + 4) / 5) * 4);
  compressed_data := (atlas)^.temporary.alloc((atlas)^.temporary.userdata, 0, nk_size(compressed_size));
  assert(compressed_data);
  if not Boolean(compressed_data) then begin
    exit 0;
  end;
  nk_decode_85(^Byte(compressed_data), ^Byte(data_base85));
  font := nk_font_atlas_add_compressed(atlas, compressed_data, nk_size(compressed_size), height, config);
  (atlas)^.temporary.free((atlas)^.temporary.userdata, compressed_data);
  exit font;
end;

method nk_font_atlas_add_default(atlas: ^__struct_nk_font_atlas; pixel_height: Single; config: ^__struct_nk_font_config): ^__struct_nk_font; public;
begin
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  exit nk_font_atlas_add_compressed_base85(atlas, nk_proggy_clean_ttf_compressed_data_base85, pixel_height, config);
end;

method nk_font_atlas_bake(atlas: ^__struct_nk_font_atlas; width: ^Int32; height: ^Int32; fmt: __enum_nk_font_atlas_format): ^Void; public;
begin
  var i: Int32 := 0;
  var tmp: ^Void := 0;
  var tmp_size: nk_size;
  var img_size: nk_size;
  var font_iter: ^__struct_nk_font;
  var baker: ^__struct_nk_font_baker;
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  assert(width);
  assert(height);
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean(width)))) or Boolean(not Boolean(height)))) or Boolean(not Boolean((atlas)^.temporary.alloc)))) or Boolean(not Boolean((atlas)^.temporary.free)))) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free))) then begin
    exit 0;
  end;
  // no font added so just use default font
  if not Boolean((atlas)^.font_num) then begin
    (atlas)^.default_font := nk_font_atlas_add_default(atlas, 13.0, 0);
  end;
  assert((atlas)^.font_num);
  if not Boolean((atlas)^.font_num) then begin
    exit 0;
  end;
  // allocate temporary baker memory required for the baking process
  nk_font_baker_memory((@tmp_size), (@(atlas)^.glyph_count), (atlas)^.config, (atlas)^.font_num);
  tmp := (atlas)^.temporary.alloc((atlas)^.temporary.userdata, 0, tmp_size);
  assert(tmp);
  if not Boolean(tmp) then begin
    goto failed;
  end;
  begin
  end;
  // allocate glyph memory for all fonts
  baker := nk_font_baker(tmp, (atlas)^.glyph_count, (atlas)^.font_num, (@(atlas)^.temporary));
  (atlas)^.glyphs := ^__struct_nk_font_glyph((atlas)^.permanent.alloc((atlas)^.permanent.userdata, 0, (sizeOf(__struct_nk_font_glyph) * nk_size((atlas)^.glyph_count))));
  assert((atlas)^.glyphs);
  if not Boolean((atlas)^.glyphs) then begin
    goto failed;
  end;
  begin
  end;
  // pack all glyphs into a tight fit space
  (atlas)^.custom.w := ((90 * 2) + 1);
  (atlas)^.custom.h := (27 + 1);
  if not Boolean(nk_font_bake_pack(baker, (@img_size), width, height, (@(atlas)^.custom), (atlas)^.config, (atlas)^.font_num, (@(atlas)^.temporary))) then begin
    goto failed;
  end;
  begin
  end;
  // allocate memory for the baked image font atlas
  (atlas)^.pixel := (atlas)^.temporary.alloc((atlas)^.temporary.userdata, 0, img_size);
  assert((atlas)^.pixel);
  if not Boolean((atlas)^.pixel) then begin
    goto failed;
  end;
  begin
  end;
  // bake glyphs and custom white pixel into image
  nk_font_bake(baker, (atlas)^.pixel, (width)^, (height)^, (atlas)^.glyphs, (atlas)^.glyph_count, (atlas)^.config, (atlas)^.font_num);
  nk_font_bake_custom_data((atlas)^.pixel, (width)^, (height)^, (atlas)^.custom, nk_custom_cursor_data, 90, 27, 46, 88);
  if (fmt = NK_FONT_ATLAS_RGBA32) then begin
    // convert alpha8 image into rgba32 image
    var img_rgba: ^Void := (atlas)^.temporary.alloc((atlas)^.temporary.userdata, 0, nk_size((((width)^ * (height)^) * 4)));
    assert(img_rgba);
    if not Boolean(img_rgba) then begin
      goto failed;
    end;
    begin
    end;
    nk_font_bake_convert(img_rgba, (width)^, (height)^, (atlas)^.pixel);
    (atlas)^.temporary.free((atlas)^.temporary.userdata, (atlas)^.pixel);
    (atlas)^.pixel := img_rgba;
  end;
  (atlas)^.tex_width := (width)^;
  (atlas)^.tex_height := (height)^;
  // initialize each font
  begin
    // for loop: initializer
    font_iter := (atlas)^.fonts;
    // for loop: compare
    _looplabel0:;
    if font_iter then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var font: ^__struct_nk_font := font_iter;
      var config: ^__struct_nk_font_config := (font)^.config;
      nk_font_init(font, (config)^.size, (config)^.fallback_glyph, (atlas)^.glyphs, (config)^.font, nk_handle_ptr(0));
    end;
    _continuelabel0:;
    // for loop: increment/continue
    font_iter := (font_iter)^.next;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  // initialize each cursor
  begin
    var nk_cursor_data: array[0..NK_CURSOR_COUNT - 1] of array[0..3 - 1] of __struct_nk_vec2 := [[[0, 3], [12, 19], [0, 0]], [[13, 0], [7, 16], [4, 8]], [[31, 0], [23, 23], [11, 11]], [[21, 0], [9, 23], [5, 11]], [[55, 18], [23, 9], [11, 5]], [[73, 0], [17, 17], [9, 9]], [[55, 0], [17, 17], [9, 9]]];
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < NK_CURSOR_COUNT) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      begin
        var cursor: ^__struct_nk_cursor := (@(atlas)^.cursors[i]);
        (cursor)^.img.w := UInt16((width)^);
        (cursor)^.img.h := UInt16((height)^);
        (cursor)^.img.region[0] := UInt16(((atlas)^.custom.x + nk_cursor_data[i][0].x));
        (cursor)^.img.region[1] := UInt16(((atlas)^.custom.y + nk_cursor_data[i][0].y));
        (cursor)^.img.region[2] := UInt16(nk_cursor_data[i][1].x);
        (cursor)^.img.region[3] := UInt16(nk_cursor_data[i][1].y);
        (cursor)^.size := nk_cursor_data[i][1];
        (cursor)^.offset := nk_cursor_data[i][2];
      end;
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
  end;
  // free temporary memory
  (atlas)^.temporary.free((atlas)^.temporary.userdata, tmp);
  exit (atlas)^.pixel;
  failed:;
  // error so cleanup all memory
  if tmp then begin
    (atlas)^.temporary.free((atlas)^.temporary.userdata, tmp);
  end;
  if (atlas)^.glyphs then begin
    (atlas)^.permanent.free((atlas)^.permanent.userdata, (atlas)^.glyphs);
    (atlas)^.glyphs := 0;
  end;
  if (atlas)^.pixel then begin
    (atlas)^.temporary.free((atlas)^.temporary.userdata, (atlas)^.pixel);
    (atlas)^.pixel := 0;
  end;
  exit 0;
end;

method nk_font_atlas_end(atlas: ^__struct_nk_font_atlas; texture: nk_handle; null: ^__struct_nk_draw_null_texture); public;
begin
  var i: Int32 := 0;
  var font_iter: ^__struct_nk_font;
  assert(atlas);
  if not Boolean(atlas) then begin
    if not Boolean(null) then begin
      exit;
    end;
    (null)^.texture := texture;
    (null)^.uv := nk_vec2(0.5, 0.5);
  end;
  if null then begin
    (null)^.texture := texture;
    (null)^.uv.x := (((atlas)^.custom.x + 0.5) / Single((atlas)^.tex_width));
    (null)^.uv.y := (((atlas)^.custom.y + 0.5) / Single((atlas)^.tex_height));
  end;
  begin
    // for loop: initializer
    font_iter := (atlas)^.fonts;
    // for loop: compare
    _looplabel0:;
    if font_iter then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      (font_iter)^.texture := texture;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    font_iter := (font_iter)^.next;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < NK_CURSOR_COUNT) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    (atlas)^.cursors[i].img.handle := texture;
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  (atlas)^.temporary.free((atlas)^.temporary.userdata, (atlas)^.pixel);
  (atlas)^.pixel := 0;
  (atlas)^.tex_width := 0;
  (atlas)^.tex_height := 0;
  (atlas)^.custom.x := 0;
  (atlas)^.custom.y := 0;
  (atlas)^.custom.w := 0;
  (atlas)^.custom.h := 0;
end;

method nk_font_atlas_cleanup(atlas: ^__struct_nk_font_atlas); public;
begin
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  if (Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free))) then begin
    exit;
  end;
  if (atlas)^.config then begin
    var iter: ^__struct_nk_font_config;
    begin
      // for loop: initializer
      iter := (atlas)^.config;
      // for loop: compare
      _looplabel0:;
      if iter then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        var i: ^__struct_nk_font_config;
        begin
          // for loop: initializer
          i := (iter)^.n;
          // for loop: compare
          _looplabel1:;
          if (i ≠ iter) then begin
          end
          else begin
            goto _breaklabel1;
          end;
          // for loop: body
          begin
            (atlas)^.permanent.free((atlas)^.permanent.userdata, (i)^.ttf_blob);
            (i)^.ttf_blob := 0;
          end;
          _continuelabel1:;
          // for loop: increment/continue
          i := (i)^.n;
          goto _looplabel1;
          // for loop: break
          _breaklabel1:;
        end;
        (atlas)^.permanent.free((atlas)^.permanent.userdata, (iter)^.ttf_blob);
        (iter)^.ttf_blob := 0;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      iter := (iter)^.next;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
  end;
end;

method nk_font_atlas_clear(atlas: ^__struct_nk_font_atlas); public;
begin
  assert(atlas);
  assert((atlas)^.temporary.alloc);
  assert((atlas)^.temporary.free);
  assert((atlas)^.permanent.alloc);
  assert((atlas)^.permanent.free);
  if (Boolean((Boolean(not Boolean(atlas)) or Boolean(not Boolean((atlas)^.permanent.alloc)))) or Boolean(not Boolean((atlas)^.permanent.free))) then begin
    exit;
  end;
  if (atlas)^.config then begin
    var iter: ^__struct_nk_font_config;
    var next: ^__struct_nk_font_config;
    begin
      // for loop: initializer
      iter := (atlas)^.config;
      // for loop: compare
      _looplabel0:;
      if iter then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        var i: ^__struct_nk_font_config;
        var n: ^__struct_nk_font_config;
        begin
          // for loop: initializer
          i := (iter)^.n;
          // for loop: compare
          _looplabel1:;
          if (i ≠ iter) then begin
          end
          else begin
            goto _breaklabel1;
          end;
          // for loop: body
          begin
            n := (i)^.n;
            if (i)^.ttf_blob then begin
              (atlas)^.permanent.free((atlas)^.permanent.userdata, (i)^.ttf_blob);
            end;
            (atlas)^.permanent.free((atlas)^.permanent.userdata, i);
          end;
          _continuelabel1:;
          // for loop: increment/continue
          i := n;
          goto _looplabel1;
          // for loop: break
          _breaklabel1:;
        end;
        next := (iter)^.next;
        if (i)^.ttf_blob then begin
          (atlas)^.permanent.free((atlas)^.permanent.userdata, (iter)^.ttf_blob);
        end;
        (atlas)^.permanent.free((atlas)^.permanent.userdata, iter);
      end;
      _continuelabel0:;
      // for loop: increment/continue
      iter := next;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    (atlas)^.config := 0;
  end;
  if (atlas)^.fonts then begin
    var iter: ^__struct_nk_font;
    var next: ^__struct_nk_font;
    begin
      // for loop: initializer
      iter := (atlas)^.fonts;
      // for loop: compare
      _looplabel2:;
      if iter then begin
      end
      else begin
        goto _breaklabel2;
      end;
      // for loop: body
      begin
        next := (iter)^.next;
        (atlas)^.permanent.free((atlas)^.permanent.userdata, iter);
      end;
      _continuelabel2:;
      // for loop: increment/continue
      iter := next;
      goto _looplabel2;
      // for loop: break
      _breaklabel2:;
    end;
    (atlas)^.fonts := 0;
  end;
  if (atlas)^.glyphs then begin
    (atlas)^.permanent.free((atlas)^.permanent.userdata, (atlas)^.glyphs);
  end;
  nk_zero((@(atlas)^), sizeOf((atlas)^));
end;

// ===============================================================
//  *
//  *                          INPUT
//  *
//  * ===============================================================
method nk_input_begin(ctx: ^__struct_nk_context); public;
begin
  var i: Int32;
  var &in: ^__struct_nk_input;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  &in := (@(ctx)^.input);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < NK_BUTTON_MAX) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    (&in)^.mouse.buttons[i].clicked := 0;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  (&in)^.keyboard.text_len := 0;
  (&in)^.mouse.scroll_delta := nk_vec2(0, 0);
  (&in)^.mouse.prev.x := (&in)^.mouse.pos.x;
  (&in)^.mouse.prev.y := (&in)^.mouse.pos.y;
  (&in)^.mouse.delta.x := 0;
  (&in)^.mouse.delta.y := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < NK_KEY_MAX) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    (&in)^.keyboard.keys[i].clicked := 0;
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
end;

method nk_input_end(ctx: ^__struct_nk_context); public;
begin
  var &in: ^__struct_nk_input;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  &in := (@(ctx)^.input);
  if (&in)^.mouse.grab then begin
    (&in)^.mouse.grab := 0;
  end;
  if (&in)^.mouse.ungrab then begin
    (&in)^.mouse.grabbed := 0;
    (&in)^.mouse.ungrab := 0;
    (&in)^.mouse.grab := 0;
  end;
end;

method nk_input_motion(ctx: ^__struct_nk_context; x: Int32; y: Int32); public;
begin
  var &in: ^__struct_nk_input;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  &in := (@(ctx)^.input);
  (&in)^.mouse.pos.x := Single(x);
  (&in)^.mouse.pos.y := Single(y);
  (&in)^.mouse.delta.x := ((&in)^.mouse.pos.x - (&in)^.mouse.prev.x);
  (&in)^.mouse.delta.y := ((&in)^.mouse.pos.y - (&in)^.mouse.prev.y);
end;

method nk_input_key(ctx: ^__struct_nk_context; key: __enum_nk_keys; down: Int32); public;
begin
  var &in: ^__struct_nk_input;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  &in := (@(ctx)^.input);
  (&in)^.keyboard.keys[key].clicked := (&in)^.keyboard.keys[key].clicked + 1;
  (&in)^.keyboard.keys[key].down := down;
end;

method nk_input_button(ctx: ^__struct_nk_context; id: __enum_nk_buttons; x: Int32; y: Int32; down: Int32); public;
begin
  var btn: ^__struct_nk_mouse_button;
  var &in: ^__struct_nk_input;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  &in := (@(ctx)^.input);
  if ((&in)^.mouse.buttons[id].down = down) then begin
    exit;
  end;
  btn := (@(&in)^.mouse.buttons[id]);
  (btn)^.clicked_pos.x := Single(x);
  (btn)^.clicked_pos.y := Single(y);
  (btn)^.down := down;
  (btn)^.clicked := (btn)^.clicked + 1;
end;

method nk_input_scroll(ctx: ^__struct_nk_context; val: __struct_nk_vec2); public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  (ctx)^.input.mouse.scroll_delta.x := (ctx)^.input.mouse.scroll_delta.x + val.x;
  (ctx)^.input.mouse.scroll_delta.y := (ctx)^.input.mouse.scroll_delta.y + val.y;
end;

method nk_input_glyph(ctx: ^__struct_nk_context; glyph: nk_glyph); public;
begin
  var len: Int32 := 0;
  var unicode: nk_rune;
  var &in: ^__struct_nk_input;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  &in := (@(ctx)^.input);
  len := nk_utf_decode(glyph, (@unicode), 4);
  if (Boolean(len) and Boolean((((&in)^.keyboard.text_len + len) < 16))) then begin
    nk_utf_encode(unicode, (@(&in)^.keyboard.text[(&in)^.keyboard.text_len]), (16 - (&in)^.keyboard.text_len));
    (&in)^.keyboard.text_len := (&in)^.keyboard.text_len + len;
  end;
end;

method nk_input_char(ctx: ^__struct_nk_context; c: Byte); public;
begin
  var glyph: nk_glyph;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  glyph[0] := c;
  nk_input_glyph(ctx, glyph);
end;

method nk_input_unicode(ctx: ^__struct_nk_context; unicode: nk_rune); public;
begin
  var rune: nk_glyph;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  nk_utf_encode(unicode, rune, 4);
  nk_input_glyph(ctx, rune);
end;

method nk_input_has_mouse_click(i: ^__struct_nk_input; id: __enum_nk_buttons): Int32; public;
begin
  var btn: ^__struct_nk_mouse_button;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  btn := (@(i)^.mouse.buttons[id]);
  exit (if (Boolean((btn)^.clicked) and Boolean(((btn)^.down = nk_false))) then (nk_true) else (nk_false));
end;

method nk_input_has_mouse_click_in_rect(i: ^__struct_nk_input; id: __enum_nk_buttons; b: __struct_nk_rect): Int32; public;
begin
  var btn: ^__struct_nk_mouse_button;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  btn := (@(i)^.mouse.buttons[id]);
  if not Boolean((Boolean((Boolean((b.x ≤ (btn)^.clicked_pos.x)) and Boolean(((btn)^.clicked_pos.x < (b.x + b.w))))) and Boolean((Boolean((b.y ≤ (btn)^.clicked_pos.y)) and Boolean(((btn)^.clicked_pos.y < (b.y + b.h))))))) then begin
    exit nk_false;
  end;
  exit nk_true;
end;

method nk_input_has_mouse_click_down_in_rect(i: ^__struct_nk_input; id: __enum_nk_buttons; b: __struct_nk_rect; down: Int32): Int32; public;
begin
  var btn: ^__struct_nk_mouse_button;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  btn := (@(i)^.mouse.buttons[id]);
  exit (Boolean(nk_input_has_mouse_click_in_rect(i, id, b)) and Boolean(((btn)^.down = down)));
end;

method nk_input_is_mouse_click_in_rect(i: ^__struct_nk_input; id: __enum_nk_buttons; b: __struct_nk_rect): Int32; public;
begin
  var btn: ^__struct_nk_mouse_button;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  btn := (@(i)^.mouse.buttons[id]);
  exit (if (Boolean(nk_input_has_mouse_click_down_in_rect(i, id, b, nk_false)) and Boolean((btn)^.clicked)) then (nk_true) else (nk_false));
end;

method nk_input_is_mouse_click_down_in_rect(i: ^__struct_nk_input; id: __enum_nk_buttons; b: __struct_nk_rect; down: Int32): Int32; public;
begin
  var btn: ^__struct_nk_mouse_button;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  btn := (@(i)^.mouse.buttons[id]);
  exit (if (Boolean(nk_input_has_mouse_click_down_in_rect(i, id, b, down)) and Boolean((btn)^.clicked)) then (nk_true) else (nk_false));
end;

method nk_input_any_mouse_click_in_rect(&in: ^__struct_nk_input; b: __struct_nk_rect): Int32; public;
begin
  var i: Int32;
  var down: Int32 := 0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < NK_BUTTON_MAX) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    down := (Boolean(down) or Boolean(nk_input_is_mouse_click_in_rect(&in, __enum_nk_buttons(i), b)));
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  exit down;
end;

method nk_input_is_mouse_hovering_rect(i: ^__struct_nk_input; rect: __struct_nk_rect): Int32; public;
begin
  if not Boolean(i) then begin
    exit nk_false;
  end;
  exit (Boolean((Boolean((rect.x ≤ (i)^.mouse.pos.x)) and Boolean(((i)^.mouse.pos.x < (rect.x + rect.w))))) and Boolean((Boolean((rect.y ≤ (i)^.mouse.pos.y)) and Boolean(((i)^.mouse.pos.y < (rect.y + rect.h))))));
end;

method nk_input_is_mouse_prev_hovering_rect(i: ^__struct_nk_input; rect: __struct_nk_rect): Int32; public;
begin
  if not Boolean(i) then begin
    exit nk_false;
  end;
  exit (Boolean((Boolean((rect.x ≤ (i)^.mouse.prev.x)) and Boolean(((i)^.mouse.prev.x < (rect.x + rect.w))))) and Boolean((Boolean((rect.y ≤ (i)^.mouse.prev.y)) and Boolean(((i)^.mouse.prev.y < (rect.y + rect.h))))));
end;

method nk_input_mouse_clicked(i: ^__struct_nk_input; id: __enum_nk_buttons; rect: __struct_nk_rect): Int32; public;
begin
  if not Boolean(i) then begin
    exit nk_false;
  end;
  if not Boolean(nk_input_is_mouse_hovering_rect(i, rect)) then begin
    exit nk_false;
  end;
  exit nk_input_is_mouse_click_in_rect(i, id, rect);
end;

method nk_input_is_mouse_down(i: ^__struct_nk_input; id: __enum_nk_buttons): Int32; public;
begin
  if not Boolean(i) then begin
    exit nk_false;
  end;
  exit (i)^.mouse.buttons[id].down;
end;

method nk_input_is_mouse_pressed(i: ^__struct_nk_input; id: __enum_nk_buttons): Int32; public;
begin
  var b: ^__struct_nk_mouse_button;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  b := (@(i)^.mouse.buttons[id]);
  if (Boolean((b)^.down) and Boolean((b)^.clicked)) then begin
    exit nk_true;
  end;
  exit nk_false;
end;

method nk_input_is_mouse_released(i: ^__struct_nk_input; id: __enum_nk_buttons): Int32; public;
begin
  if not Boolean(i) then begin
    exit nk_false;
  end;
  exit (Boolean(not Boolean((i)^.mouse.buttons[id].down)) and Boolean((i)^.mouse.buttons[id].clicked));
end;

method nk_input_is_key_pressed(i: ^__struct_nk_input; key: __enum_nk_keys): Int32; public;
begin
  var k: ^__struct_nk_key;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  k := (@(i)^.keyboard.keys[key]);
  if (Boolean((Boolean((k)^.down) and Boolean((k)^.clicked))) or Boolean((Boolean(not Boolean((k)^.down)) and Boolean(((k)^.clicked ≥ 2))))) then begin
    exit nk_true;
  end;
  exit nk_false;
end;

method nk_input_is_key_released(i: ^__struct_nk_input; key: __enum_nk_keys): Int32; public;
begin
  var k: ^__struct_nk_key;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  k := (@(i)^.keyboard.keys[key]);
  if (Boolean((Boolean(not Boolean((k)^.down)) and Boolean((k)^.clicked))) or Boolean((Boolean((k)^.down) and Boolean(((k)^.clicked ≥ 2))))) then begin
    exit nk_true;
  end;
  exit nk_false;
end;

method nk_input_is_key_down(i: ^__struct_nk_input; key: __enum_nk_keys): Int32; public;
begin
  var k: ^__struct_nk_key;
  if not Boolean(i) then begin
    exit nk_false;
  end;
  k := (@(i)^.keyboard.keys[key]);
  if (k)^.down then begin
    exit nk_true;
  end;
  exit nk_false;
end;

// ===============================================================
//  *
//  *                              STYLE
//  *
//  * ===============================================================
method nk_style_default(ctx: ^__struct_nk_context); public;
begin
  nk_style_from_table(ctx, 0);
end;

var nk_default_color_style: array[0..NK_COLOR_COUNT - 1] of __struct_nk_color := [[175, 175, 175, 255], [45, 45, 45, 255], [40, 40, 40, 255], [65, 65, 65, 255], [50, 50, 50, 255], [40, 40, 40, 255], [35, 35, 35, 255], [100, 100, 100, 255], [120, 120, 120, 255], [45, 45, 45, 255], [45, 45, 45, 255], [35, 35, 35, 255], [38, 38, 38, 255], [100, 100, 100, 255], [120, 120, 120, 255], [150, 150, 150, 255], [38, 38, 38, 255], [38, 38, 38, 255], [175, 175, 175, 255], [45, 45, 45, 255], [120, 120, 120, 255], [45, 45, 45, 255], [255, 0, 0, 255], [40, 40, 40, 255], [100, 100, 100, 255], [120, 120, 120, 255], [150, 150, 150, 255], [40, 40, 40, 255]]; public;
var nk_color_names: array[0..NK_COLOR_COUNT - 1] of ^Byte := ["NK_COLOR_TEXT", "NK_COLOR_WINDOW", "NK_COLOR_HEADER", "NK_COLOR_BORDER", "NK_COLOR_BUTTON", "NK_COLOR_BUTTON_HOVER", "NK_COLOR_BUTTON_ACTIVE", "NK_COLOR_TOGGLE", "NK_COLOR_TOGGLE_HOVER", "NK_COLOR_TOGGLE_CURSOR", "NK_COLOR_SELECT", "NK_COLOR_SELECT_ACTIVE", "NK_COLOR_SLIDER", "NK_COLOR_SLIDER_CURSOR", "NK_COLOR_SLIDER_CURSOR_HOVER", "NK_COLOR_SLIDER_CURSOR_ACTIVE", "NK_COLOR_PROPERTY", "NK_COLOR_EDIT", "NK_COLOR_EDIT_CURSOR", "NK_COLOR_COMBO", "NK_COLOR_CHART", "NK_COLOR_CHART_COLOR", "NK_COLOR_CHART_COLOR_HIGHLIGHT", "NK_COLOR_SCROLLBAR", "NK_COLOR_SCROLLBAR_CURSOR", "NK_COLOR_SCROLLBAR_CURSOR_HOVER", "NK_COLOR_SCROLLBAR_CURSOR_ACTIVE", "NK_COLOR_TAB_HEADER"]; public;

method nk_style_get_color_by_name(c: __enum_nk_style_colors): ^Byte; public;
begin
  exit nk_color_names[c];
end;

method nk_style_item_image(img: __struct_nk_image): __struct_nk_style_item; public;
begin
  var i: __struct_nk_style_item;
  i.type := NK_STYLE_ITEM_IMAGE;
  i.data.image := img;
  exit i;
end;

method nk_style_item_color(col: __struct_nk_color): __struct_nk_style_item; public;
begin
  var i: __struct_nk_style_item;
  i.type := NK_STYLE_ITEM_COLOR;
  i.data.color := col;
  exit i;
end;

method nk_style_item_hide: __struct_nk_style_item; public;
begin
  var i: __struct_nk_style_item;
  i.type := NK_STYLE_ITEM_COLOR;
  i.data.color := nk_rgba(0, 0, 0, 0);
  exit i;
end;

method nk_style_from_table(ctx: ^__struct_nk_context; table: ^__struct_nk_color); public;
begin
  var style: ^__struct_nk_style;
  var text: ^__struct_nk_style_text;
  var button: ^__struct_nk_style_button;
  var toggle: ^__struct_nk_style_toggle;
  var &select: ^__struct_nk_style_selectable;
  var slider: ^__struct_nk_style_slider;
  var prog: ^__struct_nk_style_progress;
  var scroll: ^__struct_nk_style_scrollbar;
  var edit: ^__struct_nk_style_edit;
  var &property: ^__struct_nk_style_property;
  var combo: ^__struct_nk_style_combo;
  var chart: ^__struct_nk_style_chart;
  var tab: ^__struct_nk_style_tab;
  var win: ^__struct_nk_style_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  style := (@(ctx)^.style);
  table := (if not Boolean(table) then (nk_default_color_style) else (table));
  // default text
  text := (@(style)^.text);
  (text)^.color := table[NK_COLOR_TEXT];
  (text)^.padding := nk_vec2(0, 0);
  // default button
  button := (@(style)^.button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_BUTTON]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_BUTTON_HOVER]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_BUTTON_ACTIVE]);
  (button)^.border_color := table[NK_COLOR_BORDER];
  (button)^.text_background := table[NK_COLOR_BUTTON];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(2.0, 2.0);
  (button)^.image_padding := nk_vec2(0.0, 0.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 1.0;
  (button)^.rounding := 4.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  // contextual button
  button := (@(style)^.contextual_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_BUTTON_HOVER]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_BUTTON_ACTIVE]);
  (button)^.border_color := table[NK_COLOR_WINDOW];
  (button)^.text_background := table[NK_COLOR_WINDOW];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(2.0, 2.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  // menu button
  button := (@(style)^.menu_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.border_color := table[NK_COLOR_WINDOW];
  (button)^.text_background := table[NK_COLOR_WINDOW];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(2.0, 2.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 1.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  // checkbox toggle
  toggle := (@(style)^.checkbox);
  nk_zero((@(toggle)^), sizeOf((toggle)^));
  (toggle)^.normal := nk_style_item_color(table[NK_COLOR_TOGGLE]);
  (toggle)^.hover := nk_style_item_color(table[NK_COLOR_TOGGLE_HOVER]);
  (toggle)^.active := nk_style_item_color(table[NK_COLOR_TOGGLE_HOVER]);
  (toggle)^.cursor_normal := nk_style_item_color(table[NK_COLOR_TOGGLE_CURSOR]);
  (toggle)^.cursor_hover := nk_style_item_color(table[NK_COLOR_TOGGLE_CURSOR]);
  (toggle)^.userdata := nk_handle_ptr(0);
  (toggle)^.text_background := table[NK_COLOR_WINDOW];
  (toggle)^.text_normal := table[NK_COLOR_TEXT];
  (toggle)^.text_hover := table[NK_COLOR_TEXT];
  (toggle)^.text_active := table[NK_COLOR_TEXT];
  (toggle)^.padding := nk_vec2(2.0, 2.0);
  (toggle)^.touch_padding := nk_vec2(0, 0);
  (toggle)^.border_color := nk_rgba(0, 0, 0, 0);
  (toggle)^.border := 0.0;
  (toggle)^.spacing := 4;
  // option toggle
  toggle := (@(style)^.option);
  nk_zero((@(toggle)^), sizeOf((toggle)^));
  (toggle)^.normal := nk_style_item_color(table[NK_COLOR_TOGGLE]);
  (toggle)^.hover := nk_style_item_color(table[NK_COLOR_TOGGLE_HOVER]);
  (toggle)^.active := nk_style_item_color(table[NK_COLOR_TOGGLE_HOVER]);
  (toggle)^.cursor_normal := nk_style_item_color(table[NK_COLOR_TOGGLE_CURSOR]);
  (toggle)^.cursor_hover := nk_style_item_color(table[NK_COLOR_TOGGLE_CURSOR]);
  (toggle)^.userdata := nk_handle_ptr(0);
  (toggle)^.text_background := table[NK_COLOR_WINDOW];
  (toggle)^.text_normal := table[NK_COLOR_TEXT];
  (toggle)^.text_hover := table[NK_COLOR_TEXT];
  (toggle)^.text_active := table[NK_COLOR_TEXT];
  (toggle)^.padding := nk_vec2(3.0, 3.0);
  (toggle)^.touch_padding := nk_vec2(0, 0);
  (toggle)^.border_color := nk_rgba(0, 0, 0, 0);
  (toggle)^.border := 0.0;
  (toggle)^.spacing := 4;
  // selectable
  &select := (@(style)^.selectable);
  nk_zero((@(&select)^), sizeOf((&select)^));
  (&select)^.normal := nk_style_item_color(table[NK_COLOR_SELECT]);
  (&select)^.hover := nk_style_item_color(table[NK_COLOR_SELECT]);
  (&select)^.pressed := nk_style_item_color(table[NK_COLOR_SELECT]);
  (&select)^.normal_active := nk_style_item_color(table[NK_COLOR_SELECT_ACTIVE]);
  (&select)^.hover_active := nk_style_item_color(table[NK_COLOR_SELECT_ACTIVE]);
  (&select)^.pressed_active := nk_style_item_color(table[NK_COLOR_SELECT_ACTIVE]);
  (&select)^.text_normal := table[NK_COLOR_TEXT];
  (&select)^.text_hover := table[NK_COLOR_TEXT];
  (&select)^.text_pressed := table[NK_COLOR_TEXT];
  (&select)^.text_normal_active := table[NK_COLOR_TEXT];
  (&select)^.text_hover_active := table[NK_COLOR_TEXT];
  (&select)^.text_pressed_active := table[NK_COLOR_TEXT];
  (&select)^.padding := nk_vec2(2.0, 2.0);
  (&select)^.image_padding := nk_vec2(2.0, 2.0);
  (&select)^.touch_padding := nk_vec2(0, 0);
  (&select)^.userdata := nk_handle_ptr(0);
  (&select)^.rounding := 0.0;
  (&select)^.draw_begin := 0;
  (&select)^.draw_end := 0;
  // slider
  slider := (@(style)^.slider);
  nk_zero((@(slider)^), sizeOf((slider)^));
  (slider)^.normal := nk_style_item_hide();
  (slider)^.hover := nk_style_item_hide();
  (slider)^.active := nk_style_item_hide();
  (slider)^.bar_normal := table[NK_COLOR_SLIDER];
  (slider)^.bar_hover := table[NK_COLOR_SLIDER];
  (slider)^.bar_active := table[NK_COLOR_SLIDER];
  (slider)^.bar_filled := table[NK_COLOR_SLIDER_CURSOR];
  (slider)^.cursor_normal := nk_style_item_color(table[NK_COLOR_SLIDER_CURSOR]);
  (slider)^.cursor_hover := nk_style_item_color(table[NK_COLOR_SLIDER_CURSOR_HOVER]);
  (slider)^.cursor_active := nk_style_item_color(table[NK_COLOR_SLIDER_CURSOR_ACTIVE]);
  (slider)^.inc_symbol := NK_SYMBOL_TRIANGLE_RIGHT;
  (slider)^.dec_symbol := NK_SYMBOL_TRIANGLE_LEFT;
  (slider)^.cursor_size := nk_vec2(16, 16);
  (slider)^.padding := nk_vec2(2, 2);
  (slider)^.spacing := nk_vec2(2, 2);
  (slider)^.userdata := nk_handle_ptr(0);
  (slider)^.show_buttons := nk_false;
  (slider)^.bar_height := 8;
  (slider)^.rounding := 0;
  (slider)^.draw_begin := 0;
  (slider)^.draw_end := 0;
  // slider buttons
  button := (@(style)^.slider.inc_button);
  (button)^.normal := nk_style_item_color(nk_rgb(40, 40, 40));
  (button)^.hover := nk_style_item_color(nk_rgb(42, 42, 42));
  (button)^.active := nk_style_item_color(nk_rgb(44, 44, 44));
  (button)^.border_color := nk_rgb(65, 65, 65);
  (button)^.text_background := nk_rgb(40, 40, 40);
  (button)^.text_normal := nk_rgb(175, 175, 175);
  (button)^.text_hover := nk_rgb(175, 175, 175);
  (button)^.text_active := nk_rgb(175, 175, 175);
  (button)^.padding := nk_vec2(8.0, 8.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 1.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  (style)^.slider.dec_button := (style)^.slider.inc_button;
  // progressbar
  prog := (@(style)^.progress);
  nk_zero((@(prog)^), sizeOf((prog)^));
  (prog)^.normal := nk_style_item_color(table[NK_COLOR_SLIDER]);
  (prog)^.hover := nk_style_item_color(table[NK_COLOR_SLIDER]);
  (prog)^.active := nk_style_item_color(table[NK_COLOR_SLIDER]);
  (prog)^.cursor_normal := nk_style_item_color(table[NK_COLOR_SLIDER_CURSOR]);
  (prog)^.cursor_hover := nk_style_item_color(table[NK_COLOR_SLIDER_CURSOR_HOVER]);
  (prog)^.cursor_active := nk_style_item_color(table[NK_COLOR_SLIDER_CURSOR_ACTIVE]);
  (prog)^.border_color := nk_rgba(0, 0, 0, 0);
  (prog)^.cursor_border_color := nk_rgba(0, 0, 0, 0);
  (prog)^.userdata := nk_handle_ptr(0);
  (prog)^.padding := nk_vec2(4, 4);
  (prog)^.rounding := 0;
  (prog)^.border := 0;
  (prog)^.cursor_rounding := 0;
  (prog)^.cursor_border := 0;
  (prog)^.draw_begin := 0;
  (prog)^.draw_end := 0;
  // scrollbars
  scroll := (@(style)^.scrollh);
  nk_zero((@(scroll)^), sizeOf((scroll)^));
  (scroll)^.normal := nk_style_item_color(table[NK_COLOR_SCROLLBAR]);
  (scroll)^.hover := nk_style_item_color(table[NK_COLOR_SCROLLBAR]);
  (scroll)^.active := nk_style_item_color(table[NK_COLOR_SCROLLBAR]);
  (scroll)^.cursor_normal := nk_style_item_color(table[NK_COLOR_SCROLLBAR_CURSOR]);
  (scroll)^.cursor_hover := nk_style_item_color(table[NK_COLOR_SCROLLBAR_CURSOR_HOVER]);
  (scroll)^.cursor_active := nk_style_item_color(table[NK_COLOR_SCROLLBAR_CURSOR_ACTIVE]);
  (scroll)^.dec_symbol := NK_SYMBOL_CIRCLE_SOLID;
  (scroll)^.inc_symbol := NK_SYMBOL_CIRCLE_SOLID;
  (scroll)^.userdata := nk_handle_ptr(0);
  (scroll)^.border_color := table[NK_COLOR_SCROLLBAR];
  (scroll)^.cursor_border_color := table[NK_COLOR_SCROLLBAR];
  (scroll)^.padding := nk_vec2(0, 0);
  (scroll)^.show_buttons := nk_false;
  (scroll)^.border := 0;
  (scroll)^.rounding := 0;
  (scroll)^.border_cursor := 0;
  (scroll)^.rounding_cursor := 0;
  (scroll)^.draw_begin := 0;
  (scroll)^.draw_end := 0;
  (style)^.scrollv := (style)^.scrollh;
  // scrollbars buttons
  button := (@(style)^.scrollh.inc_button);
  (button)^.normal := nk_style_item_color(nk_rgb(40, 40, 40));
  (button)^.hover := nk_style_item_color(nk_rgb(42, 42, 42));
  (button)^.active := nk_style_item_color(nk_rgb(44, 44, 44));
  (button)^.border_color := nk_rgb(65, 65, 65);
  (button)^.text_background := nk_rgb(40, 40, 40);
  (button)^.text_normal := nk_rgb(175, 175, 175);
  (button)^.text_hover := nk_rgb(175, 175, 175);
  (button)^.text_active := nk_rgb(175, 175, 175);
  (button)^.padding := nk_vec2(4.0, 4.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 1.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  (style)^.scrollh.dec_button := (style)^.scrollh.inc_button;
  (style)^.scrollv.inc_button := (style)^.scrollh.inc_button;
  (style)^.scrollv.dec_button := (style)^.scrollh.inc_button;
  // edit
  edit := (@(style)^.edit);
  nk_zero((@(edit)^), sizeOf((edit)^));
  (edit)^.normal := nk_style_item_color(table[NK_COLOR_EDIT]);
  (edit)^.hover := nk_style_item_color(table[NK_COLOR_EDIT]);
  (edit)^.active := nk_style_item_color(table[NK_COLOR_EDIT]);
  (edit)^.cursor_normal := table[NK_COLOR_TEXT];
  (edit)^.cursor_hover := table[NK_COLOR_TEXT];
  (edit)^.cursor_text_normal := table[NK_COLOR_EDIT];
  (edit)^.cursor_text_hover := table[NK_COLOR_EDIT];
  (edit)^.border_color := table[NK_COLOR_BORDER];
  (edit)^.text_normal := table[NK_COLOR_TEXT];
  (edit)^.text_hover := table[NK_COLOR_TEXT];
  (edit)^.text_active := table[NK_COLOR_TEXT];
  (edit)^.selected_normal := table[NK_COLOR_TEXT];
  (edit)^.selected_hover := table[NK_COLOR_TEXT];
  (edit)^.selected_text_normal := table[NK_COLOR_EDIT];
  (edit)^.selected_text_hover := table[NK_COLOR_EDIT];
  (edit)^.scrollbar_size := nk_vec2(10, 10);
  (edit)^.scrollbar := (style)^.scrollv;
  (edit)^.padding := nk_vec2(4, 4);
  (edit)^.row_padding := 2;
  (edit)^.cursor_size := 4;
  (edit)^.border := 1;
  (edit)^.rounding := 0;
  // property
  &property := (@(style)^.property);
  nk_zero((@(&property)^), sizeOf((&property)^));
  (&property)^.normal := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (&property)^.hover := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (&property)^.active := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (&property)^.border_color := table[NK_COLOR_BORDER];
  (&property)^.label_normal := table[NK_COLOR_TEXT];
  (&property)^.label_hover := table[NK_COLOR_TEXT];
  (&property)^.label_active := table[NK_COLOR_TEXT];
  (&property)^.sym_left := NK_SYMBOL_TRIANGLE_LEFT;
  (&property)^.sym_right := NK_SYMBOL_TRIANGLE_RIGHT;
  (&property)^.userdata := nk_handle_ptr(0);
  (&property)^.padding := nk_vec2(4, 4);
  (&property)^.border := 1;
  (&property)^.rounding := 10;
  (&property)^.draw_begin := 0;
  (&property)^.draw_end := 0;
  // property buttons
  button := (@(style)^.property.dec_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (button)^.border_color := nk_rgba(0, 0, 0, 0);
  (button)^.text_background := table[NK_COLOR_PROPERTY];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(0.0, 0.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  (style)^.property.inc_button := (style)^.property.dec_button;
  // property edit
  edit := (@(style)^.property.edit);
  nk_zero((@(edit)^), sizeOf((edit)^));
  (edit)^.normal := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (edit)^.hover := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (edit)^.active := nk_style_item_color(table[NK_COLOR_PROPERTY]);
  (edit)^.border_color := nk_rgba(0, 0, 0, 0);
  (edit)^.cursor_normal := table[NK_COLOR_TEXT];
  (edit)^.cursor_hover := table[NK_COLOR_TEXT];
  (edit)^.cursor_text_normal := table[NK_COLOR_EDIT];
  (edit)^.cursor_text_hover := table[NK_COLOR_EDIT];
  (edit)^.text_normal := table[NK_COLOR_TEXT];
  (edit)^.text_hover := table[NK_COLOR_TEXT];
  (edit)^.text_active := table[NK_COLOR_TEXT];
  (edit)^.selected_normal := table[NK_COLOR_TEXT];
  (edit)^.selected_hover := table[NK_COLOR_TEXT];
  (edit)^.selected_text_normal := table[NK_COLOR_EDIT];
  (edit)^.selected_text_hover := table[NK_COLOR_EDIT];
  (edit)^.padding := nk_vec2(0, 0);
  (edit)^.cursor_size := 8;
  (edit)^.border := 0;
  (edit)^.rounding := 0;
  // chart
  chart := (@(style)^.chart);
  nk_zero((@(chart)^), sizeOf((chart)^));
  (chart)^.background := nk_style_item_color(table[NK_COLOR_CHART]);
  (chart)^.border_color := table[NK_COLOR_BORDER];
  (chart)^.selected_color := table[NK_COLOR_CHART_COLOR_HIGHLIGHT];
  (chart)^.color := table[NK_COLOR_CHART_COLOR];
  (chart)^.padding := nk_vec2(4, 4);
  (chart)^.border := 0;
  (chart)^.rounding := 0;
  // combo
  combo := (@(style)^.combo);
  (combo)^.normal := nk_style_item_color(table[NK_COLOR_COMBO]);
  (combo)^.hover := nk_style_item_color(table[NK_COLOR_COMBO]);
  (combo)^.active := nk_style_item_color(table[NK_COLOR_COMBO]);
  (combo)^.border_color := table[NK_COLOR_BORDER];
  (combo)^.label_normal := table[NK_COLOR_TEXT];
  (combo)^.label_hover := table[NK_COLOR_TEXT];
  (combo)^.label_active := table[NK_COLOR_TEXT];
  (combo)^.sym_normal := NK_SYMBOL_TRIANGLE_DOWN;
  (combo)^.sym_hover := NK_SYMBOL_TRIANGLE_DOWN;
  (combo)^.sym_active := NK_SYMBOL_TRIANGLE_DOWN;
  (combo)^.content_padding := nk_vec2(4, 4);
  (combo)^.button_padding := nk_vec2(0, 4);
  (combo)^.spacing := nk_vec2(4, 0);
  (combo)^.border := 1;
  (combo)^.rounding := 0;
  // combo button
  button := (@(style)^.combo.button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_COMBO]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_COMBO]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_COMBO]);
  (button)^.border_color := nk_rgba(0, 0, 0, 0);
  (button)^.text_background := table[NK_COLOR_COMBO];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(2.0, 2.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  // tab
  tab := (@(style)^.tab);
  (tab)^.background := nk_style_item_color(table[NK_COLOR_TAB_HEADER]);
  (tab)^.border_color := table[NK_COLOR_BORDER];
  (tab)^.text := table[NK_COLOR_TEXT];
  (tab)^.sym_minimize := NK_SYMBOL_TRIANGLE_RIGHT;
  (tab)^.sym_maximize := NK_SYMBOL_TRIANGLE_DOWN;
  (tab)^.padding := nk_vec2(4, 4);
  (tab)^.spacing := nk_vec2(4, 4);
  (tab)^.indent := 10.0;
  (tab)^.border := 1;
  (tab)^.rounding := 0;
  // tab button
  button := (@(style)^.tab.tab_minimize_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_TAB_HEADER]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_TAB_HEADER]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_TAB_HEADER]);
  (button)^.border_color := nk_rgba(0, 0, 0, 0);
  (button)^.text_background := table[NK_COLOR_TAB_HEADER];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(2.0, 2.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  (style)^.tab.tab_maximize_button := (button)^;
  // node button
  button := (@(style)^.tab.node_minimize_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (button)^.border_color := nk_rgba(0, 0, 0, 0);
  (button)^.text_background := table[NK_COLOR_TAB_HEADER];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(2.0, 2.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  (style)^.tab.node_maximize_button := (button)^;
  // window header
  win := (@(style)^.window);
  (win)^.header.align := NK_HEADER_RIGHT;
  (win)^.header.close_symbol := NK_SYMBOL_X;
  (win)^.header.minimize_symbol := NK_SYMBOL_MINUS;
  (win)^.header.maximize_symbol := NK_SYMBOL_PLUS;
  (win)^.header.normal := nk_style_item_color(table[NK_COLOR_HEADER]);
  (win)^.header.hover := nk_style_item_color(table[NK_COLOR_HEADER]);
  (win)^.header.active := nk_style_item_color(table[NK_COLOR_HEADER]);
  (win)^.header.label_normal := table[NK_COLOR_TEXT];
  (win)^.header.label_hover := table[NK_COLOR_TEXT];
  (win)^.header.label_active := table[NK_COLOR_TEXT];
  (win)^.header.label_padding := nk_vec2(4, 4);
  (win)^.header.padding := nk_vec2(4, 4);
  (win)^.header.spacing := nk_vec2(0, 0);
  // window header close button
  button := (@(style)^.window.header.close_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_HEADER]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_HEADER]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_HEADER]);
  (button)^.border_color := nk_rgba(0, 0, 0, 0);
  (button)^.text_background := table[NK_COLOR_HEADER];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(0.0, 0.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  // window header minimize button
  button := (@(style)^.window.header.minimize_button);
  nk_zero((@(button)^), sizeOf((button)^));
  (button)^.normal := nk_style_item_color(table[NK_COLOR_HEADER]);
  (button)^.hover := nk_style_item_color(table[NK_COLOR_HEADER]);
  (button)^.active := nk_style_item_color(table[NK_COLOR_HEADER]);
  (button)^.border_color := nk_rgba(0, 0, 0, 0);
  (button)^.text_background := table[NK_COLOR_HEADER];
  (button)^.text_normal := table[NK_COLOR_TEXT];
  (button)^.text_hover := table[NK_COLOR_TEXT];
  (button)^.text_active := table[NK_COLOR_TEXT];
  (button)^.padding := nk_vec2(0.0, 0.0);
  (button)^.touch_padding := nk_vec2(0.0, 0.0);
  (button)^.userdata := nk_handle_ptr(0);
  (button)^.text_alignment := NK_TEXT_CENTERED;
  (button)^.border := 0.0;
  (button)^.rounding := 0.0;
  (button)^.draw_begin := 0;
  (button)^.draw_end := 0;
  // window
  (win)^.background := table[NK_COLOR_WINDOW];
  (win)^.fixed_background := nk_style_item_color(table[NK_COLOR_WINDOW]);
  (win)^.border_color := table[NK_COLOR_BORDER];
  (win)^.popup_border_color := table[NK_COLOR_BORDER];
  (win)^.combo_border_color := table[NK_COLOR_BORDER];
  (win)^.contextual_border_color := table[NK_COLOR_BORDER];
  (win)^.menu_border_color := table[NK_COLOR_BORDER];
  (win)^.group_border_color := table[NK_COLOR_BORDER];
  (win)^.tooltip_border_color := table[NK_COLOR_BORDER];
  (win)^.scaler := nk_style_item_color(table[NK_COLOR_TEXT]);
  (win)^.rounding := 0.0;
  (win)^.spacing := nk_vec2(4, 4);
  (win)^.scrollbar_size := nk_vec2(10, 10);
  (win)^.min_size := nk_vec2(64, 64);
  (win)^.combo_border := 1.0;
  (win)^.contextual_border := 1.0;
  (win)^.menu_border := 1.0;
  (win)^.group_border := 1.0;
  (win)^.tooltip_border := 1.0;
  (win)^.popup_border := 1.0;
  (win)^.border := 2.0;
  (win)^.min_row_height_padding := 8;
  (win)^.padding := nk_vec2(4, 4);
  (win)^.group_padding := nk_vec2(4, 4);
  (win)^.popup_padding := nk_vec2(4, 4);
  (win)^.combo_padding := nk_vec2(4, 4);
  (win)^.contextual_padding := nk_vec2(4, 4);
  (win)^.menu_padding := nk_vec2(4, 4);
  (win)^.tooltip_padding := nk_vec2(4, 4);
end;

method nk_style_set_font(ctx: ^__struct_nk_context; font: ^__struct_nk_user_font); public;
begin
  var style: ^__struct_nk_style;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  style := (@(ctx)^.style);
  (style)^.font := font;
  (ctx)^.stacks.fonts.head := 0;
  if (ctx)^.current then begin
    nk_layout_reset_min_row_height(ctx);
  end;
end;

method nk_style_push_font(ctx: ^__struct_nk_context; font: ^__struct_nk_user_font): Int32; public;
begin
  var font_stack: ^__struct_nk_config_stack_user_font;
  var element: ^__struct_nk_config_stack_user_font_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  font_stack := (@(ctx)^.stacks.fonts);
  assert(((font_stack)^.head < Int32((sizeOf((font_stack)^.elements) / sizeOf((font_stack)^.elements[0])))));
  if ((font_stack)^.head ≥ Int32((sizeOf((font_stack)^.elements) / sizeOf((font_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(font_stack)^.elements[(() -> begin
    var _tmp0 := (font_stack)^.head;
    (font_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := (@(ctx)^.style.font);
  (element)^.old_value := (ctx)^.style.font;
  (ctx)^.style.font := font;
  exit 1;
end;

method nk_style_pop_font(ctx: ^__struct_nk_context): Int32; public;
begin
  var font_stack: ^__struct_nk_config_stack_user_font;
  var element: ^__struct_nk_config_stack_user_font_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  font_stack := (@(ctx)^.stacks.fonts);
  assert(((font_stack)^.head > 0));
  if ((font_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(font_stack)^.elements[(() -> begin
    var _tmp0 := (font_stack)^.head - 1;
    (font_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

// defined: NK_STYLE_PUSH_IMPLEMENATION (prefix,type,stack) nk_style_push_##type(struct nk_context *ctx, prefix##_##type *address, prefix##_##type value)\ {\     struct nk_config_stack_##type * type_stack;\     struct nk_config_stack_##type##_element *element;\     NK_ASSERT(ctx);\     if (!ctx) return 0;\     type_stack = &ctx->stacks.stack;\     NK_ASSERT(type_stack->head < (int)NK_LEN(type_stack->elements));\     if (type_stack->head >= (int)NK_LEN(type_stack->elements))\         return 0;\     element = &type_stack->elements[type_stack->head++];\     element->address = address;\     element->old_value = *address;\     *address = value;\     return 1;\ }
//  defined: NK_STYLE_POP_IMPLEMENATION (type,stack) nk_style_pop_##type(struct nk_context *ctx)\ {\     struct nk_config_stack_##type *type_stack;\     struct nk_config_stack_##type##_element *element;\     NK_ASSERT(ctx);\     if (!ctx) return 0;\     type_stack = &ctx->stacks.stack;\     NK_ASSERT(type_stack->head > 0);\     if (type_stack->head < 1)\         return 0;\     element = &type_stack->elements[--type_stack->head];\     *element->address = element->old_value;\     return 1;\ }
method nk_style_push_style_item(ctx: ^__struct_nk_context; address: ^__struct_nk_style_item; value: __struct_nk_style_item): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_style_item;
  var element: ^__struct_nk_config_stack_style_item_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.style_items);
  assert(((type_stack)^.head < Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))));
  if ((type_stack)^.head ≥ Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head;
    (type_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := address;
  (element)^.old_value := (address)^;
  (address)^ := value;
  exit 1;
end;

method nk_style_push_float(ctx: ^__struct_nk_context; address: ^Single; value: Single): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_float;
  var element: ^__struct_nk_config_stack_float_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.floats);
  assert(((type_stack)^.head < Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))));
  if ((type_stack)^.head ≥ Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head;
    (type_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := address;
  (element)^.old_value := (address)^;
  (address)^ := value;
  exit 1;
end;

method nk_style_push_vec2(ctx: ^__struct_nk_context; address: ^__struct_nk_vec2; value: __struct_nk_vec2): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_vec2;
  var element: ^__struct_nk_config_stack_vec2_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.vectors);
  assert(((type_stack)^.head < Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))));
  if ((type_stack)^.head ≥ Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head;
    (type_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := address;
  (element)^.old_value := (address)^;
  (address)^ := value;
  exit 1;
end;

method nk_style_push_flags(ctx: ^__struct_nk_context; address: ^nk_flags; value: nk_flags): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_flags;
  var element: ^__struct_nk_config_stack_flags_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.flags);
  assert(((type_stack)^.head < Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))));
  if ((type_stack)^.head ≥ Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head;
    (type_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := address;
  (element)^.old_value := (address)^;
  (address)^ := value;
  exit 1;
end;

method nk_style_push_color(ctx: ^__struct_nk_context; address: ^__struct_nk_color; value: __struct_nk_color): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_color;
  var element: ^__struct_nk_config_stack_color_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.colors);
  assert(((type_stack)^.head < Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))));
  if ((type_stack)^.head ≥ Int32((sizeOf((type_stack)^.elements) / sizeOf((type_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head;
    (type_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := address;
  (element)^.old_value := (address)^;
  (address)^ := value;
  exit 1;
end;

method nk_style_pop_style_item(ctx: ^__struct_nk_context): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_style_item;
  var element: ^__struct_nk_config_stack_style_item_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.style_items);
  assert(((type_stack)^.head > 0));
  if ((type_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head - 1;
    (type_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

method nk_style_pop_float(ctx: ^__struct_nk_context): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_float;
  var element: ^__struct_nk_config_stack_float_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.floats);
  assert(((type_stack)^.head > 0));
  if ((type_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head - 1;
    (type_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

method nk_style_pop_vec2(ctx: ^__struct_nk_context): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_vec2;
  var element: ^__struct_nk_config_stack_vec2_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.vectors);
  assert(((type_stack)^.head > 0));
  if ((type_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head - 1;
    (type_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

method nk_style_pop_flags(ctx: ^__struct_nk_context): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_flags;
  var element: ^__struct_nk_config_stack_flags_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.flags);
  assert(((type_stack)^.head > 0));
  if ((type_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head - 1;
    (type_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

method nk_style_pop_color(ctx: ^__struct_nk_context): Int32; public;
begin
  var type_stack: ^__struct_nk_config_stack_color;
  var element: ^__struct_nk_config_stack_color_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  type_stack := (@(ctx)^.stacks.colors);
  assert(((type_stack)^.head > 0));
  if ((type_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(type_stack)^.elements[(() -> begin
    var _tmp0 := (type_stack)^.head - 1;
    (type_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

method nk_style_set_cursor(ctx: ^__struct_nk_context; c: __enum_nk_style_cursor): Int32; public;
begin
  var style: ^__struct_nk_style;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  style := (@(ctx)^.style);
  if (style)^.cursors[c] then begin
    (style)^.cursor_active := (style)^.cursors[c];
    exit 1;
  end;
  exit 0;
end;

method nk_style_show_cursor(ctx: ^__struct_nk_context); public;
begin
  (ctx)^.style.cursor_visible := nk_true;
end;

method nk_style_hide_cursor(ctx: ^__struct_nk_context); public;
begin
  (ctx)^.style.cursor_visible := nk_false;
end;

method nk_style_load_cursor(ctx: ^__struct_nk_context; cursor: __enum_nk_style_cursor; c: ^__struct_nk_cursor); public;
begin
  var style: ^__struct_nk_style;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  style := (@(ctx)^.style);
  (style)^.cursors[cursor] := c;
end;

method nk_style_load_all_cursors(ctx: ^__struct_nk_context; cursors: ^__struct_nk_cursor); public;
begin
  var i: Int32 := 0;
  var style: ^__struct_nk_style;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  style := (@(ctx)^.style);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < NK_CURSOR_COUNT) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    (style)^.cursors[i] := (@cursors[i]);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  (style)^.cursor_visible := nk_true;
end;

// ==============================================================
//  *
//  *                          CONTEXT
//  *
//  * ===============================================================
method nk_setup(ctx: ^__struct_nk_context; font: ^__struct_nk_user_font); public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  nk_zero((@(ctx)^), sizeOf((ctx)^));
  nk_style_default(ctx);
  (ctx)^.seq := 1;
  if font then begin
    (ctx)^.style.font := font;
  end;
end;

method nk_init_default(ctx: ^__struct_nk_context; font: ^__struct_nk_user_font): Int32; public;
begin
  var alloc: __struct_nk_allocator;
  alloc.userdata.ptr := 0;
  alloc.alloc := nk_malloc;
  alloc.free := nk_mfree;
  exit nk_init(ctx, (@alloc), font);
end;

method nk_init_fixed(ctx: ^__struct_nk_context; memory: ^Void; size: nk_size; font: ^__struct_nk_user_font): Int32; public;
begin
  assert(memory);
  if not Boolean(memory) then begin
    exit 0;
  end;
  nk_setup(ctx, font);
  nk_buffer_init_fixed((@(ctx)^.memory), memory, size);
  (ctx)^.use_pool := nk_false;
  exit 1;
end;

method nk_init_custom(ctx: ^__struct_nk_context; cmds: ^__struct_nk_buffer; pool: ^__struct_nk_buffer; font: ^__struct_nk_user_font): Int32; public;
begin
  assert(cmds);
  assert(pool);
  if (Boolean(not Boolean(cmds)) or Boolean(not Boolean(pool))) then begin
    exit 0;
  end;
  nk_setup(ctx, font);
  (ctx)^.memory := (cmds)^;
  if ((pool)^.type = NK_BUFFER_FIXED) then begin
    // take memory from buffer and alloc fixed pool
    nk_pool_init_fixed((@(ctx)^.pool), (pool)^.memory.ptr, (pool)^.memory.size);
  end
  else begin
    // create dynamic pool from buffer allocator
    var alloc: ^__struct_nk_allocator := (@(pool)^.pool);
    nk_pool_init((@(ctx)^.pool), alloc, 16);
  end;
  (ctx)^.use_pool := nk_true;
  exit 1;
end;

method nk_init(ctx: ^__struct_nk_context; alloc: ^__struct_nk_allocator; font: ^__struct_nk_user_font): Int32; public;
begin
  assert(alloc);
  if not Boolean(alloc) then begin
    exit 0;
  end;
  nk_setup(ctx, font);
  nk_buffer_init((@(ctx)^.memory), alloc, (4 * 1024));
  nk_pool_init((@(ctx)^.pool), alloc, 16);
  (ctx)^.use_pool := nk_true;
  exit 1;
end;

method nk_free(ctx: ^__struct_nk_context); public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  nk_buffer_free((@(ctx)^.memory));
  if (ctx)^.use_pool then begin
    nk_pool_free((@(ctx)^.pool));
  end;
  nk_zero((@(ctx)^.input), sizeOf((ctx)^.input));
  nk_zero((@(ctx)^.style), sizeOf((ctx)^.style));
  nk_zero((@(ctx)^.memory), sizeOf((ctx)^.memory));
  (ctx)^.seq := 0;
  (ctx)^.build := 0;
  (ctx)^.begin := 0;
  (ctx)^.end := 0;
  (ctx)^.active := 0;
  (ctx)^.current := 0;
  (ctx)^.freelist := 0;
  (ctx)^.count := 0;
end;

method nk_clear(ctx: ^__struct_nk_context); public;
begin
  var iter: ^__struct_nk_window;
  var next: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  if (ctx)^.use_pool then begin
    nk_buffer_clear((@(ctx)^.memory));
  end
  else begin
    nk_buffer_reset((@(ctx)^.memory), NK_BUFFER_FRONT);
  end;
  (ctx)^.build := 0;
  (ctx)^.memory.calls := 0;
  (ctx)^.last_widget_state := 0;
  (ctx)^.style.cursor_active := (ctx)^.style.cursors[NK_CURSOR_ARROW];
  memset((@(ctx)^.overlay), 0, sizeOf((ctx)^.overlay));
  // garbage collector
  iter := (ctx)^.begin;
  while iter do begin
    // make sure valid minimized windows do not get removed
    if (Boolean((Boolean(((iter)^.flags and NK_WINDOW_MINIMIZED)) and Boolean(not Boolean(((iter)^.flags and NK_WINDOW_CLOSED))))) and Boolean(((iter)^.seq = (ctx)^.seq))) then begin
      iter := (iter)^.next;
      continue;
    end;
    // remove hotness from hidden or closed windows
    if (Boolean((Boolean(((iter)^.flags and NK_WINDOW_HIDDEN)) or Boolean(((iter)^.flags and NK_WINDOW_CLOSED)))) and Boolean((iter = (ctx)^.active))) then begin
      (ctx)^.active := (iter)^.prev;
      (ctx)^.end := (iter)^.prev;
      if not Boolean((ctx)^.end) then begin
        (ctx)^.begin := 0;
      end;
      if (ctx)^.active then begin
        ((ctx)^.active)^.flags := ((ctx)^.active)^.flags and not UInt32(NK_WINDOW_ROM);
      end;
    end;
    // free unused popup windows
    if (Boolean((iter)^.popup.win) and Boolean((((iter)^.popup.win)^.seq ≠ (ctx)^.seq))) then begin
      nk_free_window(ctx, (iter)^.popup.win);
      (iter)^.popup.win := 0;
    end;
    // remove unused window state tables
    begin
      var n: ^__struct_nk_table;
      var it: ^__struct_nk_table := (iter)^.tables;
      while it do begin
        n := (it)^.next;
        if ((it)^.seq ≠ (ctx)^.seq) then begin
          nk_remove_table(iter, it);
          nk_zero(it, sizeOf(__struct_nk_page_data));
          nk_free_table(ctx, it);
          if (it = (iter)^.tables) then begin
            (iter)^.tables := n;
          end;
        end;
        it := n;
      end;
    end;
    // window itself is not used anymore so free
    if (Boolean(((iter)^.seq ≠ (ctx)^.seq)) or Boolean(((iter)^.flags and NK_WINDOW_CLOSED))) then begin
      next := (iter)^.next;
      nk_remove_window(ctx, iter);
      nk_free_window(ctx, iter);
      iter := next;
    end
    else begin
      iter := (iter)^.next;
    end;
  end;
  (ctx)^.seq := (ctx)^.seq + 1;
end;

method nk_start_buffer(ctx: ^__struct_nk_context; buffer: ^__struct_nk_command_buffer); public;
begin
  assert(ctx);
  assert(buffer);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(buffer))) then begin
    exit;
  end;
  (buffer)^.begin := (ctx)^.memory.allocated;
  (buffer)^.end := (buffer)^.begin;
  (buffer)^.last := (buffer)^.begin;
  (buffer)^.clip := nk_null_rect;
end;

method nk_start(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  assert(ctx);
  assert(win);
  nk_start_buffer(ctx, (@(win)^.buffer));
end;

method nk_start_popup(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  var buf: ^__struct_nk_popup_buffer;
  assert(ctx);
  assert(win);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(win))) then begin
    exit;
  end;
  // save buffer fill state for popup
  buf := (@(win)^.popup.buf);
  (buf)^.begin := (win)^.buffer.end;
  (buf)^.end := (win)^.buffer.end;
  (buf)^.parent := (win)^.buffer.last;
  (buf)^.last := (buf)^.begin;
  (buf)^.active := nk_true;
end;

method nk_finish_popup(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  var buf: ^__struct_nk_popup_buffer;
  assert(ctx);
  assert(win);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(win))) then begin
    exit;
  end;
  buf := (@(win)^.popup.buf);
  (buf)^.last := (win)^.buffer.last;
  (buf)^.end := (win)^.buffer.end;
end;

method nk_finish_buffer(ctx: ^__struct_nk_context; buffer: ^__struct_nk_command_buffer); public;
begin
  assert(ctx);
  assert(buffer);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(buffer))) then begin
    exit;
  end;
  (buffer)^.end := (ctx)^.memory.allocated;
end;

method nk_finish(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  var buf: ^__struct_nk_popup_buffer;
  var parent_last: ^__struct_nk_command;
  var memory: ^Void;
  assert(ctx);
  assert(win);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(win))) then begin
    exit;
  end;
  nk_finish_buffer(ctx, (@(win)^.buffer));
  if not Boolean((win)^.popup.buf.active) then begin
    exit;
  end;
  buf := (@(win)^.popup.buf);
  memory := (ctx)^.memory.memory.ptr;
  parent_last := ^__struct_nk_command(^Void((^nk_byte(memory) + (buf)^.parent)));
  (parent_last)^.next := (buf)^.end;
end;

method nk_build(ctx: ^__struct_nk_context); public;
begin
  var it: ^__struct_nk_window := 0;
  var cmd: ^__struct_nk_command := 0;
  var buffer: ^nk_byte := 0;
  // draw cursor overlay
  if not Boolean((ctx)^.style.cursor_active) then begin
    (ctx)^.style.cursor_active := (ctx)^.style.cursors[NK_CURSOR_ARROW];
  end;
  if (Boolean((Boolean((ctx)^.style.cursor_active) and Boolean(not Boolean((ctx)^.input.mouse.grabbed)))) and Boolean((ctx)^.style.cursor_visible)) then begin
    var mouse_bounds: __struct_nk_rect;
    var cursor: ^__struct_nk_cursor := (ctx)^.style.cursor_active;
    nk_command_buffer_init((@(ctx)^.overlay), (@(ctx)^.memory), NK_CLIPPING_OFF);
    nk_start_buffer(ctx, (@(ctx)^.overlay));
    mouse_bounds.x := ((ctx)^.input.mouse.pos.x - (cursor)^.offset.x);
    mouse_bounds.y := ((ctx)^.input.mouse.pos.y - (cursor)^.offset.y);
    mouse_bounds.w := (cursor)^.size.x;
    mouse_bounds.h := (cursor)^.size.y;
    nk_draw_image((@(ctx)^.overlay), mouse_bounds, (@(cursor)^.img), nk_white);
    nk_finish_buffer(ctx, (@(ctx)^.overlay));
  end;
  // build one big draw command list out of all window buffers
  it := (ctx)^.begin;
  buffer := ^nk_byte((ctx)^.memory.memory.ptr);
  while (it ≠ 0) do begin
    var next: ^__struct_nk_window := (it)^.next;
    if (Boolean((Boolean(((it)^.buffer.last = (it)^.buffer.begin)) or Boolean(((it)^.flags and NK_WINDOW_HIDDEN)))) or Boolean(((it)^.seq ≠ (ctx)^.seq))) then begin
      goto cont;
    end;
    begin
    end;
    cmd := ^__struct_nk_command(^Void((^nk_byte(buffer) + (it)^.buffer.last)));
    while (Boolean(next) and Boolean((Boolean((Boolean(((next)^.buffer.last = (next)^.buffer.begin)) or Boolean(((next)^.flags and NK_WINDOW_HIDDEN)))) or Boolean(((next)^.seq ≠ (ctx)^.seq))))) do
      next := (next)^.next;
    // skip empty command buffers
    if next then begin
      (cmd)^.next := (next)^.buffer.begin;
    end;
    cont:;
    it := next;
  end;
  // append all popup draw commands into lists
  it := (ctx)^.begin;
  while (it ≠ 0) do begin
    var next: ^__struct_nk_window := (it)^.next;
    var buf: ^__struct_nk_popup_buffer;
    if not Boolean((it)^.popup.buf.active) then begin
      goto skip;
    end;
    begin
    end;
    buf := (@(it)^.popup.buf);
    (cmd)^.next := (buf)^.begin;
    cmd := ^__struct_nk_command(^Void((^nk_byte(buffer) + (buf)^.last)));
    (buf)^.active := nk_false;
    skip:;
    it := next;
  end;
  if cmd then begin
    // append overlay commands
    if ((ctx)^.overlay.end ≠ (ctx)^.overlay.begin) then begin
      (cmd)^.next := (ctx)^.overlay.begin;
    end
    else begin
      (cmd)^.next := (ctx)^.memory.allocated;
    end;
  end;
end;

method nk__begin(ctx: ^__struct_nk_context): ^__struct_nk_command; public;
begin
  var iter: ^__struct_nk_window;
  var buffer: ^nk_byte;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  if not Boolean((ctx)^.count) then begin
    exit 0;
  end;
  buffer := ^nk_byte((ctx)^.memory.memory.ptr);
  if not Boolean((ctx)^.build) then begin
    nk_build(ctx);
    (ctx)^.build := nk_true;
  end;
  iter := (ctx)^.begin;
  while (Boolean(iter) and Boolean((Boolean((Boolean(((iter)^.buffer.begin = (iter)^.buffer.end)) or Boolean(((iter)^.flags and NK_WINDOW_HIDDEN)))) or Boolean(((iter)^.seq ≠ (ctx)^.seq))))) do
    iter := (iter)^.next;
  if not Boolean(iter) then begin
    exit 0;
  end;
  exit ^__struct_nk_command(^Void((^nk_byte(buffer) + (iter)^.buffer.begin)));
end;

method nk__next(ctx: ^__struct_nk_context; cmd: ^__struct_nk_command): ^__struct_nk_command; public;
begin
  var buffer: ^nk_byte;
  var next: ^__struct_nk_command;
  assert(ctx);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(cmd)))) or Boolean(not Boolean((ctx)^.count))) then begin
    exit 0;
  end;
  if ((cmd)^.next ≥ (ctx)^.memory.allocated) then begin
    exit 0;
  end;
  buffer := ^nk_byte((ctx)^.memory.memory.ptr);
  next := ^__struct_nk_command(^Void((^nk_byte(buffer) + (cmd)^.next)));
  exit next;
end;

// ===============================================================
//  *
//  *                              POOL
//  *
//  * ===============================================================
method nk_pool_init(pool: ^__struct_nk_pool; alloc: ^__struct_nk_allocator; capacity: UInt32); public;
begin
  nk_zero(pool, sizeOf((pool)^));
  (pool)^.alloc := (alloc)^;
  (pool)^.capacity := capacity;
  (pool)^.type := NK_BUFFER_DYNAMIC;
  (pool)^.pages := 0;
end;

method nk_pool_free(pool: ^__struct_nk_pool); public;
begin
  var iter: ^__struct_nk_page := (pool)^.pages;
  if not Boolean(pool) then begin
    exit;
  end;
  if ((pool)^.type = NK_BUFFER_FIXED) then begin
    exit;
  end;
  while iter do begin
    var next: ^__struct_nk_page := (iter)^.next;
    (pool)^.alloc.free((pool)^.alloc.userdata, iter);
    iter := next;
  end;
end;

method nk_pool_init_fixed(pool: ^__struct_nk_pool; memory: ^Void; size: nk_size); public;
begin
  nk_zero(pool, sizeOf((pool)^));
  assert((size ≥ sizeOf(__struct_nk_page)));
  if (size < sizeOf(__struct_nk_page)) then begin
    exit;
  end;
  (pool)^.capacity := (UInt32((size - sizeOf(__struct_nk_page))) / sizeOf(__struct_nk_page_element));
  (pool)^.pages := ^__struct_nk_page(memory);
  (pool)^.type := NK_BUFFER_FIXED;
  (pool)^.size := size;
end;

method nk_pool_alloc(pool: ^__struct_nk_pool): ^__struct_nk_page_element; public;
begin
  if (Boolean(not Boolean((pool)^.pages)) or Boolean((((pool)^.pages)^.size ≥ (pool)^.capacity))) then begin
    // allocate new page
    var page: ^__struct_nk_page;
    if ((pool)^.type = NK_BUFFER_FIXED) then begin
      assert((pool)^.pages);
      if not Boolean((pool)^.pages) then begin
        exit 0;
      end;
      assert((((pool)^.pages)^.size < (pool)^.capacity));
      exit 0;
    end
    else begin
      var size: nk_size := sizeOf(__struct_nk_page);
      size := size + (16 * sizeOf(__struct_nk_page_data));
      page := ^__struct_nk_page((pool)^.alloc.alloc((pool)^.alloc.userdata, 0, size));
      (page)^.next := (pool)^.pages;
      (pool)^.pages := page;
      (page)^.size := 0;
    end;
  end;
  exit (@((pool)^.pages)^.win[(() -> begin
    var _tmp1 := ((pool)^.pages)^.size;
    ((pool)^.pages)^.size := _tmp1 + 1;
    exit _tmp1;
  end)()]);
end;

// ===============================================================
//  *
//  *                          PAGE ELEMENT
//  *
//  * ===============================================================
method nk_create_page_element(ctx: ^__struct_nk_context): ^__struct_nk_page_element; public;
begin
  var elem: ^__struct_nk_page_element;
  if (ctx)^.freelist then begin
    // unlink page element from free list
    elem := (ctx)^.freelist;
    (ctx)^.freelist := (elem)^.next;
  end
  else begin
    if (ctx)^.use_pool then begin
      // allocate page element from memory pool
      elem := nk_pool_alloc((@(ctx)^.pool));
      assert(elem);
      if not Boolean(elem) then begin
        exit 0;
      end;
    end
    else begin
      // allocate new page element from back of fixed size memory buffer
      var size: nk_size := sizeOf(__struct_nk_page_element);
      var align: nk_size := (^Byte((@(^anontype_16(0))^._h)) - ^Byte(0));
      elem := ^__struct_nk_page_element(nk_buffer_alloc((@(ctx)^.memory), NK_BUFFER_BACK, size, align));
      assert(elem);
      if not Boolean(elem) then begin
        exit 0;
      end;
    end;
  end;
  nk_zero((@(elem)^), sizeOf((elem)^));
  (elem)^.next := 0;
  (elem)^.prev := 0;
  exit elem;
end;

method nk_link_page_element_into_freelist(ctx: ^__struct_nk_context; elem: ^__struct_nk_page_element); public;
begin
  // link table into freelist
  if not Boolean((ctx)^.freelist) then begin
    (ctx)^.freelist := elem;
  end
  else begin
    (elem)^.next := (ctx)^.freelist;
    (ctx)^.freelist := elem;
  end;
end;

method nk_free_page_element(ctx: ^__struct_nk_context; elem: ^__struct_nk_page_element); public;
begin
  // we have a pool so just add to free list
  if (ctx)^.use_pool then begin
    nk_link_page_element_into_freelist(ctx, elem);
    exit;
  end;
  // if possible remove last element from back of fixed memory buffer
  begin
    var elem_end: ^Void := ^Void((elem + 1));
    var buffer_end: ^Void := (^nk_byte((ctx)^.memory.memory.ptr) + (ctx)^.memory.size);
    if (elem_end = buffer_end) then begin
      (ctx)^.memory.size := (ctx)^.memory.size - sizeOf(__struct_nk_page_element);
    end
    else begin
      nk_link_page_element_into_freelist(ctx, elem);
    end;
  end;
end;

// ===============================================================
//  *
//  *                              TABLE
//  *
//  * ===============================================================
method nk_create_table(ctx: ^__struct_nk_context): ^__struct_nk_table; public;
begin
  var elem: ^__struct_nk_page_element;
  elem := nk_create_page_element(ctx);
  if not Boolean(elem) then begin
    exit 0;
  end;
  nk_zero((@(elem)^), sizeOf((elem)^));
  exit (@(elem)^.data.tbl);
end;

method nk_free_table(ctx: ^__struct_nk_context; tbl: ^__struct_nk_table); public;
begin
  var pd: ^__struct_nk_page_data := ^__struct_nk_page_data(^Void((^Byte((if 1 then (tbl) else ((@(^__struct_nk_page_data(0))^.tbl)))) - nk_ptr((@(^__struct_nk_page_data(0))^.tbl)))));
  var pe: ^__struct_nk_page_element := ^__struct_nk_page_element(^Void((^Byte((if 1 then (pd) else ((@(^__struct_nk_page_element(0))^.data)))) - nk_ptr((@(^__struct_nk_page_element(0))^.data)))));
  nk_free_page_element(ctx, pe);
end;

method nk_push_table(win: ^__struct_nk_window; tbl: ^__struct_nk_table); public;
begin
  if not Boolean((win)^.tables) then begin
    (win)^.tables := tbl;
    (tbl)^.next := 0;
    (tbl)^.prev := 0;
    (tbl)^.size := 0;
    (win)^.table_count := 1;
    exit;
  end;
  ((win)^.tables)^.prev := tbl;
  (tbl)^.next := (win)^.tables;
  (tbl)^.prev := 0;
  (tbl)^.size := 0;
  (win)^.tables := tbl;
  (win)^.table_count := (win)^.table_count + 1;
end;

method nk_remove_table(win: ^__struct_nk_window; tbl: ^__struct_nk_table); public;
begin
  if ((win)^.tables = tbl) then begin
    (win)^.tables := (tbl)^.next;
  end;
  if (tbl)^.next then begin
    ((tbl)^.next)^.prev := (tbl)^.prev;
  end;
  if (tbl)^.prev then begin
    ((tbl)^.prev)^.next := (tbl)^.next;
  end;
  (tbl)^.next := 0;
  (tbl)^.prev := 0;
end;

method nk_add_value(ctx: ^__struct_nk_context; win: ^__struct_nk_window; name: nk_hash; value: nk_uint): ^nk_uint; public;
begin
  assert(ctx);
  assert(win);
  if (Boolean(not Boolean(win)) or Boolean(not Boolean(ctx))) then begin
    exit 0;
  end;
  if (Boolean(not Boolean((win)^.tables)) or Boolean((((win)^.tables)^.size ≥ (((if (sizeOf(__struct_nk_window) < sizeOf(__struct_nk_panel)) then (sizeOf(__struct_nk_panel)) else (sizeOf(__struct_nk_window))) / sizeOf(nk_uint)) / 2)))) then begin
    var tbl: ^__struct_nk_table := nk_create_table(ctx);
    assert(tbl);
    if not Boolean(tbl) then begin
      exit 0;
    end;
    nk_push_table(win, tbl);
  end;
  ((win)^.tables)^.seq := (win)^.seq;
  ((win)^.tables)^.keys[((win)^.tables)^.size] := name;
  ((win)^.tables)^.values[((win)^.tables)^.size] := value;
  exit (@((win)^.tables)^.values[(() -> begin
    var _tmp0 := ((win)^.tables)^.size;
    ((win)^.tables)^.size := _tmp0 + 1;
    exit _tmp0;
  end)()]);
end;

method nk_find_value(win: ^__struct_nk_window; name: nk_hash): ^nk_uint; public;
begin
  var iter: ^__struct_nk_table := (win)^.tables;
  while iter do begin
    var i: UInt32 := 0;
    var size: UInt32 := (iter)^.size;
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < size) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        if ((iter)^.keys[i] = name) then begin
          (iter)^.seq := (win)^.seq;
          exit (@(iter)^.values[i]);
        end;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    size := (((if (sizeOf(__struct_nk_window) < sizeOf(__struct_nk_panel)) then (sizeOf(__struct_nk_panel)) else (sizeOf(__struct_nk_window))) / sizeOf(nk_uint)) / 2);
    iter := (iter)^.next;
  end;
  exit 0;
end;

// ===============================================================
//  *
//  *                              PANEL
//  *
//  * ===============================================================
method nk_create_panel(ctx: ^__struct_nk_context): ^Void; public;
begin
  var elem: ^__struct_nk_page_element;
  elem := nk_create_page_element(ctx);
  if not Boolean(elem) then begin
    exit 0;
  end;
  nk_zero((@(elem)^), sizeOf((elem)^));
  exit (@(elem)^.data.pan);
end;

method nk_free_panel(ctx: ^__struct_nk_context; pan: ^__struct_nk_panel); public;
begin
  var pd: ^__struct_nk_page_data := ^__struct_nk_page_data(^Void((^Byte((if 1 then (pan) else ((@(^__struct_nk_page_data(0))^.pan)))) - nk_ptr((@(^__struct_nk_page_data(0))^.pan)))));
  var pe: ^__struct_nk_page_element := ^__struct_nk_page_element(^Void((^Byte((if 1 then (pd) else ((@(^__struct_nk_page_element(0))^.data)))) - nk_ptr((@(^__struct_nk_page_element(0))^.data)))));
  nk_free_page_element(ctx, pe);
end;

method nk_panel_has_header(&flags: nk_flags; title: ^Byte): Int32; public;
begin
  var active: Int32 := 0;
  active := (&flags and (NK_WINDOW_CLOSABLE or NK_WINDOW_MINIMIZABLE));
  active := (Boolean(active) or Boolean((&flags and NK_WINDOW_TITLE)));
  active := (Boolean((Boolean(active) and Boolean(not Boolean((&flags and NK_WINDOW_HIDDEN))))) and Boolean(title));
  exit active;
end;

method nk_panel_get_padding(style: ^__struct_nk_style; &type: __enum_nk_panel_type): __struct_nk_vec2; public;
begin
  case &type of
    NK_PANEL_WINDOW: begin
        goto switch0_0;
      end;
    NK_PANEL_GROUP: begin
        goto switch0_1;
      end;
    NK_PANEL_POPUP: begin
        goto switch0_2;
      end;
    NK_PANEL_CONTEXTUAL: begin
        goto switch0_3;
      end;
    NK_PANEL_COMBO: begin
        goto switch0_4;
      end;
    NK_PANEL_MENU: begin
        goto switch0_5;
      end;
    NK_PANEL_TOOLTIP: begin
        goto switch0_6;
      end;
    else begin
      goto switch0_default;
    end;
  end;
  goto _breaklabelswitch0;
  switch0_default:;
  switch0_0:;
  exit (style)^.window.padding;
  switch0_1:;
  exit (style)^.window.group_padding;
  switch0_2:;
  exit (style)^.window.popup_padding;
  switch0_3:;
  exit (style)^.window.contextual_padding;
  switch0_4:;
  exit (style)^.window.combo_padding;
  switch0_5:;
  exit (style)^.window.menu_padding;
  switch0_6:;
  exit (style)^.window.menu_padding;
  _breaklabelswitch0:;
end;

method nk_panel_get_border(style: ^__struct_nk_style; &flags: nk_flags; &type: __enum_nk_panel_type): Single; public;
begin
  if (&flags and NK_WINDOW_BORDER) then begin
    begin
      case &type of
        NK_PANEL_WINDOW: begin
            goto switch0_0;
          end;
        NK_PANEL_GROUP: begin
            goto switch0_1;
          end;
        NK_PANEL_POPUP: begin
            goto switch0_2;
          end;
        NK_PANEL_CONTEXTUAL: begin
            goto switch0_3;
          end;
        NK_PANEL_COMBO: begin
            goto switch0_4;
          end;
        NK_PANEL_MENU: begin
            goto switch0_5;
          end;
        NK_PANEL_TOOLTIP: begin
            goto switch0_6;
          end;
        else begin
          goto switch0_default;
        end;
      end;
      goto _breaklabelswitch0;
      switch0_default:;
      switch0_0:;
      exit (style)^.window.border;
      switch0_1:;
      exit (style)^.window.group_border;
      switch0_2:;
      exit (style)^.window.popup_border;
      switch0_3:;
      exit (style)^.window.contextual_border;
      switch0_4:;
      exit (style)^.window.combo_border;
      switch0_5:;
      exit (style)^.window.menu_border;
      switch0_6:;
      exit (style)^.window.menu_border;
      _breaklabelswitch0:;
    end;
  end
  else begin
    exit 0;
  end;
end;

method nk_panel_get_border_color(style: ^__struct_nk_style; &type: __enum_nk_panel_type): __struct_nk_color; public;
begin
  case &type of
    NK_PANEL_WINDOW: begin
        goto switch0_0;
      end;
    NK_PANEL_GROUP: begin
        goto switch0_1;
      end;
    NK_PANEL_POPUP: begin
        goto switch0_2;
      end;
    NK_PANEL_CONTEXTUAL: begin
        goto switch0_3;
      end;
    NK_PANEL_COMBO: begin
        goto switch0_4;
      end;
    NK_PANEL_MENU: begin
        goto switch0_5;
      end;
    NK_PANEL_TOOLTIP: begin
        goto switch0_6;
      end;
    else begin
      goto switch0_default;
    end;
  end;
  goto _breaklabelswitch0;
  switch0_default:;
  switch0_0:;
  exit (style)^.window.border_color;
  switch0_1:;
  exit (style)^.window.group_border_color;
  switch0_2:;
  exit (style)^.window.popup_border_color;
  switch0_3:;
  exit (style)^.window.contextual_border_color;
  switch0_4:;
  exit (style)^.window.combo_border_color;
  switch0_5:;
  exit (style)^.window.menu_border_color;
  switch0_6:;
  exit (style)^.window.menu_border_color;
  _breaklabelswitch0:;
end;

method nk_panel_is_sub(&type: __enum_nk_panel_type): Int32; public;
begin
  exit (if (&type and NK_PANEL_SET_SUB) then (1) else (0));
end;

method nk_panel_is_nonblock(&type: __enum_nk_panel_type): Int32; public;
begin
  exit (if (&type and NK_PANEL_SET_NONBLOCK) then (1) else (0));
end;

method nk_panel_begin(ctx: ^__struct_nk_context; title: ^Byte; panel_type: __enum_nk_panel_type): Int32; public;
begin
  var &in: ^__struct_nk_input;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &out: ^__struct_nk_command_buffer;
  var style: ^__struct_nk_style;
  var font: ^__struct_nk_user_font;
  var scrollbar_size: __struct_nk_vec2;
  var panel_padding: __struct_nk_vec2;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  nk_zero(((ctx)^.current)^.layout, sizeOf((((ctx)^.current)^.layout)^));
  if (Boolean((((ctx)^.current)^.flags and NK_WINDOW_HIDDEN)) or Boolean((((ctx)^.current)^.flags and NK_WINDOW_CLOSED))) then begin
    nk_zero(((ctx)^.current)^.layout, sizeOf(__struct_nk_panel));
    (((ctx)^.current)^.layout)^.type := panel_type;
    exit 0;
  end;
  // pull state into local stack
  style := (@(ctx)^.style);
  font := (style)^.font;
  win := (ctx)^.current;
  layout := (win)^.layout;
  &out := (@(win)^.buffer);
  &in := (if ((win)^.flags and NK_WINDOW_NO_INPUT) then (0) else ((@(ctx)^.input)));
  // pull style configuration into local stack
  scrollbar_size := (style)^.window.scrollbar_size;
  panel_padding := nk_panel_get_padding(style, panel_type);
  // window movement
  if (Boolean(((win)^.flags and NK_WINDOW_MOVABLE)) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_ROM)))) then begin
    var left_mouse_down: Int32;
    var left_mouse_clicked: Int32;
    var left_mouse_click_in_cursor: Int32;
    // calculate draggable window space
    var header: __struct_nk_rect;
    header.x := (win)^.bounds.x;
    header.y := (win)^.bounds.y;
    header.w := (win)^.bounds.w;
    if nk_panel_has_header((win)^.flags, title) then begin
      header.h := ((font)^.height + (2.0 * (style)^.window.header.padding.y));
      header.h := header.h + (2.0 * (style)^.window.header.label_padding.y);
    end
    else begin
      header.h := panel_padding.y;
    end;
    // window movement by dragging
    left_mouse_down := (&in)^.mouse.buttons[NK_BUTTON_LEFT].down;
    left_mouse_clicked := Int32((&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked);
    left_mouse_click_in_cursor := nk_input_has_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, header, nk_true);
    if (Boolean((Boolean(left_mouse_down) and Boolean(left_mouse_click_in_cursor))) and Boolean(not Boolean(left_mouse_clicked))) then begin
      (win)^.bounds.x := ((win)^.bounds.x + (&in)^.mouse.delta.x);
      (win)^.bounds.y := ((win)^.bounds.y + (&in)^.mouse.delta.y);
      (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.x := (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.x + (&in)^.mouse.delta.x;
      (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.y := (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.y + (&in)^.mouse.delta.y;
      (ctx)^.style.cursor_active := (ctx)^.style.cursors[NK_CURSOR_MOVE];
    end;
  end;
  // setup panel
  (layout)^.type := panel_type;
  (layout)^.flags := (win)^.flags;
  (layout)^.bounds := (win)^.bounds;
  (layout)^.bounds.x := (layout)^.bounds.x + panel_padding.x;
  (layout)^.bounds.w := (layout)^.bounds.w - (2 * panel_padding.x);
  if ((win)^.flags and NK_WINDOW_BORDER) then begin
    (layout)^.border := nk_panel_get_border(style, (win)^.flags, panel_type);
    (layout)^.bounds := nk_shrink_rect((layout)^.bounds, (layout)^.border);
  end
  else begin
    (layout)^.border := 0;
  end;
  (layout)^.at_y := (layout)^.bounds.y;
  (layout)^.at_x := (layout)^.bounds.x;
  (layout)^.max_x := 0;
  (layout)^.header_height := 0;
  (layout)^.footer_height := 0;
  nk_layout_reset_min_row_height(ctx);
  (layout)^.row.index := 0;
  (layout)^.row.columns := 0;
  (layout)^.row.ratio := 0;
  (layout)^.row.item_width := 0;
  (layout)^.row.tree_depth := 0;
  (layout)^.row.height := panel_padding.y;
  (layout)^.has_scrolling := nk_true;
  if not Boolean(((win)^.flags and NK_WINDOW_NO_SCROLLBAR)) then begin
    (layout)^.bounds.w := (layout)^.bounds.w - scrollbar_size.x;
  end;
  if not Boolean(nk_panel_is_nonblock(panel_type)) then begin
    (layout)^.footer_height := 0;
    if (Boolean(not Boolean(((win)^.flags and NK_WINDOW_NO_SCROLLBAR))) or Boolean(((win)^.flags and NK_WINDOW_SCALABLE))) then begin
      (layout)^.footer_height := scrollbar_size.y;
    end;
    (layout)^.bounds.h := (layout)^.bounds.h - (layout)^.footer_height;
  end;
  // panel header
  if nk_panel_has_header((win)^.flags, title) then begin
    var text: __struct_nk_text;
    var header: __struct_nk_rect;
    var background: ^__struct_nk_style_item := 0;
    // calculate header bounds
    header.x := (win)^.bounds.x;
    header.y := (win)^.bounds.y;
    header.w := (win)^.bounds.w;
    header.h := ((font)^.height + (2.0 * (style)^.window.header.padding.y));
    header.h := header.h + (2.0 * (style)^.window.header.label_padding.y);
    // shrink panel by header
    (layout)^.header_height := header.h;
    (layout)^.bounds.y := (layout)^.bounds.y + header.h;
    (layout)^.bounds.h := (layout)^.bounds.h - header.h;
    (layout)^.at_y := (layout)^.at_y + header.h;
    // select correct header background and text color
    if ((ctx)^.active = win) then begin
      background := (@(style)^.window.header.active);
      text.text := (style)^.window.header.label_active;
    end
    else begin
      if nk_input_is_mouse_hovering_rect((@(ctx)^.input), header) then begin
        background := (@(style)^.window.header.hover);
        text.text := (style)^.window.header.label_hover;
      end
      else begin
        background := (@(style)^.window.header.normal);
        text.text := (style)^.window.header.label_normal;
      end;
    end;
    // draw header background
    header.h := header.h + 1.0;
    if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
      text.background := nk_rgba(0, 0, 0, 0);
      nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
    end
    else begin
      text.background := (background)^.data.color;
      nk_fill_rect(&out, header, 0, (background)^.data.color);
    end;
    // window close button
    begin
      var button: __struct_nk_rect;
      button.y := (header.y + (style)^.window.header.padding.y);
      button.h := (header.h - (2 * (style)^.window.header.padding.y));
      button.w := button.h;
      if ((win)^.flags and NK_WINDOW_CLOSABLE) then begin
        var ws: nk_flags := 0;
        if ((style)^.window.header.align = NK_HEADER_RIGHT) then begin
          button.x := ((header.w + header.x) - (button.w + (style)^.window.header.padding.x));
          header.w := header.w - ((button.w + (style)^.window.header.spacing.x) + (style)^.window.header.padding.x);
        end
        else begin
          button.x := (header.x + (style)^.window.header.padding.x);
          header.x := header.x + ((button.w + (style)^.window.header.spacing.x) + (style)^.window.header.padding.x);
        end;
        if (Boolean(nk_do_button_symbol((@ws), (@(win)^.buffer), button, (style)^.window.header.close_symbol, NK_BUTTON_DEFAULT, (@(style)^.window.header.close_button), &in, (style)^.font)) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_ROM)))) then begin
          (layout)^.flags := (layout)^.flags or NK_WINDOW_HIDDEN;
          (layout)^.flags := (layout)^.flags and nk_flags(not NK_WINDOW_MINIMIZED);
        end;
      end;
      // window minimize button
      if ((win)^.flags and NK_WINDOW_MINIMIZABLE) then begin
        var ws: nk_flags := 0;
        if ((style)^.window.header.align = NK_HEADER_RIGHT) then begin
          button.x := ((header.w + header.x) - button.w);
          if not Boolean(((win)^.flags and NK_WINDOW_CLOSABLE)) then begin
            button.x := button.x - (style)^.window.header.padding.x;
            header.w := header.w - (style)^.window.header.padding.x;
          end;
          header.w := header.w - (button.w + (style)^.window.header.spacing.x);
        end
        else begin
          button.x := header.x;
          header.x := header.x + ((button.w + (style)^.window.header.spacing.x) + (style)^.window.header.padding.x);
        end;
        if (Boolean(nk_do_button_symbol((@ws), (@(win)^.buffer), button, (if ((layout)^.flags and NK_WINDOW_MINIMIZED) then ((style)^.window.header.maximize_symbol) else ((style)^.window.header.minimize_symbol)), NK_BUTTON_DEFAULT, (@(style)^.window.header.minimize_button), &in, (style)^.font)) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_ROM)))) then begin
          (layout)^.flags := (if ((layout)^.flags and NK_WINDOW_MINIMIZED) then (((layout)^.flags and nk_flags(not NK_WINDOW_MINIMIZED))) else (((layout)^.flags or NK_WINDOW_MINIMIZED)));
        end;
      end;
    end;
    begin
      // window header title
      var text_len: Int32 := nk_strlen(title);
      var label: __struct_nk_rect := [0, 0, 0, 0];
      var t: Single := (font)^.width((font)^.userdata, (font)^.height, title, text_len);
      text.padding := nk_vec2(0, 0);
      label.x := (header.x + (style)^.window.header.padding.x);
      label.x := label.x + (style)^.window.header.label_padding.x;
      label.y := (header.y + (style)^.window.header.label_padding.y);
      label.h := ((font)^.height + (2 * (style)^.window.header.label_padding.y));
      label.w := (t + (2 * (style)^.window.header.spacing.x));
      label.w := (if ((if (label.w < ((header.x + header.w) - label.x)) then (label.w) else (((header.x + header.w) - label.x))) < 0) then (0) else ((if (label.w < ((header.x + header.w) - label.x)) then (label.w) else (((header.x + header.w) - label.x)))));
      nk_widget_text(&out, label, ^Byte(title), text_len, (@text), NK_TEXT_LEFT, font);
    end;
  end;
  // draw window background
  if (Boolean(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED))) and Boolean(not Boolean(((layout)^.flags and NK_WINDOW_DYNAMIC)))) then begin
    var body: __struct_nk_rect;
    body.x := (win)^.bounds.x;
    body.w := (win)^.bounds.w;
    body.y := ((win)^.bounds.y + (layout)^.header_height);
    body.h := ((win)^.bounds.h - (layout)^.header_height);
    if ((style)^.window.fixed_background.type = NK_STYLE_ITEM_IMAGE) then begin
      nk_draw_image(&out, body, (@(style)^.window.fixed_background.data.image), nk_white);
    end
    else begin
      nk_fill_rect(&out, body, 0, (style)^.window.fixed_background.data.color);
    end;
  end;
  // set clipping rectangle
  begin
    var clip: __struct_nk_rect;
    (layout)^.clip := (layout)^.bounds;
    nk_unify((@clip), (@(win)^.buffer.clip), (layout)^.clip.x, (layout)^.clip.y, ((layout)^.clip.x + (layout)^.clip.w), ((layout)^.clip.y + (layout)^.clip.h));
    nk_push_scissor(&out, clip);
    (layout)^.clip := clip;
  end;
  exit (Boolean(not Boolean(((layout)^.flags and NK_WINDOW_HIDDEN))) and Boolean(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED))));
end;

method nk_panel_end(ctx: ^__struct_nk_context); public;
begin
  var &in: ^__struct_nk_input;
  var window: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var &out: ^__struct_nk_command_buffer;
  var scrollbar_size: __struct_nk_vec2;
  var panel_padding: __struct_nk_vec2;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  window := (ctx)^.current;
  layout := (window)^.layout;
  style := (@(ctx)^.style);
  &out := (@(window)^.buffer);
  &in := (if (Boolean(((layout)^.flags and NK_WINDOW_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_NO_INPUT))) then (0) else ((@(ctx)^.input)));
  if not Boolean(nk_panel_is_sub((layout)^.type)) then begin
    nk_push_scissor(&out, nk_null_rect);
  end;
  // cache configuration data
  scrollbar_size := (style)^.window.scrollbar_size;
  panel_padding := nk_panel_get_padding(style, (layout)^.type);
  // update the current cursor Y-position to point over the last added widget
  (layout)^.at_y := (layout)^.at_y + (layout)^.row.height;
  // dynamic panels
  if (Boolean(((layout)^.flags and NK_WINDOW_DYNAMIC)) and Boolean(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED)))) then begin
    // update panel height to fit dynamic growth
    var empty_space: __struct_nk_rect;
    if ((layout)^.at_y < ((layout)^.bounds.y + (layout)^.bounds.h)) then begin
      (layout)^.bounds.h := ((layout)^.at_y - (layout)^.bounds.y);
    end;
    // fill top empty space
    empty_space.x := (window)^.bounds.x;
    empty_space.y := (layout)^.bounds.y;
    empty_space.h := panel_padding.y;
    empty_space.w := (window)^.bounds.w;
    nk_fill_rect(&out, empty_space, 0, (style)^.window.background);
    // fill left empty space
    empty_space.x := (window)^.bounds.x;
    empty_space.y := (layout)^.bounds.y;
    empty_space.w := (panel_padding.x + (layout)^.border);
    empty_space.h := (layout)^.bounds.h;
    nk_fill_rect(&out, empty_space, 0, (style)^.window.background);
    // fill right empty space
    empty_space.x := ((layout)^.bounds.x + (layout)^.bounds.w);
    empty_space.y := (layout)^.bounds.y;
    empty_space.w := (panel_padding.x + (layout)^.border);
    empty_space.h := (layout)^.bounds.h;
    if (Boolean((((layout)^.offset_y)^ = 0)) and Boolean(not Boolean(((layout)^.flags and NK_WINDOW_NO_SCROLLBAR)))) then begin
      empty_space.w := empty_space.w + scrollbar_size.x;
    end;
    nk_fill_rect(&out, empty_space, 0, (style)^.window.background);
    // fill bottom empty space
    if ((layout)^.footer_height > 0) then begin
      empty_space.x := (window)^.bounds.x;
      empty_space.y := ((layout)^.bounds.y + (layout)^.bounds.h);
      empty_space.w := (window)^.bounds.w;
      empty_space.h := (layout)^.footer_height;
      nk_fill_rect(&out, empty_space, 0, (style)^.window.background);
    end;
  end;
  // scrollbars
  if (Boolean((Boolean(not Boolean(((layout)^.flags and NK_WINDOW_NO_SCROLLBAR))) and Boolean(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED))))) and Boolean(((window)^.scrollbar_hiding_timer < 4.0))) then begin
    var scroll: __struct_nk_rect;
    var scroll_has_scrolling: Int32;
    var scroll_target: Single;
    var scroll_offset: Single;
    var scroll_step: Single;
    var scroll_inc: Single;
    // mouse wheel scrolling
    if nk_panel_is_sub((layout)^.type) then begin
      // sub-window mouse wheel scrolling
      var root_window: ^__struct_nk_window := window;
      var root_panel: ^__struct_nk_panel := (window)^.layout;
      while (root_panel)^.parent do
        root_panel := (root_panel)^.parent;
      while (root_window)^.parent do
        root_window := (root_window)^.parent;
      // only allow scrolling if parent window is active
      scroll_has_scrolling := 0;
      if (Boolean((root_window = (ctx)^.active)) and Boolean((layout)^.has_scrolling)) then begin
        // and panel is being hovered and inside clip rect
        if (Boolean(nk_input_is_mouse_hovering_rect(&in, (layout)^.bounds)) and Boolean(not Boolean((Boolean((Boolean((Boolean(((root_panel)^.clip.x > ((layout)^.bounds.x + (layout)^.bounds.w))) or Boolean((((root_panel)^.clip.x + (root_panel)^.clip.w) < (layout)^.bounds.x)))) or Boolean(((root_panel)^.clip.y > ((layout)^.bounds.y + (layout)^.bounds.h))))) or Boolean((((root_panel)^.clip.y + (root_panel)^.clip.h) < (layout)^.bounds.y)))))) then begin
          // deactivate all parent scrolling
          root_panel := (window)^.layout;
          while (root_panel)^.parent do begin
            (root_panel)^.has_scrolling := nk_false;
            root_panel := (root_panel)^.parent;
          end;
          (root_panel)^.has_scrolling := nk_false;
          scroll_has_scrolling := nk_true;
        end;
      end;
    end
    else begin
      if not Boolean(nk_panel_is_sub((layout)^.type)) then begin
        // window mouse wheel scrolling
        scroll_has_scrolling := (Boolean((window = (ctx)^.active)) and Boolean((layout)^.has_scrolling));
        if (Boolean((Boolean(&in) and Boolean((Boolean(((&in)^.mouse.scroll_delta.y > 0)) or Boolean(((&in)^.mouse.scroll_delta.x > 0)))))) and Boolean(scroll_has_scrolling)) then begin
          (window)^.scrolled := nk_true;
        end
        else begin
          (window)^.scrolled := nk_false;
        end;
      end
      else begin
        scroll_has_scrolling := nk_false;
      end;
    end;
    begin
      // vertical scrollbar
      var state: nk_flags := 0;
      scroll.x := (((layout)^.bounds.x + (layout)^.bounds.w) + panel_padding.x);
      scroll.y := (layout)^.bounds.y;
      scroll.w := scrollbar_size.x;
      scroll.h := (layout)^.bounds.h;
      scroll_offset := Single(((layout)^.offset_y)^);
      scroll_step := (scroll.h * 0.100000001490116);
      scroll_inc := (scroll.h * 0.00999999977648258);
      scroll_target := Single(Int32(((layout)^.at_y - scroll.y)));
      scroll_offset := nk_do_scrollbarv((@state), &out, scroll, scroll_has_scrolling, scroll_offset, scroll_target, scroll_step, scroll_inc, (@(ctx)^.style.scrollv), &in, (style)^.font);
      ((layout)^.offset_y)^ := nk_uint(scroll_offset);
      if (Boolean(&in) and Boolean(scroll_has_scrolling)) then begin
        (&in)^.mouse.scroll_delta.y := 0;
      end;
    end;
    begin
      // horizontal scrollbar
      var state: nk_flags := 0;
      scroll.x := (layout)^.bounds.x;
      scroll.y := ((layout)^.bounds.y + (layout)^.bounds.h);
      scroll.w := (layout)^.bounds.w;
      scroll.h := scrollbar_size.y;
      scroll_offset := Single(((layout)^.offset_x)^);
      scroll_target := Single(Int32(((layout)^.max_x - scroll.x)));
      scroll_step := ((layout)^.max_x * 0.0500000007450581);
      scroll_inc := ((layout)^.max_x * 0.00499999988824129);
      scroll_offset := nk_do_scrollbarh((@state), &out, scroll, scroll_has_scrolling, scroll_offset, scroll_target, scroll_step, scroll_inc, (@(ctx)^.style.scrollh), &in, (style)^.font);
      ((layout)^.offset_x)^ := nk_uint(scroll_offset);
    end;
  end;
  // hide scroll if no user input
  if ((window)^.flags and NK_WINDOW_SCROLL_AUTO_HIDE) then begin
    var has_input: Int32 := (Boolean((Boolean(((ctx)^.input.mouse.delta.x ≠ 0)) or Boolean(((ctx)^.input.mouse.delta.y ≠ 0)))) or Boolean(((ctx)^.input.mouse.scroll_delta.y ≠ 0)));
    var is_window_hovered: Int32 := nk_window_is_hovered(ctx);
    var any_item_active: Int32 := ((ctx)^.last_widget_state and NK_WIDGET_STATE_MODIFIED);
    if (Boolean((Boolean(not Boolean(has_input)) and Boolean(is_window_hovered))) or Boolean((Boolean(not Boolean(is_window_hovered)) and Boolean(not Boolean(any_item_active))))) then begin
      (window)^.scrollbar_hiding_timer := (window)^.scrollbar_hiding_timer + (ctx)^.delta_time_seconds;
    end
    else begin
      (window)^.scrollbar_hiding_timer := 0;
    end;
  end
  else begin
    (window)^.scrollbar_hiding_timer := 0;
  end;
  // window border
  if ((layout)^.flags and NK_WINDOW_BORDER) then begin
    var border_color: __struct_nk_color := nk_panel_get_border_color(style, (layout)^.type);
    var padding_y: Single := (if ((layout)^.flags and NK_WINDOW_MINIMIZED) then ((((style)^.window.border + (window)^.bounds.y) + (layout)^.header_height)) else ((if ((layout)^.flags and NK_WINDOW_DYNAMIC) then ((((layout)^.bounds.y + (layout)^.bounds.h) + (layout)^.footer_height)) else (((window)^.bounds.y + (window)^.bounds.h)))));
    var b: __struct_nk_rect := (window)^.bounds;
    b.h := (padding_y - (window)^.bounds.y);
    nk_stroke_rect(&out, b, 0, (layout)^.border, border_color);
  end;
  // scaler
  if (Boolean((Boolean(((layout)^.flags and NK_WINDOW_SCALABLE)) and Boolean(&in))) and Boolean(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED)))) then begin
    // calculate scaler bounds
    var scaler: __struct_nk_rect;
    scaler.w := scrollbar_size.x;
    scaler.h := scrollbar_size.y;
    scaler.y := ((layout)^.bounds.y + (layout)^.bounds.h);
    if ((layout)^.flags and NK_WINDOW_SCALE_LEFT) then begin
      scaler.x := ((layout)^.bounds.x - (panel_padding.x * 0.5));
    end
    else begin
      scaler.x := (((layout)^.bounds.x + (layout)^.bounds.w) + panel_padding.x);
    end;
    if ((layout)^.flags and NK_WINDOW_NO_SCROLLBAR) then begin
      scaler.x := scaler.x - scaler.w;
    end;
    // draw scaler
    begin
      var item: ^__struct_nk_style_item := (@(style)^.window.scaler);
      if ((item)^.type = NK_STYLE_ITEM_IMAGE) then begin
        nk_draw_image(&out, scaler, (@(item)^.data.image), nk_white);
      end
      else begin
        if ((layout)^.flags and NK_WINDOW_SCALE_LEFT) then begin
          nk_fill_triangle(&out, scaler.x, scaler.y, scaler.x, (scaler.y + scaler.h), (scaler.x + scaler.w), (scaler.y + scaler.h), (item)^.data.color);
        end
        else begin
          nk_fill_triangle(&out, (scaler.x + scaler.w), scaler.y, (scaler.x + scaler.w), (scaler.y + scaler.h), scaler.x, (scaler.y + scaler.h), (item)^.data.color);
        end;
      end;
    end;
    // do window scaling
    if not Boolean(((window)^.flags and NK_WINDOW_ROM)) then begin
      var window_size: __struct_nk_vec2 := (style)^.window.min_size;
      var left_mouse_down: Int32 := (&in)^.mouse.buttons[NK_BUTTON_LEFT].down;
      var left_mouse_click_in_scaler: Int32 := nk_input_has_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, scaler, nk_true);
      if (Boolean(left_mouse_down) and Boolean(left_mouse_click_in_scaler)) then begin
        var delta_x: Single := (&in)^.mouse.delta.x;
        if ((layout)^.flags and NK_WINDOW_SCALE_LEFT) then begin
          delta_x := -delta_x;
          (window)^.bounds.x := (window)^.bounds.x + (&in)^.mouse.delta.x;
        end;
        // dragging in x-direction
        if (((window)^.bounds.w + delta_x) ≥ window_size.x) then begin
          if (Boolean((delta_x < 0)) or Boolean((Boolean((delta_x > 0)) and Boolean(((&in)^.mouse.pos.x ≥ scaler.x))))) then begin
            (window)^.bounds.w := ((window)^.bounds.w + delta_x);
            scaler.x := scaler.x + (&in)^.mouse.delta.x;
          end;
        end;
        // dragging in y-direction (only possible if static window)
        if not Boolean(((layout)^.flags and NK_WINDOW_DYNAMIC)) then begin
          if (window_size.y < ((window)^.bounds.h + (&in)^.mouse.delta.y)) then begin
            if (Boolean(((&in)^.mouse.delta.y < 0)) or Boolean((Boolean(((&in)^.mouse.delta.y > 0)) and Boolean(((&in)^.mouse.pos.y ≥ scaler.y))))) then begin
              (window)^.bounds.h := ((window)^.bounds.h + (&in)^.mouse.delta.y);
              scaler.y := scaler.y + (&in)^.mouse.delta.y;
            end;
          end;
        end;
        (ctx)^.style.cursor_active := (ctx)^.style.cursors[NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT];
        (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.x := (scaler.x + (scaler.w / 2.0));
        (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.y := (scaler.y + (scaler.h / 2.0));
      end;
    end;
  end;
  if not Boolean(nk_panel_is_sub((layout)^.type)) then begin
    // window is hidden so clear command buffer
    if ((layout)^.flags and NK_WINDOW_HIDDEN) then begin
      nk_command_buffer_reset((@(window)^.buffer));
    end
    else begin
      nk_finish(ctx, window);
    end;
  end;
  // NK_WINDOW_REMOVE_ROM flag was set so remove NK_WINDOW_ROM
  if ((layout)^.flags and NK_WINDOW_REMOVE_ROM) then begin
    (layout)^.flags := (layout)^.flags and not nk_flags(NK_WINDOW_ROM);
    (layout)^.flags := (layout)^.flags and not nk_flags(NK_WINDOW_REMOVE_ROM);
  end;
  (window)^.flags := (layout)^.flags;
  // property garbage collector
  if (Boolean((Boolean((window)^.property.active) and Boolean(((window)^.property.old ≠ (window)^.property.seq)))) and Boolean(((window)^.property.active = (window)^.property.prev))) then begin
    nk_zero((@(window)^.property), sizeOf((window)^.property));
  end
  else begin
    (window)^.property.old := (window)^.property.seq;
    (window)^.property.prev := (window)^.property.active;
    (window)^.property.seq := 0;
  end;
  // edit garbage collector
  if (Boolean((Boolean((window)^.edit.active) and Boolean(((window)^.edit.old ≠ (window)^.edit.seq)))) and Boolean(((window)^.edit.active = (window)^.edit.prev))) then begin
    nk_zero((@(window)^.edit), sizeOf((window)^.edit));
  end
  else begin
    (window)^.edit.old := (window)^.edit.seq;
    (window)^.edit.prev := (window)^.edit.active;
    (window)^.edit.seq := 0;
  end;
  // contextual garbage collector
  if (Boolean((window)^.popup.active_con) and Boolean(((window)^.popup.con_old ≠ (window)^.popup.con_count))) then begin
    (window)^.popup.con_count := 0;
    (window)^.popup.con_old := 0;
    (window)^.popup.active_con := 0;
  end
  else begin
    (window)^.popup.con_old := (window)^.popup.con_count;
    (window)^.popup.con_count := 0;
  end;
  (window)^.popup.combo_count := 0;
  // helper to make sure you have a 'nk_tree_push' for every 'nk_tree_pop'
  assert(not Boolean((layout)^.row.tree_depth));
end;

// ===============================================================
//  *
//  *                              WINDOW
//  *
//  * ===============================================================
method nk_create_window(ctx: ^__struct_nk_context): ^Void; public;
begin
  var elem: ^__struct_nk_page_element;
  elem := nk_create_page_element(ctx);
  if not Boolean(elem) then begin
    exit 0;
  end;
  (elem)^.data.win.seq := (ctx)^.seq;
  exit (@(elem)^.data.win);
end;

method nk_free_window(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  // unlink windows from list
  var it: ^__struct_nk_table := (win)^.tables;
  if (win)^.popup.win then begin
    nk_free_window(ctx, (win)^.popup.win);
    (win)^.popup.win := 0;
  end;
  (win)^.next := 0;
  (win)^.prev := 0;
  while it do begin
    // free window state tables
    var n: ^__struct_nk_table := (it)^.next;
    nk_remove_table(win, it);
    nk_free_table(ctx, it);
    if (it = (win)^.tables) then begin
      (win)^.tables := n;
    end;
    it := n;
  end;
  // link windows into freelist
  begin
    var pd: ^__struct_nk_page_data := ^__struct_nk_page_data(^Void((^Byte((if 1 then (win) else ((@(^__struct_nk_page_data(0))^.win)))) - nk_ptr((@(^__struct_nk_page_data(0))^.win)))));
    var pe: ^__struct_nk_page_element := ^__struct_nk_page_element(^Void((^Byte((if 1 then (pd) else ((@(^__struct_nk_page_element(0))^.data)))) - nk_ptr((@(^__struct_nk_page_element(0))^.data)))));
    nk_free_page_element(ctx, pe);
  end;
end;

method nk_find_window(ctx: ^__struct_nk_context; hash: nk_hash; name: ^Byte): ^__struct_nk_window; public;
begin
  var iter: ^__struct_nk_window;
  iter := (ctx)^.begin;
  while iter do begin
    assert((iter ≠ (iter)^.next));
    if ((iter)^.name = hash) then begin
      var max_len: Int32 := nk_strlen((iter)^.name_string);
      if not Boolean(nk_stricmpn((iter)^.name_string, name, max_len)) then begin
        exit iter;
      end;
    end;
    iter := (iter)^.next;
  end;
  exit 0;
end;

method nk_insert_window(ctx: ^__struct_nk_context; win: ^__struct_nk_window; loc: __enum_nk_window_insert_location); public;
begin
  var iter: ^__struct_nk_window;
  assert(ctx);
  assert(win);
  if (Boolean(not Boolean(win)) or Boolean(not Boolean(ctx))) then begin
    exit;
  end;
  iter := (ctx)^.begin;
  while iter do begin
    assert((iter ≠ (iter)^.next));
    assert((iter ≠ win));
    if (iter = win) then begin
      exit;
    end;
    iter := (iter)^.next;
  end;
  if not Boolean((ctx)^.begin) then begin
    (win)^.next := 0;
    (win)^.prev := 0;
    (ctx)^.begin := win;
    (ctx)^.end := win;
    (ctx)^.count := 1;
    exit;
  end;
  if (loc = NK_INSERT_BACK) then begin
    var &end: ^__struct_nk_window;
    &end := (ctx)^.end;
    (&end)^.flags := (&end)^.flags or NK_WINDOW_ROM;
    (&end)^.next := win;
    (win)^.prev := (ctx)^.end;
    (win)^.next := 0;
    (ctx)^.end := win;
    (ctx)^.active := (ctx)^.end;
    ((ctx)^.end)^.flags := ((ctx)^.end)^.flags and not nk_flags(NK_WINDOW_ROM);
  end
  else begin
    // ctx->end->flags |= NK_WINDOW_ROM;
    ((ctx)^.begin)^.prev := win;
    (win)^.next := (ctx)^.begin;
    (win)^.prev := 0;
    (ctx)^.begin := win;
    ((ctx)^.begin)^.flags := ((ctx)^.begin)^.flags and not nk_flags(NK_WINDOW_ROM);
  end;
  (ctx)^.count := (ctx)^.count + 1;
end;

method nk_remove_window(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  if (Boolean((win = (ctx)^.begin)) or Boolean((win = (ctx)^.end))) then begin
    if (win = (ctx)^.begin) then begin
      (ctx)^.begin := (win)^.next;
      if (win)^.next then begin
        ((win)^.next)^.prev := 0;
      end;
    end;
    if (win = (ctx)^.end) then begin
      (ctx)^.end := (win)^.prev;
      if (win)^.prev then begin
        ((win)^.prev)^.next := 0;
      end;
    end;
  end
  else begin
    if (win)^.next then begin
      ((win)^.next)^.prev := (win)^.prev;
    end;
    if (win)^.prev then begin
      ((win)^.prev)^.next := (win)^.next;
    end;
  end;
  if (Boolean((win = (ctx)^.active)) or Boolean(not Boolean((ctx)^.active))) then begin
    (ctx)^.active := (ctx)^.end;
    if (ctx)^.end then begin
      ((ctx)^.end)^.flags := ((ctx)^.end)^.flags and not nk_flags(NK_WINDOW_ROM);
    end;
  end;
  (win)^.next := 0;
  (win)^.prev := 0;
  (ctx)^.count := (ctx)^.count - 1;
end;

method nk_begin(ctx: ^__struct_nk_context; title: ^Byte; bounds: __struct_nk_rect; &flags: nk_flags): Int32; public;
begin
  exit nk_begin_titled(ctx, title, title, bounds, &flags);
end;

method nk_begin_titled(ctx: ^__struct_nk_context; name: ^Byte; title: ^Byte; bounds: __struct_nk_rect; &flags: nk_flags): Int32; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var name_hash: nk_hash;
  var name_len: Int32;
  var ret: Int32 := 0;
  assert(ctx);
  assert(name);
  assert(title);
  assert((Boolean((Boolean((ctx)^.style.font) and Boolean(((ctx)^.style.font)^.width))) and Boolean("if this triggers you forgot to add a font")));
  assert((Boolean(not Boolean((ctx)^.current)) and Boolean("if this triggers you missed a `nk_end` call")));
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean((ctx)^.current))) or Boolean(not Boolean(title)))) or Boolean(not Boolean(name))) then begin
    exit 0;
  end;
  // find or create window
  style := (@(ctx)^.style);
  name_len := Int32(nk_strlen(name));
  name_hash := nk_murmur_hash(name, Int32(name_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, name_hash, name);
  if not Boolean(win) then begin
    // create new window
    var name_length: nk_size := nk_size(name_len);
    win := ^__struct_nk_window(nk_create_window(ctx));
    assert(win);
    if not Boolean(win) then begin
      exit 0;
    end;
    if (&flags and NK_WINDOW_BACKGROUND) then begin
      nk_insert_window(ctx, win, NK_INSERT_FRONT);
    end
    else begin
      nk_insert_window(ctx, win, NK_INSERT_BACK);
    end;
    nk_command_buffer_init((@(win)^.buffer), (@(ctx)^.memory), NK_CLIPPING_ON);
    (win)^.flags := &flags;
    (win)^.bounds := bounds;
    (win)^.name := name_hash;
    name_length := (if (name_length < (64 - 1)) then (name_length) else ((64 - 1)));
    memcpy((win)^.name_string, name, name_length);
    (win)^.name_string[name_length] := 0;
    (win)^.popup.win := 0;
    if not Boolean((ctx)^.active) then begin
      (ctx)^.active := win;
    end;
  end
  else begin
    // update window
    (win)^.flags := (win)^.flags and not nk_flags((NK_WINDOW_PRIVATE - 1));
    (win)^.flags := (win)^.flags or &flags;
    if not Boolean(((win)^.flags and (NK_WINDOW_MOVABLE or NK_WINDOW_SCALABLE))) then begin
      (win)^.bounds := bounds;
    end;
    // If this assert triggers you either:
    //          *
    //          * I.) Have more than one window with the same name or
    //          * II.) You forgot to actually draw the window.
    //          *      More specific you did not call `nk_clear` (nk_clear will be
    //          *      automatically called for you if you are using one of the
    //          *      provided demo backends).
    assert(((win)^.seq ≠ (ctx)^.seq));
    (win)^.seq := (ctx)^.seq;
    if (Boolean(not Boolean((ctx)^.active)) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_HIDDEN)))) then begin
      (ctx)^.active := win;
      (ctx)^.end := win;
    end;
  end;
  if ((win)^.flags and NK_WINDOW_HIDDEN) then begin
    (ctx)^.current := win;
    (win)^.layout := 0;
    exit 0;
  end
  else begin
    nk_start(ctx, win);
  end;
  // window overlapping
  if (Boolean(not Boolean(((win)^.flags and NK_WINDOW_HIDDEN))) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_NO_INPUT)))) then begin
    var inpanel: Int32;
    var ishovered: Int32;
    var iter: ^__struct_nk_window := win;
    var h: Single := ((((ctx)^.style.font)^.height + (2.0 * (style)^.window.header.padding.y)) + (2.0 * (style)^.window.header.label_padding.y));
    var win_bounds: __struct_nk_rect := (if not Boolean(((win)^.flags and NK_WINDOW_MINIMIZED)) then ((win)^.bounds) else (nk_rect((win)^.bounds.x, (win)^.bounds.y, (win)^.bounds.w, h)));
    // activate window if hovered and no other window is overlapping this window
    inpanel := nk_input_has_mouse_click_down_in_rect((@(ctx)^.input), NK_BUTTON_LEFT, win_bounds, nk_true);
    inpanel := (Boolean(inpanel) and Boolean((ctx)^.input.mouse.buttons[NK_BUTTON_LEFT].clicked));
    ishovered := nk_input_is_mouse_hovering_rect((@(ctx)^.input), win_bounds);
    if (Boolean((Boolean((win ≠ (ctx)^.active)) and Boolean(ishovered))) and Boolean(not Boolean((ctx)^.input.mouse.buttons[NK_BUTTON_LEFT].down))) then begin
      iter := (win)^.next;
      while iter do begin
        var iter_bounds: __struct_nk_rect := (if not Boolean(((iter)^.flags and NK_WINDOW_MINIMIZED)) then ((iter)^.bounds) else (nk_rect((iter)^.bounds.x, (iter)^.bounds.y, (iter)^.bounds.w, h)));
        if (Boolean(not Boolean((Boolean((Boolean((Boolean((iter_bounds.x > (win_bounds.x + win_bounds.w))) or Boolean(((iter_bounds.x + iter_bounds.w) < win_bounds.x)))) or Boolean((iter_bounds.y > (win_bounds.y + win_bounds.h))))) or Boolean(((iter_bounds.y + iter_bounds.h) < win_bounds.y))))) and Boolean(not Boolean(((iter)^.flags and NK_WINDOW_HIDDEN)))) then begin
          break;
        end;
        if (Boolean((Boolean((Boolean((iter)^.popup.win) and Boolean((iter)^.popup.active))) and Boolean(not Boolean(((iter)^.flags and NK_WINDOW_HIDDEN))))) and Boolean(not Boolean((Boolean((Boolean((Boolean((((iter)^.popup.win)^.bounds.x > ((win)^.bounds.x + win_bounds.w))) or Boolean(((((iter)^.popup.win)^.bounds.x + ((iter)^.popup.win)^.bounds.w) < (win)^.bounds.x)))) or Boolean((((iter)^.popup.win)^.bounds.y > (win_bounds.y + win_bounds.h))))) or Boolean(((((iter)^.popup.win)^.bounds.y + ((iter)^.popup.win)^.bounds.h) < win_bounds.y)))))) then begin
          break;
        end;
        iter := (iter)^.next;
      end;
    end;
    // activate window if clicked
    if (Boolean((Boolean(iter) and Boolean(inpanel))) and Boolean((win ≠ (ctx)^.end))) then begin
      iter := (win)^.next;
      while iter do begin
        // try to find a panel with higher priority in the same position
        var iter_bounds: __struct_nk_rect := (if not Boolean(((iter)^.flags and NK_WINDOW_MINIMIZED)) then ((iter)^.bounds) else (nk_rect((iter)^.bounds.x, (iter)^.bounds.y, (iter)^.bounds.w, h)));
        if (Boolean((Boolean((Boolean((iter_bounds.x ≤ (ctx)^.input.mouse.pos.x)) and Boolean(((ctx)^.input.mouse.pos.x < (iter_bounds.x + iter_bounds.w))))) and Boolean((Boolean((iter_bounds.y ≤ (ctx)^.input.mouse.pos.y)) and Boolean(((ctx)^.input.mouse.pos.y < (iter_bounds.y + iter_bounds.h))))))) and Boolean(not Boolean(((iter)^.flags and NK_WINDOW_HIDDEN)))) then begin
          break;
        end;
        if (Boolean((Boolean((Boolean((iter)^.popup.win) and Boolean((iter)^.popup.active))) and Boolean(not Boolean(((iter)^.flags and NK_WINDOW_HIDDEN))))) and Boolean(not Boolean((Boolean((Boolean((Boolean((((iter)^.popup.win)^.bounds.x > (win_bounds.x + win_bounds.w))) or Boolean(((((iter)^.popup.win)^.bounds.x + ((iter)^.popup.win)^.bounds.w) < win_bounds.x)))) or Boolean((((iter)^.popup.win)^.bounds.y > (win_bounds.y + win_bounds.h))))) or Boolean(((((iter)^.popup.win)^.bounds.y + ((iter)^.popup.win)^.bounds.h) < win_bounds.y)))))) then begin
          break;
        end;
        iter := (iter)^.next;
      end;
    end;
    if (Boolean((Boolean(iter) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_ROM))))) and Boolean(((win)^.flags and NK_WINDOW_BACKGROUND))) then begin
      (win)^.flags := (win)^.flags or nk_flags(NK_WINDOW_ROM);
      (iter)^.flags := (iter)^.flags and not nk_flags(NK_WINDOW_ROM);
      (ctx)^.active := iter;
      if not Boolean(((iter)^.flags and NK_WINDOW_BACKGROUND)) then begin
        // current window is active in that position so transfer to top
        //                  * at the highest priority in stack
        nk_remove_window(ctx, iter);
        nk_insert_window(ctx, iter, NK_INSERT_BACK);
      end;
    end
    else begin
      if (Boolean(not Boolean(iter)) and Boolean(((ctx)^.end ≠ win))) then begin
        if not Boolean(((win)^.flags and NK_WINDOW_BACKGROUND)) then begin
          // current window is active in that position so transfer to top
          //                      * at the highest priority in stack
          nk_remove_window(ctx, win);
          nk_insert_window(ctx, win, NK_INSERT_BACK);
        end;
        (win)^.flags := (win)^.flags and not nk_flags(NK_WINDOW_ROM);
        (ctx)^.active := win;
      end;
      if (Boolean(((ctx)^.end ≠ win)) and Boolean(not Boolean(((win)^.flags and NK_WINDOW_BACKGROUND)))) then begin
        (win)^.flags := (win)^.flags or NK_WINDOW_ROM;
      end;
    end;
  end;
  (win)^.layout := ^__struct_nk_panel(nk_create_panel(ctx));
  (ctx)^.current := win;
  ret := nk_panel_begin(ctx, title, NK_PANEL_WINDOW);
  ((win)^.layout)^.offset_x := (@(win)^.scrollbar.x);
  ((win)^.layout)^.offset_y := (@(win)^.scrollbar.y);
  exit ret;
end;

method nk_end(ctx: ^__struct_nk_context); public;
begin
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((Boolean((ctx)^.current) and Boolean("if this triggers you forgot to call `nk_begin`")));
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  layout := ((ctx)^.current)^.layout;
  if (Boolean(not Boolean(layout)) or Boolean((Boolean(((layout)^.type = NK_PANEL_WINDOW)) and Boolean((((ctx)^.current)^.flags and NK_WINDOW_HIDDEN))))) then begin
    (ctx)^.current := 0;
    exit;
  end;
  nk_panel_end(ctx);
  nk_free_panel(ctx, ((ctx)^.current)^.layout);
  (ctx)^.current := 0;
end;

method nk_window_get_bounds(ctx: ^__struct_nk_context): __struct_nk_rect; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_rect(0, 0, 0, 0);
  end;
  exit ((ctx)^.current)^.bounds;
end;

method nk_window_get_position(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  exit nk_vec2(((ctx)^.current)^.bounds.x, ((ctx)^.current)^.bounds.y);
end;

method nk_window_get_size(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  exit nk_vec2(((ctx)^.current)^.bounds.w, ((ctx)^.current)^.bounds.h);
end;

method nk_window_get_width(ctx: ^__struct_nk_context): Single; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  exit ((ctx)^.current)^.bounds.w;
end;

method nk_window_get_height(ctx: ^__struct_nk_context): Single; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  exit ((ctx)^.current)^.bounds.h;
end;

method nk_window_get_content_region(ctx: ^__struct_nk_context): __struct_nk_rect; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_rect(0, 0, 0, 0);
  end;
  exit (((ctx)^.current)^.layout)^.clip;
end;

method nk_window_get_content_region_min(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  exit nk_vec2((((ctx)^.current)^.layout)^.clip.x, (((ctx)^.current)^.layout)^.clip.y);
end;

method nk_window_get_content_region_max(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  exit nk_vec2(((((ctx)^.current)^.layout)^.clip.x + (((ctx)^.current)^.layout)^.clip.w), ((((ctx)^.current)^.layout)^.clip.y + (((ctx)^.current)^.layout)^.clip.h));
end;

method nk_window_get_content_region_size(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  exit nk_vec2((((ctx)^.current)^.layout)^.clip.w, (((ctx)^.current)^.layout)^.clip.h);
end;

method nk_window_get_canvas(ctx: ^__struct_nk_context): ^__struct_nk_command_buffer; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  exit (@((ctx)^.current)^.buffer);
end;

method nk_window_get_panel(ctx: ^__struct_nk_context): ^__struct_nk_panel; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  exit ((ctx)^.current)^.layout;
end;

method nk_window_has_focus(ctx: ^__struct_nk_context): Int32; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  exit ((ctx)^.current = (ctx)^.active);
end;

method nk_window_is_hovered(ctx: ^__struct_nk_context): Int32; public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  if (((ctx)^.current)^.flags and NK_WINDOW_HIDDEN) then begin
    exit 0;
  end;
  exit nk_input_is_mouse_hovering_rect((@(ctx)^.input), ((ctx)^.current)^.bounds);
end;

method nk_window_is_any_hovered(ctx: ^__struct_nk_context): Int32; public;
begin
  var iter: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  iter := (ctx)^.begin;
  while iter do begin
    // check if window is being hovered
    if not Boolean(((iter)^.flags and NK_WINDOW_HIDDEN)) then begin
      // check if window popup is being hovered
      if (Boolean((Boolean((iter)^.popup.active) and Boolean((iter)^.popup.win))) and Boolean(nk_input_is_mouse_hovering_rect((@(ctx)^.input), ((iter)^.popup.win)^.bounds))) then begin
        exit 1;
      end;
      if ((iter)^.flags and NK_WINDOW_MINIMIZED) then begin
        var header: __struct_nk_rect := (iter)^.bounds;
        header.h := (((ctx)^.style.font)^.height + (2 * (ctx)^.style.window.header.padding.y));
        if nk_input_is_mouse_hovering_rect((@(ctx)^.input), header) then begin
          exit 1;
        end;
      end
      else begin
        if nk_input_is_mouse_hovering_rect((@(ctx)^.input), (iter)^.bounds) then begin
          exit 1;
        end;
      end;
    end;
    iter := (iter)^.next;
  end;
  exit 0;
end;

method nk_item_is_any_active(ctx: ^__struct_nk_context): Int32; public;
begin
  var any_hovered: Int32 := nk_window_is_any_hovered(ctx);
  var any_active: Int32 := ((ctx)^.last_widget_state and NK_WIDGET_STATE_MODIFIED);
  exit (Boolean(any_hovered) or Boolean(any_active));
end;

method nk_window_is_collapsed(ctx: ^__struct_nk_context; name: ^Byte): Int32; public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if not Boolean(win) then begin
    exit 0;
  end;
  exit ((win)^.flags and NK_WINDOW_MINIMIZED);
end;

method nk_window_is_closed(ctx: ^__struct_nk_context; name: ^Byte): Int32; public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 1;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if not Boolean(win) then begin
    exit 1;
  end;
  exit ((win)^.flags and NK_WINDOW_CLOSED);
end;

method nk_window_is_hidden(ctx: ^__struct_nk_context; name: ^Byte): Int32; public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 1;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if not Boolean(win) then begin
    exit 1;
  end;
  exit ((win)^.flags and NK_WINDOW_HIDDEN);
end;

method nk_window_is_active(ctx: ^__struct_nk_context; name: ^Byte): Int32; public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if not Boolean(win) then begin
    exit 0;
  end;
  exit (win = (ctx)^.active);
end;

method nk_window_find(ctx: ^__struct_nk_context; name: ^Byte): ^__struct_nk_window; public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  exit nk_find_window(ctx, title_hash, name);
end;

method nk_window_close(ctx: ^__struct_nk_context; name: ^Byte); public;
begin
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  win := nk_window_find(ctx, name);
  if not Boolean(win) then begin
    exit;
  end;
  assert((Boolean(((ctx)^.current ≠ win)) and Boolean("You cannot close a currently active window")));
  if ((ctx)^.current = win) then begin
    exit;
  end;
  (win)^.flags := (win)^.flags or NK_WINDOW_HIDDEN;
  (win)^.flags := (win)^.flags or NK_WINDOW_CLOSED;
end;

method nk_window_set_bounds(ctx: ^__struct_nk_context; name: ^Byte; bounds: __struct_nk_rect); public;
begin
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  win := nk_window_find(ctx, name);
  if not Boolean(win) then begin
    exit;
  end;
  assert((Boolean(((ctx)^.current ≠ win)) and Boolean("You cannot update a currently in procecss window")));
  (win)^.bounds := bounds;
end;

method nk_window_set_position(ctx: ^__struct_nk_context; name: ^Byte; pos: __struct_nk_vec2); public;
begin
  var win: ^__struct_nk_window := nk_window_find(ctx, name);
  if not Boolean(win) then begin
    exit;
  end;
  (win)^.bounds.x := pos.x;
  (win)^.bounds.y := pos.y;
end;

method nk_window_set_size(ctx: ^__struct_nk_context; name: ^Byte; size: __struct_nk_vec2); public;
begin
  var win: ^__struct_nk_window := nk_window_find(ctx, name);
  if not Boolean(win) then begin
    exit;
  end;
  (win)^.bounds.w := size.x;
  (win)^.bounds.h := size.y;
end;

method nk_window_collapse(ctx: ^__struct_nk_context; name: ^Byte; c: __enum_nk_collapse_states); public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if not Boolean(win) then begin
    exit;
  end;
  if (c = NK_MINIMIZED) then begin
    (win)^.flags := (win)^.flags or NK_WINDOW_MINIMIZED;
  end
  else begin
    (win)^.flags := (win)^.flags and not nk_flags(NK_WINDOW_MINIMIZED);
  end;
end;

method nk_window_collapse_if(ctx: ^__struct_nk_context; name: ^Byte; c: __enum_nk_collapse_states; cond: Int32); public;
begin
  assert(ctx);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(cond))) then begin
    exit;
  end;
  nk_window_collapse(ctx, name, c);
end;

method nk_window_show(ctx: ^__struct_nk_context; name: ^Byte; s: __enum_nk_show_states); public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if not Boolean(win) then begin
    exit;
  end;
  if (s = NK_HIDDEN) then begin
    (win)^.flags := (win)^.flags or NK_WINDOW_HIDDEN;
  end
  else begin
    (win)^.flags := (win)^.flags and not nk_flags(NK_WINDOW_HIDDEN);
  end;
end;

method nk_window_show_if(ctx: ^__struct_nk_context; name: ^Byte; s: __enum_nk_show_states; cond: Int32); public;
begin
  assert(ctx);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(cond))) then begin
    exit;
  end;
  nk_window_show(ctx, name, s);
end;

method nk_window_set_focus(ctx: ^__struct_nk_context; name: ^Byte); public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  title_len := Int32(nk_strlen(name));
  title_hash := nk_murmur_hash(name, Int32(title_len), NK_WINDOW_TITLE);
  win := nk_find_window(ctx, title_hash, name);
  if (Boolean(win) and Boolean(((ctx)^.end ≠ win))) then begin
    nk_remove_window(ctx, win);
    nk_insert_window(ctx, win, NK_INSERT_BACK);
  end;
  (ctx)^.active := win;
end;

// ===============================================================
//  *
//  *                              POPUP
//  *
//  * ===============================================================
method nk_popup_begin(ctx: ^__struct_nk_context; &type: __enum_nk_popup_type; title: ^Byte; &flags: nk_flags; rect: __struct_nk_rect): Int32; public;
begin
  var popup: ^__struct_nk_window;
  var win: ^__struct_nk_window;
  var panel: ^__struct_nk_panel;
  var title_len: Int32;
  var title_hash: nk_hash;
  var allocated: nk_size;
  assert(ctx);
  assert(title);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  panel := (win)^.layout;
  assert((Boolean(not Boolean(((panel)^.type and NK_PANEL_SET_POPUP))) and Boolean("popups are not allowed to have popups")));
  title_len := Int32(nk_strlen(title));
  title_hash := nk_murmur_hash(title, Int32(title_len), NK_PANEL_POPUP);
  popup := (win)^.popup.win;
  if not Boolean(popup) then begin
    popup := ^__struct_nk_window(nk_create_window(ctx));
    (popup)^.parent := win;
    (win)^.popup.win := popup;
    (win)^.popup.active := 0;
    (win)^.popup.type := NK_PANEL_POPUP;
  end;
  // make sure we have correct popup
  if ((win)^.popup.name ≠ title_hash) then begin
    if not Boolean((win)^.popup.active) then begin
      nk_zero(popup, sizeOf((popup)^));
      (win)^.popup.name := title_hash;
      (win)^.popup.active := 1;
      (win)^.popup.type := NK_PANEL_POPUP;
    end
    else begin
      exit 0;
    end;
  end;
  // popup position is local to window
  (ctx)^.current := popup;
  rect.x := rect.x + ((win)^.layout)^.clip.x;
  rect.y := rect.y + ((win)^.layout)^.clip.y;
  // setup popup data
  (popup)^.parent := win;
  (popup)^.bounds := rect;
  (popup)^.seq := (ctx)^.seq;
  (popup)^.layout := ^__struct_nk_panel(nk_create_panel(ctx));
  (popup)^.flags := &flags;
  (popup)^.flags := (popup)^.flags or NK_WINDOW_BORDER;
  if (&type = NK_POPUP_DYNAMIC) then begin
    (popup)^.flags := (popup)^.flags or NK_WINDOW_DYNAMIC;
  end;
  (popup)^.buffer := (win)^.buffer;
  nk_start_popup(ctx, win);
  allocated := (ctx)^.memory.allocated;
  nk_push_scissor((@(popup)^.buffer), nk_null_rect);
  if nk_panel_begin(ctx, title, NK_PANEL_POPUP) then begin
    // popup is running therefore invalidate parent panels
    var root: ^__struct_nk_panel;
    root := (win)^.layout;
    while root do begin
      (root)^.flags := (root)^.flags or NK_WINDOW_ROM;
      (root)^.flags := (root)^.flags and not nk_flags(NK_WINDOW_REMOVE_ROM);
      root := (root)^.parent;
    end;
    (win)^.popup.active := 1;
    ((popup)^.layout)^.offset_x := (@(popup)^.scrollbar.x);
    ((popup)^.layout)^.offset_y := (@(popup)^.scrollbar.y);
    ((popup)^.layout)^.parent := (win)^.layout;
    exit 1;
  end
  else begin
    // popup was closed/is invalid so cleanup
    var root: ^__struct_nk_panel;
    root := (win)^.layout;
    while root do begin
      (root)^.flags := (root)^.flags or NK_WINDOW_REMOVE_ROM;
      root := (root)^.parent;
    end;
    (win)^.popup.buf.active := 0;
    (win)^.popup.active := 0;
    (ctx)^.memory.allocated := allocated;
    (ctx)^.current := win;
    nk_free_panel(ctx, (popup)^.layout);
    (popup)^.layout := 0;
    exit 0;
  end;
end;

method nk_nonblock_begin(ctx: ^__struct_nk_context; &flags: nk_flags; body: __struct_nk_rect; header: __struct_nk_rect; panel_type: __enum_nk_panel_type): Int32; public;
begin
  var popup: ^__struct_nk_window;
  var win: ^__struct_nk_window;
  var panel: ^__struct_nk_panel;
  var is_active: Int32 := nk_true;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  // popups cannot have popups
  win := (ctx)^.current;
  panel := (win)^.layout;
  assert(not Boolean(((panel)^.type and NK_PANEL_SET_POPUP)));
  popup := (win)^.popup.win;
  if not Boolean(popup) then begin
    // create window for nonblocking popup
    popup := ^__struct_nk_window(nk_create_window(ctx));
    (popup)^.parent := win;
    (win)^.popup.win := popup;
    (win)^.popup.type := panel_type;
    nk_command_buffer_init((@(popup)^.buffer), (@(ctx)^.memory), NK_CLIPPING_ON);
  end
  else begin
    // close the popup if user pressed outside or in the header
    var pressed: Int32;
    // close the popup if user pressed outside or in the header
    var in_body: Int32;
    // close the popup if user pressed outside or in the header
    var in_header: Int32;
    pressed := nk_input_is_mouse_pressed((@(ctx)^.input), NK_BUTTON_LEFT);
    in_body := nk_input_is_mouse_hovering_rect((@(ctx)^.input), body);
    in_header := nk_input_is_mouse_hovering_rect((@(ctx)^.input), header);
    if (Boolean(pressed) and Boolean((Boolean(not Boolean(in_body)) or Boolean(in_header)))) then begin
      is_active := nk_false;
    end;
  end;
  (win)^.popup.header := header;
  if not Boolean(is_active) then begin
    // remove read only mode from all parent panels
    var root: ^__struct_nk_panel := (win)^.layout;
    while root do begin
      (root)^.flags := (root)^.flags or NK_WINDOW_REMOVE_ROM;
      root := (root)^.parent;
    end;
    exit is_active;
  end;
  (popup)^.bounds := body;
  (popup)^.parent := win;
  (popup)^.layout := ^__struct_nk_panel(nk_create_panel(ctx));
  (popup)^.flags := &flags;
  (popup)^.flags := (popup)^.flags or NK_WINDOW_BORDER;
  (popup)^.flags := (popup)^.flags or NK_WINDOW_DYNAMIC;
  (popup)^.seq := (ctx)^.seq;
  (win)^.popup.active := 1;
  assert((popup)^.layout);
  nk_start_popup(ctx, win);
  (popup)^.buffer := (win)^.buffer;
  nk_push_scissor((@(popup)^.buffer), nk_null_rect);
  (ctx)^.current := popup;
  nk_panel_begin(ctx, 0, panel_type);
  (win)^.buffer := (popup)^.buffer;
  ((popup)^.layout)^.parent := (win)^.layout;
  ((popup)^.layout)^.offset_x := (@(popup)^.scrollbar.x);
  ((popup)^.layout)^.offset_y := (@(popup)^.scrollbar.y);
  // set read only mode to all parent panels
  begin
    var root: ^__struct_nk_panel;
    root := (win)^.layout;
    while root do begin
      (root)^.flags := (root)^.flags or NK_WINDOW_ROM;
      root := (root)^.parent;
    end;
  end;
  exit is_active;
end;

method nk_popup_close(ctx: ^__struct_nk_context); public;
begin
  var popup: ^__struct_nk_window;
  assert(ctx);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  popup := (ctx)^.current;
  assert((popup)^.parent);
  assert((((popup)^.layout)^.type and NK_PANEL_SET_POPUP));
  (popup)^.flags := (popup)^.flags or NK_WINDOW_HIDDEN;
end;

method nk_popup_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var popup: ^__struct_nk_window;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  popup := (ctx)^.current;
  if not Boolean((popup)^.parent) then begin
    exit;
  end;
  win := (popup)^.parent;
  if ((popup)^.flags and NK_WINDOW_HIDDEN) then begin
    var root: ^__struct_nk_panel;
    root := (win)^.layout;
    while root do begin
      (root)^.flags := (root)^.flags or NK_WINDOW_REMOVE_ROM;
      root := (root)^.parent;
    end;
    (win)^.popup.active := 0;
  end;
  nk_push_scissor((@(popup)^.buffer), nk_null_rect);
  nk_end(ctx);
  (win)^.buffer := (popup)^.buffer;
  nk_finish_popup(ctx, win);
  (ctx)^.current := win;
  nk_push_scissor((@(win)^.buffer), ((win)^.layout)^.clip);
end;

// ==============================================================
//  *
//  *                          CONTEXTUAL
//  *
//  * ===============================================================
method nk_contextual_begin(ctx: ^__struct_nk_context; &flags: nk_flags; size: __struct_nk_vec2; trigger_bounds: __struct_nk_rect): Int32; public;
begin
  var win: ^__struct_nk_window;
  var popup: ^__struct_nk_window;
  var body: __struct_nk_rect;
  var null_rect: __struct_nk_rect := [-1, -1, 0, 0];
  var is_clicked: Int32 := 0;
  var is_open: Int32 := 0;
  var ret: Int32 := 0;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  (win)^.popup.con_count := (win)^.popup.con_count + 1;
  if ((ctx)^.current ≠ (ctx)^.active) then begin
    exit 0;
  end;
  // check if currently active contextual is active
  popup := (win)^.popup.win;
  is_open := (Boolean(popup) and Boolean(((win)^.popup.type = NK_PANEL_CONTEXTUAL)));
  is_clicked := nk_input_mouse_clicked((@(ctx)^.input), NK_BUTTON_RIGHT, trigger_bounds);
  if (Boolean((win)^.popup.active_con) and Boolean(((win)^.popup.con_count ≠ (win)^.popup.active_con))) then begin
    exit 0;
  end;
  if (Boolean(not Boolean(is_open)) and Boolean((win)^.popup.active_con)) then begin
    (win)^.popup.active_con := 0;
  end;
  if (Boolean(not Boolean(is_open)) and Boolean(not Boolean(is_clicked))) then begin
    exit 0;
  end;
  // calculate contextual position on click
  (win)^.popup.active_con := (win)^.popup.con_count;
  if is_clicked then begin
    body.x := (ctx)^.input.mouse.pos.x;
    body.y := (ctx)^.input.mouse.pos.y;
  end
  else begin
    body.x := (popup)^.bounds.x;
    body.y := (popup)^.bounds.y;
  end;
  body.w := size.x;
  body.h := size.y;
  // start nonblocking contextual popup
  ret := nk_nonblock_begin(ctx, (&flags or NK_WINDOW_NO_SCROLLBAR), body, null_rect, NK_PANEL_CONTEXTUAL);
  if ret then begin
    (win)^.popup.type := NK_PANEL_CONTEXTUAL;
  end
  else begin
    (win)^.popup.active_con := 0;
    (win)^.popup.type := NK_PANEL_NONE;
    if (win)^.popup.win then begin
      ((win)^.popup.win)^.flags := 0;
    end;
  end;
  exit ret;
end;

method nk_contextual_item_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; alignment: nk_flags): Int32; public;
begin
  var win: ^__struct_nk_window;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  state := nk_widget_fitting((@bounds), ctx, (style)^.contextual_button.padding);
  if not Boolean(state) then begin
    exit nk_false;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_text((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, text, len, alignment, NK_BUTTON_DEFAULT, (@(style)^.contextual_button), &in, (style)^.font) then begin
    nk_contextual_close(ctx);
    exit nk_true;
  end;
  exit nk_false;
end;

method nk_contextual_item_label(ctx: ^__struct_nk_context; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_text(ctx, label, nk_strlen(label), align);
end;

method nk_contextual_item_image_text(ctx: ^__struct_nk_context; img: __struct_nk_image; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  var win: ^__struct_nk_window;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  state := nk_widget_fitting((@bounds), ctx, (style)^.contextual_button.padding);
  if not Boolean(state) then begin
    exit nk_false;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_text_image((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, img, text, len, align, NK_BUTTON_DEFAULT, (@(style)^.contextual_button), (style)^.font, &in) then begin
    nk_contextual_close(ctx);
    exit nk_true;
  end;
  exit nk_false;
end;

method nk_contextual_item_image_label(ctx: ^__struct_nk_context; img: __struct_nk_image; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_image_text(ctx, img, label, nk_strlen(label), align);
end;

method nk_contextual_item_symbol_text(ctx: ^__struct_nk_context; symbol: __enum_nk_symbol_type; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  var win: ^__struct_nk_window;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  state := nk_widget_fitting((@bounds), ctx, (style)^.contextual_button.padding);
  if not Boolean(state) then begin
    exit nk_false;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_text_symbol((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, symbol, text, len, align, NK_BUTTON_DEFAULT, (@(style)^.contextual_button), (style)^.font, &in) then begin
    nk_contextual_close(ctx);
    exit nk_true;
  end;
  exit nk_false;
end;

method nk_contextual_item_symbol_label(ctx: ^__struct_nk_context; symbol: __enum_nk_symbol_type; text: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_symbol_text(ctx, symbol, text, nk_strlen(text), align);
end;

method nk_contextual_close(ctx: ^__struct_nk_context); public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  nk_popup_close(ctx);
end;

method nk_contextual_end(ctx: ^__struct_nk_context); public;
begin
  var popup: ^__struct_nk_window;
  var panel: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  popup := (ctx)^.current;
  panel := (popup)^.layout;
  assert((popup)^.parent);
  assert(((panel)^.type and NK_PANEL_SET_POPUP));
  if ((panel)^.flags and NK_WINDOW_DYNAMIC) then begin
    // Close behavior
    //         This is a bit of a hack solution since we do not know before we end our popup
    //         how big it will be. We therefore do not directly know when a
    //         click outside the non-blocking popup must close it at that direct frame.
    //         Instead it will be closed in the next frame.
    var body: __struct_nk_rect := [0, 0, 0, 0];
    if ((panel)^.at_y < ((panel)^.bounds.y + (panel)^.bounds.h)) then begin
      var padding: __struct_nk_vec2 := nk_panel_get_padding((@(ctx)^.style), (panel)^.type);
      body := (panel)^.bounds;
      body.y := (((((panel)^.at_y + (panel)^.footer_height) + (panel)^.border) + padding.y) + (panel)^.row.height);
      body.h := (((panel)^.bounds.y + (panel)^.bounds.h) - body.y);
    end;
    begin
      var pressed: Int32 := nk_input_is_mouse_pressed((@(ctx)^.input), NK_BUTTON_LEFT);
      var in_body: Int32 := nk_input_is_mouse_hovering_rect((@(ctx)^.input), body);
      if (Boolean(pressed) and Boolean(in_body)) then begin
        (popup)^.flags := (popup)^.flags or NK_WINDOW_HIDDEN;
      end;
    end;
  end;
  if ((popup)^.flags and NK_WINDOW_HIDDEN) then begin
    (popup)^.seq := 0;
  end;
  nk_popup_end(ctx);
  exit;
end;

// ===============================================================
//  *
//  *                              MENU
//  *
//  * ===============================================================
method nk_menubar_begin(ctx: ^__struct_nk_context); public;
begin
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  layout := ((ctx)^.current)^.layout;
  assert(((layout)^.at_y = (layout)^.bounds.y));
  // if this assert triggers you allocated space between nk_begin and nk_menubar_begin.
  //     If you want a menubar the first nuklear function after `nk_begin` has to be a
  //     `nk_menubar_begin` call. Inside the menubar you then have to allocate space for
  //     widgets (also supports multiple rows).
  //     Example:
  //         if (nk_begin(...)) {
  //             nk_menubar_begin(...);
  //                 nk_layout_xxxx(...);
  //                 nk_button(...);
  //                 nk_layout_xxxx(...);
  //                 nk_button(...);
  //             nk_menubar_end(...);
  //         }
  //         nk_end(...);
  if (Boolean(((layout)^.flags and NK_WINDOW_HIDDEN)) or Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED))) then begin
    exit;
  end;
  (layout)^.menu.x := (layout)^.at_x;
  (layout)^.menu.y := ((layout)^.at_y + (layout)^.row.height);
  (layout)^.menu.w := (layout)^.bounds.w;
  (layout)^.menu.offset.x := ((layout)^.offset_x)^;
  (layout)^.menu.offset.y := ((layout)^.offset_y)^;
  ((layout)^.offset_y)^ := 0;
end;

method nk_menubar_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &out: ^__struct_nk_command_buffer;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  &out := (@(win)^.buffer);
  layout := (win)^.layout;
  if (Boolean(((layout)^.flags and NK_WINDOW_HIDDEN)) or Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED))) then begin
    exit;
  end;
  (layout)^.menu.h := ((layout)^.at_y - (layout)^.menu.y);
  (layout)^.bounds.y := (layout)^.bounds.y + (((layout)^.menu.h + (ctx)^.style.window.spacing.y) + (layout)^.row.height);
  (layout)^.bounds.h := (layout)^.bounds.h - (((layout)^.menu.h + (ctx)^.style.window.spacing.y) + (layout)^.row.height);
  ((layout)^.offset_x)^ := (layout)^.menu.offset.x;
  ((layout)^.offset_y)^ := (layout)^.menu.offset.y;
  (layout)^.at_y := ((layout)^.bounds.y - (layout)^.row.height);
  (layout)^.clip.y := (layout)^.bounds.y;
  (layout)^.clip.h := (layout)^.bounds.h;
  nk_push_scissor(&out, (layout)^.clip);
end;

method nk_menu_begin(ctx: ^__struct_nk_context; win: ^__struct_nk_window; id: ^Byte; is_clicked: Int32; header: __struct_nk_rect; size: __struct_nk_vec2): Int32; public;
begin
  var is_open: Int32 := 0;
  var is_active: Int32 := 0;
  var body: __struct_nk_rect;
  var popup: ^__struct_nk_window;
  var hash: nk_hash := nk_murmur_hash(id, Int32(nk_strlen(id)), NK_PANEL_MENU);
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  body.x := header.x;
  body.w := size.x;
  body.y := (header.y + header.h);
  body.h := size.y;
  popup := (win)^.popup.win;
  is_open := (if popup then (nk_true) else (nk_false));
  is_active := (Boolean((Boolean(popup) and Boolean(((win)^.popup.name = hash)))) and Boolean(((win)^.popup.type = NK_PANEL_MENU)));
  if (Boolean((Boolean((Boolean((Boolean(is_clicked) and Boolean(is_open))) and Boolean(not Boolean(is_active)))) or Boolean((Boolean(is_open) and Boolean(not Boolean(is_active)))))) or Boolean((Boolean((Boolean(not Boolean(is_open)) and Boolean(not Boolean(is_active)))) and Boolean(not Boolean(is_clicked))))) then begin
    exit 0;
  end;
  if not Boolean(nk_nonblock_begin(ctx, NK_WINDOW_NO_SCROLLBAR, body, header, NK_PANEL_MENU)) then begin
    exit 0;
  end;
  (win)^.popup.type := NK_PANEL_MENU;
  (win)^.popup.name := hash;
  exit 1;
end;

method nk_menu_begin_text(ctx: ^__struct_nk_context; title: ^Byte; len: Int32; align: nk_flags; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var state: nk_flags;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  state := nk_widget((@header), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((win)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_text((@(ctx)^.last_widget_state), (@(win)^.buffer), header, title, len, align, NK_BUTTON_DEFAULT, (@(ctx)^.style.menu_button), &in, (ctx)^.style.font) then begin
    is_clicked := nk_true;
  end;
  exit nk_menu_begin(ctx, win, title, is_clicked, header, size);
end;

method nk_menu_begin_label(ctx: ^__struct_nk_context; text: ^Byte; align: nk_flags; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_menu_begin_text(ctx, text, nk_strlen(text), align, size);
end;

method nk_menu_begin_image(ctx: ^__struct_nk_context; id: ^Byte; img: __struct_nk_image; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var header: __struct_nk_rect;
  var &in: ^__struct_nk_input;
  var is_clicked: Int32 := nk_false;
  var state: nk_flags;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  state := nk_widget((@header), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_image((@(ctx)^.last_widget_state), (@(win)^.buffer), header, img, NK_BUTTON_DEFAULT, (@(ctx)^.style.menu_button), &in) then begin
    is_clicked := nk_true;
  end;
  exit nk_menu_begin(ctx, win, id, is_clicked, header, size);
end;

method nk_menu_begin_symbol(ctx: ^__struct_nk_context; id: ^Byte; sym: __enum_nk_symbol_type; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var state: nk_flags;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  state := nk_widget((@header), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_symbol((@(ctx)^.last_widget_state), (@(win)^.buffer), header, sym, NK_BUTTON_DEFAULT, (@(ctx)^.style.menu_button), &in, (ctx)^.style.font) then begin
    is_clicked := nk_true;
  end;
  exit nk_menu_begin(ctx, win, id, is_clicked, header, size);
end;

method nk_menu_begin_image_text(ctx: ^__struct_nk_context; title: ^Byte; len: Int32; align: nk_flags; img: __struct_nk_image; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var header: __struct_nk_rect;
  var &in: ^__struct_nk_input;
  var is_clicked: Int32 := nk_false;
  var state: nk_flags;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  state := nk_widget((@header), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_text_image((@(ctx)^.last_widget_state), (@(win)^.buffer), header, img, title, len, align, NK_BUTTON_DEFAULT, (@(ctx)^.style.menu_button), (ctx)^.style.font, &in) then begin
    is_clicked := nk_true;
  end;
  exit nk_menu_begin(ctx, win, title, is_clicked, header, size);
end;

method nk_menu_begin_image_label(ctx: ^__struct_nk_context; title: ^Byte; align: nk_flags; img: __struct_nk_image; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_menu_begin_image_text(ctx, title, nk_strlen(title), align, img, size);
end;

method nk_menu_begin_symbol_text(ctx: ^__struct_nk_context; title: ^Byte; len: Int32; align: nk_flags; sym: __enum_nk_symbol_type; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var header: __struct_nk_rect;
  var &in: ^__struct_nk_input;
  var is_clicked: Int32 := nk_false;
  var state: nk_flags;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  state := nk_widget((@header), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_do_button_text_symbol((@(ctx)^.last_widget_state), (@(win)^.buffer), header, sym, title, len, align, NK_BUTTON_DEFAULT, (@(ctx)^.style.menu_button), (ctx)^.style.font, &in) then begin
    is_clicked := nk_true;
  end;
  exit nk_menu_begin(ctx, win, title, is_clicked, header, size);
end;

method nk_menu_begin_symbol_label(ctx: ^__struct_nk_context; title: ^Byte; align: nk_flags; sym: __enum_nk_symbol_type; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_menu_begin_symbol_text(ctx, title, nk_strlen(title), align, sym, size);
end;

method nk_menu_item_text(ctx: ^__struct_nk_context; title: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_text(ctx, title, len, align);
end;

method nk_menu_item_label(ctx: ^__struct_nk_context; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_label(ctx, label, align);
end;

method nk_menu_item_image_label(ctx: ^__struct_nk_context; img: __struct_nk_image; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_image_label(ctx, img, label, align);
end;

method nk_menu_item_image_text(ctx: ^__struct_nk_context; img: __struct_nk_image; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_image_text(ctx, img, text, len, align);
end;

method nk_menu_item_symbol_text(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_symbol_text(ctx, sym, text, len, align);
end;

method nk_menu_item_symbol_label(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_symbol_label(ctx, sym, label, align);
end;

method nk_menu_close(ctx: ^__struct_nk_context); public;
begin
  nk_contextual_close(ctx);
end;

method nk_menu_end(ctx: ^__struct_nk_context); public;
begin
  nk_contextual_end(ctx);
end;

// ===============================================================
//  *
//  *                          LAYOUT
//  *
//  * ===============================================================
method nk_layout_set_min_row_height(ctx: ^__struct_nk_context; height: Single); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  (layout)^.row.min_height := height;
end;

method nk_layout_reset_min_row_height(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  (layout)^.row.min_height := ((ctx)^.style.font)^.height;
  (layout)^.row.min_height := (layout)^.row.min_height + ((ctx)^.style.text.padding.y * 2);
  (layout)^.row.min_height := (layout)^.row.min_height + ((ctx)^.style.window.min_row_height_padding * 2);
end;

method nk_layout_row_calculate_usable_space(style: ^__struct_nk_style; &type: __enum_nk_panel_type; total_space: Single; columns: Int32): Single; public;
begin
  var panel_padding: Single;
  var panel_spacing: Single;
  var panel_space: Single;
  var spacing: __struct_nk_vec2;
  var padding: __struct_nk_vec2;
  spacing := (style)^.window.spacing;
  padding := nk_panel_get_padding(style, &type);
  // calculate the usable panel space
  panel_padding := (2 * padding.x);
  panel_spacing := (Single((if ((columns - 1) < 0) then (0) else ((columns - 1)))) * spacing.x);
  panel_space := ((total_space - panel_padding) - panel_spacing);
  exit panel_space;
end;

method nk_panel_layout(ctx: ^__struct_nk_context; win: ^__struct_nk_window; height: Single; cols: Int32); public;
begin
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var &out: ^__struct_nk_command_buffer;
  var item_spacing: __struct_nk_vec2;
  var color: __struct_nk_color;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  // prefetch some configuration data
  layout := (win)^.layout;
  style := (@(ctx)^.style);
  &out := (@(win)^.buffer);
  color := (style)^.window.background;
  item_spacing := (style)^.window.spacing;
  // if one of these triggers you forgot to add an `if` condition around either
  //         a window, group, popup, combobox or contextual menu `begin` and `end` block.
  //         Example:
  //             if (nk_begin(...) {...} nk_end(...); or
  //             if (nk_group_begin(...) { nk_group_end(...);}
  assert(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED)));
  assert(not Boolean(((layout)^.flags and NK_WINDOW_HIDDEN)));
  assert(not Boolean(((layout)^.flags and NK_WINDOW_CLOSED)));
  // update the current row and set the current row layout
  (layout)^.row.index := 0;
  (layout)^.at_y := (layout)^.at_y + (layout)^.row.height;
  (layout)^.row.columns := cols;
  if (height = 0.0) then begin
    (layout)^.row.height := ((if (height < (layout)^.row.min_height) then ((layout)^.row.min_height) else (height)) + item_spacing.y);
  end
  else begin
    (layout)^.row.height := (height + item_spacing.y);
  end;
  (layout)^.row.item_offset := 0;
  if ((layout)^.flags and NK_WINDOW_DYNAMIC) then begin
    // draw background for dynamic panels
    var background: __struct_nk_rect;
    background.x := (win)^.bounds.x;
    background.w := (win)^.bounds.w;
    background.y := ((layout)^.at_y - 1.0);
    background.h := ((layout)^.row.height + 1.0);
    nk_fill_rect(&out, background, 0, color);
  end;
end;

method nk_row_layout(ctx: ^__struct_nk_context; fmt: __enum_nk_layout_format; height: Single; cols: Int32; width: Int32); public;
begin
  // update the current row and set the current row layout
  var win: ^__struct_nk_window;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  nk_panel_layout(ctx, win, height, cols);
  if (fmt = NK_DYNAMIC) then begin
    ((win)^.layout)^.row.type := NK_LAYOUT_DYNAMIC_FIXED;
  end
  else begin
    ((win)^.layout)^.row.type := NK_LAYOUT_STATIC_FIXED;
  end;
  ((win)^.layout)^.row.ratio := 0;
  ((win)^.layout)^.row.filled := 0;
  ((win)^.layout)^.row.item_offset := 0;
  ((win)^.layout)^.row.item_width := Single(width);
end;

method nk_layout_ratio_from_pixel(ctx: ^__struct_nk_context; pixel_width: Single): Single; public;
begin
  var win: ^__struct_nk_window;
  assert(ctx);
  assert(pixel_width);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  exit (if ((if ((pixel_width / (win)^.bounds.x) < 1.0) then ((pixel_width / (win)^.bounds.x)) else (1.0)) < 0.0) then (0.0) else ((if ((pixel_width / (win)^.bounds.x) < 1.0) then ((pixel_width / (win)^.bounds.x)) else (1.0))));
end;

method nk_layout_row_dynamic(ctx: ^__struct_nk_context; height: Single; cols: Int32); public;
begin
  nk_row_layout(ctx, NK_DYNAMIC, height, cols, 0);
end;

method nk_layout_row_static(ctx: ^__struct_nk_context; height: Single; item_width: Int32; cols: Int32); public;
begin
  nk_row_layout(ctx, NK_STATIC, height, cols, item_width);
end;

method nk_layout_row_begin(ctx: ^__struct_nk_context; fmt: __enum_nk_layout_format; row_height: Single; cols: Int32); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  nk_panel_layout(ctx, win, row_height, cols);
  if (fmt = NK_DYNAMIC) then begin
    (layout)^.row.type := NK_LAYOUT_DYNAMIC_ROW;
  end
  else begin
    (layout)^.row.type := NK_LAYOUT_STATIC_ROW;
  end;
  (layout)^.row.ratio := 0;
  (layout)^.row.filled := 0;
  (layout)^.row.item_width := 0;
  (layout)^.row.item_offset := 0;
  (layout)^.row.columns := cols;
end;

method nk_layout_row_push(ctx: ^__struct_nk_context; ratio_or_width: Single); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  assert((Boolean(((layout)^.row.type = NK_LAYOUT_STATIC_ROW)) or Boolean(((layout)^.row.type = NK_LAYOUT_DYNAMIC_ROW))));
  if (Boolean(((layout)^.row.type ≠ NK_LAYOUT_STATIC_ROW)) and Boolean(((layout)^.row.type ≠ NK_LAYOUT_DYNAMIC_ROW))) then begin
    exit;
  end;
  if ((layout)^.row.type = NK_LAYOUT_DYNAMIC_ROW) then begin
    var ratio: Single := ratio_or_width;
    if ((ratio + (layout)^.row.filled) > 1.0) then begin
      exit;
    end;
    if (ratio > 0.0) then begin
      (layout)^.row.item_width := (if (0 < (if (1.0 < ratio) then (1.0) else (ratio))) then ((if (1.0 < ratio) then (1.0) else (ratio))) else (0));
    end
    else begin
      (layout)^.row.item_width := (1.0 - (layout)^.row.filled);
    end;
  end
  else begin
    (layout)^.row.item_width := ratio_or_width;
  end;
end;

method nk_layout_row_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  assert((Boolean(((layout)^.row.type = NK_LAYOUT_STATIC_ROW)) or Boolean(((layout)^.row.type = NK_LAYOUT_DYNAMIC_ROW))));
  if (Boolean(((layout)^.row.type ≠ NK_LAYOUT_STATIC_ROW)) and Boolean(((layout)^.row.type ≠ NK_LAYOUT_DYNAMIC_ROW))) then begin
    exit;
  end;
  (layout)^.row.item_width := 0;
  (layout)^.row.item_offset := 0;
end;

method nk_layout_row(ctx: ^__struct_nk_context; fmt: __enum_nk_layout_format; height: Single; cols: Int32; ratio: ^Single); public;
begin
  var i: Int32;
  var n_undef: Int32 := 0;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  nk_panel_layout(ctx, win, height, cols);
  if (fmt = NK_DYNAMIC) then begin
    // calculate width of undefined widget ratios
    var r: Single := 0;
    (layout)^.row.ratio := ratio;
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < cols) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        if (ratio[i] < 0.0) then begin
          n_undef := n_undef + 1;
        end
        else begin
          r := r + ratio[i];
        end;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    r := (if (0 < (if (1.0 < (1.0 - r)) then (1.0) else ((1.0 - r)))) then ((if (1.0 < (1.0 - r)) then (1.0) else ((1.0 - r)))) else (0));
    (layout)^.row.type := NK_LAYOUT_DYNAMIC;
    (layout)^.row.item_width := (if (Boolean((r > 0)) and Boolean((n_undef > 0))) then ((r / Single(n_undef))) else (0));
  end
  else begin
    (layout)^.row.ratio := ratio;
    (layout)^.row.type := NK_LAYOUT_STATIC;
    (layout)^.row.item_width := 0;
    (layout)^.row.item_offset := 0;
  end;
  (layout)^.row.item_offset := 0;
  (layout)^.row.filled := 0;
end;

method nk_layout_row_template_begin(ctx: ^__struct_nk_context; height: Single); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  nk_panel_layout(ctx, win, height, 1);
  (layout)^.row.type := NK_LAYOUT_TEMPLATE;
  (layout)^.row.columns := 0;
  (layout)^.row.ratio := 0;
  (layout)^.row.item_width := 0;
  (layout)^.row.item_height := 0;
  (layout)^.row.item_offset := 0;
  (layout)^.row.filled := 0;
  (layout)^.row.item.x := 0;
  (layout)^.row.item.y := 0;
  (layout)^.row.item.w := 0;
  (layout)^.row.item.h := 0;
end;

method nk_layout_row_template_push_dynamic(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  assert(((layout)^.row.type = NK_LAYOUT_TEMPLATE));
  assert(((layout)^.row.columns < 16));
  if ((layout)^.row.type ≠ NK_LAYOUT_TEMPLATE) then begin
    exit;
  end;
  if ((layout)^.row.columns ≥ 16) then begin
    exit;
  end;
  (layout)^.row.templates[(() -> begin
    var _tmp0 := (layout)^.row.columns;
    (layout)^.row.columns := _tmp0 + 1;
    exit _tmp0;
  end)()] := -1.0;
end;

method nk_layout_row_template_push_variable(ctx: ^__struct_nk_context; min_width: Single); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  assert(((layout)^.row.type = NK_LAYOUT_TEMPLATE));
  assert(((layout)^.row.columns < 16));
  if ((layout)^.row.type ≠ NK_LAYOUT_TEMPLATE) then begin
    exit;
  end;
  if ((layout)^.row.columns ≥ 16) then begin
    exit;
  end;
  (layout)^.row.templates[(() -> begin
    var _tmp0 := (layout)^.row.columns;
    (layout)^.row.columns := _tmp0 + 1;
    exit _tmp0;
  end)()] := -min_width;
end;

method nk_layout_row_template_push_static(ctx: ^__struct_nk_context; width: Single); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  assert(((layout)^.row.type = NK_LAYOUT_TEMPLATE));
  assert(((layout)^.row.columns < 16));
  if ((layout)^.row.type ≠ NK_LAYOUT_TEMPLATE) then begin
    exit;
  end;
  if ((layout)^.row.columns ≥ 16) then begin
    exit;
  end;
  (layout)^.row.templates[(() -> begin
    var _tmp0 := (layout)^.row.columns;
    (layout)^.row.columns := _tmp0 + 1;
    exit _tmp0;
  end)()] := width;
end;

method nk_layout_row_template_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var i: Int32 := 0;
  var variable_count: Int32 := 0;
  var min_variable_count: Int32 := 0;
  var min_fixed_width: Single := 0.0;
  var total_fixed_width: Single := 0.0;
  var max_variable_width: Single := 0.0;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  assert(((layout)^.row.type = NK_LAYOUT_TEMPLATE));
  if ((layout)^.row.type ≠ NK_LAYOUT_TEMPLATE) then begin
    exit;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < (layout)^.row.columns) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var width: Single := (layout)^.row.templates[i];
      if (width ≥ 0.0) then begin
        total_fixed_width := total_fixed_width + width;
        min_fixed_width := min_fixed_width + width;
      end
      else begin
        if (width < -1.0) then begin
          width := -width;
          total_fixed_width := total_fixed_width + width;
          max_variable_width := (if (max_variable_width < width) then (width) else (max_variable_width));
          variable_count := variable_count + 1;
        end
        else begin
          min_variable_count := min_variable_count + 1;
          variable_count := variable_count + 1;
        end;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  if variable_count then begin
    var space: Single := nk_layout_row_calculate_usable_space((@(ctx)^.style), (layout)^.type, (layout)^.bounds.w, (layout)^.row.columns);
    var var_width: Single := ((if ((space - min_fixed_width) < 0.0) then (0.0) else ((space - min_fixed_width))) / Single(variable_count));
    var enough_space: Int32 := (var_width ≥ max_variable_width);
    if not Boolean(enough_space) then begin
      var_width := ((if ((space - total_fixed_width) < 0) then (0) else ((space - total_fixed_width))) / Single(min_variable_count));
    end;
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel4:;
      if (i < (layout)^.row.columns) then begin
      end
      else begin
        goto _breaklabel4;
      end;
      // for loop: body
      begin
        var width: ^Single := (@(layout)^.row.templates[i]);
        (width)^ := (if ((width)^ ≥ 0.0) then ((width)^) else ((if (Boolean(((width)^ < -1.0)) and Boolean(not Boolean(enough_space))) then (-(width)^) else (var_width))));
      end;
      _continuelabel4:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel4;
      // for loop: break
      _breaklabel4:;
    end;
  end;
end;

method nk_layout_space_begin(ctx: ^__struct_nk_context; fmt: __enum_nk_layout_format; height: Single; widget_count: Int32); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  nk_panel_layout(ctx, win, height, widget_count);
  if (fmt = NK_STATIC) then begin
    (layout)^.row.type := NK_LAYOUT_STATIC_FREE;
  end
  else begin
    (layout)^.row.type := NK_LAYOUT_DYNAMIC_FREE;
  end;
  (layout)^.row.ratio := 0;
  (layout)^.row.filled := 0;
  (layout)^.row.item_width := 0;
  (layout)^.row.item_offset := 0;
end;

method nk_layout_space_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  (layout)^.row.item_width := 0;
  (layout)^.row.item_height := 0;
  (layout)^.row.item_offset := 0;
  nk_zero((@(layout)^.row.item), sizeOf((layout)^.row.item));
end;

method nk_layout_space_push(ctx: ^__struct_nk_context; rect: __struct_nk_rect); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  (layout)^.row.item := rect;
end;

method nk_layout_space_bounds(ctx: ^__struct_nk_context): __struct_nk_rect; public;
begin
  var ret: __struct_nk_rect;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  win := (ctx)^.current;
  layout := (win)^.layout;
  ret.x := (layout)^.clip.x;
  ret.y := (layout)^.clip.y;
  ret.w := (layout)^.clip.w;
  ret.h := (layout)^.row.height;
  exit ret;
end;

method nk_layout_widget_bounds(ctx: ^__struct_nk_context): __struct_nk_rect; public;
begin
  var ret: __struct_nk_rect;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  win := (ctx)^.current;
  layout := (win)^.layout;
  ret.x := (layout)^.at_x;
  ret.y := (layout)^.at_y;
  ret.w := ((layout)^.bounds.w - (if (((layout)^.at_x - (layout)^.bounds.x) < 0) then (0) else (((layout)^.at_x - (layout)^.bounds.x))));
  ret.h := (layout)^.row.height;
  exit ret;
end;

method nk_layout_space_to_screen(ctx: ^__struct_nk_context; ret: __struct_nk_vec2): __struct_nk_vec2; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  win := (ctx)^.current;
  layout := (win)^.layout;
  ret.x := ret.x + ((layout)^.at_x - Single(((layout)^.offset_x)^));
  ret.y := ret.y + ((layout)^.at_y - Single(((layout)^.offset_y)^));
  exit ret;
end;

method nk_layout_space_to_local(ctx: ^__struct_nk_context; ret: __struct_nk_vec2): __struct_nk_vec2; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  win := (ctx)^.current;
  layout := (win)^.layout;
  ret.x := ret.x + (-(layout)^.at_x + Single(((layout)^.offset_x)^));
  ret.y := ret.y + (-(layout)^.at_y + Single(((layout)^.offset_y)^));
  exit ret;
end;

method nk_layout_space_rect_to_screen(ctx: ^__struct_nk_context; ret: __struct_nk_rect): __struct_nk_rect; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  win := (ctx)^.current;
  layout := (win)^.layout;
  ret.x := ret.x + ((layout)^.at_x - Single(((layout)^.offset_x)^));
  ret.y := ret.y + ((layout)^.at_y - Single(((layout)^.offset_y)^));
  exit ret;
end;

method nk_layout_space_rect_to_local(ctx: ^__struct_nk_context; ret: __struct_nk_rect): __struct_nk_rect; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  win := (ctx)^.current;
  layout := (win)^.layout;
  ret.x := ret.x + (-(layout)^.at_x + Single(((layout)^.offset_x)^));
  ret.y := ret.y + (-(layout)^.at_y + Single(((layout)^.offset_y)^));
  exit ret;
end;

method nk_panel_alloc_row(ctx: ^__struct_nk_context; win: ^__struct_nk_window); public;
begin
  var layout: ^__struct_nk_panel := (win)^.layout;
  var spacing: __struct_nk_vec2 := (ctx)^.style.window.spacing;
  var row_height: Single := ((layout)^.row.height - spacing.y);
  nk_panel_layout(ctx, win, row_height, (layout)^.row.columns);
end;

method nk_layout_widget_space(bounds: ^__struct_nk_rect; ctx: ^__struct_nk_context; win: ^__struct_nk_window; modify: Int32); public;
begin
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var spacing: __struct_nk_vec2;
  var padding: __struct_nk_vec2;
  var item_offset: Single := 0;
  var item_width: Single := 0;
  var item_spacing: Single := 0;
  var panel_space: Single := 0;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  style := (@(ctx)^.style);
  assert(bounds);
  spacing := (style)^.window.spacing;
  padding := nk_panel_get_padding(style, (layout)^.type);
  panel_space := nk_layout_row_calculate_usable_space((@(ctx)^.style), (layout)^.type, (layout)^.bounds.w, (layout)^.row.columns);
  // defined: NK_FRAC (x) (x - (int)x) /* will be used to remove fookin gaps */
  //  calculate the width of one item inside the current layout space
  begin
    case (layout)^.row.type of
      NK_LAYOUT_DYNAMIC_FIXED: begin
          goto switch0_0;
        end;
      NK_LAYOUT_DYNAMIC_ROW: begin
          goto switch0_1;
        end;
      NK_LAYOUT_DYNAMIC_FREE: begin
          goto switch0_2;
        end;
      NK_LAYOUT_DYNAMIC: begin
          goto switch0_3;
        end;
      NK_LAYOUT_STATIC_FIXED: begin
          goto switch0_4;
        end;
      NK_LAYOUT_STATIC_ROW: begin
          goto switch0_5;
        end;
      NK_LAYOUT_STATIC_FREE: begin
          goto switch0_6;
        end;
      NK_LAYOUT_STATIC: begin
          goto switch0_7;
        end;
      NK_LAYOUT_TEMPLATE: begin
          goto switch0_8;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    begin
      // scaling fixed size widgets item width
      var w: Single := ((if (1.0 < panel_space) then (panel_space) else (1.0)) / Single((layout)^.row.columns));
      item_offset := (Single((layout)^.row.index) * w);
      item_width := (w + (item_offset - Int32(item_offset)));
      item_spacing := (Single((layout)^.row.index) * spacing.x);
    end;
    goto _breaklabelswitch0;
    switch0_1:;
    begin
      // scaling single ratio widget width
      var w: Single := ((layout)^.row.item_width * panel_space);
      item_offset := (layout)^.row.item_offset;
      item_width := (w + (item_offset - Int32(item_offset)));
      item_spacing := 0;
      if modify then begin
        (layout)^.row.item_offset := (layout)^.row.item_offset + (w + spacing.x);
        (layout)^.row.filled := (layout)^.row.filled + (layout)^.row.item_width;
        (layout)^.row.index := 0;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_2:;
    begin
      // panel width depended free widget placing
      (bounds)^.x := ((layout)^.at_x + ((layout)^.bounds.w * (layout)^.row.item.x));
      (bounds)^.x := (bounds)^.x - Single(((layout)^.offset_x)^);
      (bounds)^.y := ((layout)^.at_y + ((layout)^.row.height * (layout)^.row.item.y));
      (bounds)^.y := (bounds)^.y - Single(((layout)^.offset_y)^);
      (bounds)^.w := (((layout)^.bounds.w * (layout)^.row.item.w) + ((bounds)^.x - Int32((bounds)^.x)));
      (bounds)^.h := (((layout)^.row.height * (layout)^.row.item.h) + ((bounds)^.y - Int32((bounds)^.y)));
      exit;
    end;
    switch0_3:;
    begin
      // scaling arrays of panel width ratios for every widget
      var ratio: Single;
      // scaling arrays of panel width ratios for every widget
      var w: Single;
      assert((layout)^.row.ratio);
      ratio := (if ((layout)^.row.ratio[(layout)^.row.index] < 0) then ((layout)^.row.item_width) else ((layout)^.row.ratio[(layout)^.row.index]));
      w := (ratio * panel_space);
      item_spacing := (Single((layout)^.row.index) * spacing.x);
      item_offset := (layout)^.row.item_offset;
      item_width := (w + (item_offset - Int32(item_offset)));
      if modify then begin
        (layout)^.row.item_offset := (layout)^.row.item_offset + w;
        (layout)^.row.filled := (layout)^.row.filled + ratio;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_4:;
    begin
      // non-scaling fixed widgets item width
      item_width := (layout)^.row.item_width;
      item_offset := (Single((layout)^.row.index) * item_width);
      item_spacing := (Single((layout)^.row.index) * spacing.x);
    end;
    goto _breaklabelswitch0;
    switch0_5:;
    begin
      // scaling single ratio widget width
      item_width := (layout)^.row.item_width;
      item_offset := (layout)^.row.item_offset;
      item_spacing := (Single((layout)^.row.index) * spacing.x);
      if modify then begin
        (layout)^.row.item_offset := (layout)^.row.item_offset + item_width;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_6:;
    begin
      // free widget placing
      (bounds)^.x := ((layout)^.at_x + (layout)^.row.item.x);
      (bounds)^.w := (layout)^.row.item.w;
      if (Boolean((((bounds)^.x + (bounds)^.w) > (layout)^.max_x)) and Boolean(modify)) then begin
        (layout)^.max_x := ((bounds)^.x + (bounds)^.w);
      end;
      (bounds)^.x := (bounds)^.x - Single(((layout)^.offset_x)^);
      (bounds)^.y := ((layout)^.at_y + (layout)^.row.item.y);
      (bounds)^.y := (bounds)^.y - Single(((layout)^.offset_y)^);
      (bounds)^.h := (layout)^.row.item.h;
      exit;
    end;
    switch0_7:;
    begin
      // non-scaling array of panel pixel width for every widget
      item_spacing := (Single((layout)^.row.index) * spacing.x);
      item_width := (layout)^.row.ratio[(layout)^.row.index];
      item_offset := (layout)^.row.item_offset;
      if modify then begin
        (layout)^.row.item_offset := (layout)^.row.item_offset + item_width;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_8:;
    begin
      // stretchy row layout with combined dynamic/static widget width
      var w: Single;
      assert(((layout)^.row.index < (layout)^.row.columns));
      assert(((layout)^.row.index < 16));
      w := (layout)^.row.templates[(layout)^.row.index];
      item_offset := (layout)^.row.item_offset;
      item_width := (w + (item_offset - Int32(item_offset)));
      item_spacing := (Single((layout)^.row.index) * spacing.x);
      if modify then begin
        (layout)^.row.item_offset := (layout)^.row.item_offset + w;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_default:;
    assert(0);
    goto _breaklabelswitch0;
    _breaklabelswitch0:;
  end;
  begin
  end;
  // set the bounds of the newly allocated widget
  (bounds)^.w := item_width;
  (bounds)^.h := ((layout)^.row.height - spacing.y);
  (bounds)^.y := ((layout)^.at_y - Single(((layout)^.offset_y)^));
  (bounds)^.x := ((((layout)^.at_x + item_offset) + item_spacing) + padding.x);
  if (Boolean((((bounds)^.x + (bounds)^.w) > (layout)^.max_x)) and Boolean(modify)) then begin
    (layout)^.max_x := ((bounds)^.x + (bounds)^.w);
  end;
  (bounds)^.x := (bounds)^.x - Single(((layout)^.offset_x)^);
end;

method nk_panel_alloc_space(bounds: ^__struct_nk_rect; ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  // check if the end of the row has been hit and begin new row if so
  win := (ctx)^.current;
  layout := (win)^.layout;
  if ((layout)^.row.index ≥ (layout)^.row.columns) then begin
    nk_panel_alloc_row(ctx, win);
  end;
  // calculate widget position and size
  nk_layout_widget_space(bounds, ctx, win, nk_true);
  (layout)^.row.index := (layout)^.row.index + 1;
end;

method nk_layout_peek(bounds: ^__struct_nk_rect; ctx: ^__struct_nk_context); public;
begin
  var y: Single;
  var &index: Int32;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  y := (layout)^.at_y;
  &index := (layout)^.row.index;
  if ((layout)^.row.index ≥ (layout)^.row.columns) then begin
    (layout)^.at_y := (layout)^.at_y + (layout)^.row.height;
    (layout)^.row.index := 0;
  end;
  nk_layout_widget_space(bounds, ctx, win, nk_false);
  if not Boolean((layout)^.row.index) then begin
    (bounds)^.x := (bounds)^.x - (layout)^.row.item_offset;
  end;
  (layout)^.at_y := y;
  (layout)^.row.index := &index;
end;

// ===============================================================
//  *
//  *                              TREE
//  *
//  * ===============================================================
method nk_tree_state_base(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: ^__struct_nk_image; title: ^Byte; state: ^__enum_nk_collapse_states): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var &out: ^__struct_nk_command_buffer;
  var &in: ^__struct_nk_input;
  var button: ^__struct_nk_style_button;
  var symbol: __enum_nk_symbol_type;
  var row_height: Single;
  var item_spacing: __struct_nk_vec2;
  var header: __struct_nk_rect := [0, 0, 0, 0];
  var sym: __struct_nk_rect := [0, 0, 0, 0];
  var text: __struct_nk_text;
  var ws: nk_flags := 0;
  var widget_state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  // cache some data
  win := (ctx)^.current;
  layout := (win)^.layout;
  &out := (@(win)^.buffer);
  style := (@(ctx)^.style);
  item_spacing := (style)^.window.spacing;
  // calculate header bounds and draw background
  row_height := (((style)^.font)^.height + (2 * (style)^.tab.padding.y));
  nk_layout_set_min_row_height(ctx, row_height);
  nk_layout_row_dynamic(ctx, row_height, 1);
  nk_layout_reset_min_row_height(ctx);
  widget_state := nk_widget((@header), ctx);
  if (&type = NK_TREE_TAB) then begin
    var background: ^__struct_nk_style_item := (@(style)^.tab.background);
    if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
      nk_draw_image(&out, header, (@(background)^.data.image), nk_white);
      text.background := nk_rgba(0, 0, 0, 0);
    end
    else begin
      text.background := (background)^.data.color;
      nk_fill_rect(&out, header, 0, (style)^.tab.border_color);
      nk_fill_rect(&out, nk_shrink_rect(header, (style)^.tab.border), (style)^.tab.rounding, (background)^.data.color);
    end;
  end
  else begin
    text.background := (style)^.window.background;
  end;
  // update node state
  &in := (if not Boolean(((layout)^.flags and NK_WINDOW_ROM)) then ((@(ctx)^.input)) else (0));
  &in := (if (Boolean(&in) and Boolean((widget_state = NK_WIDGET_VALID))) then ((@(ctx)^.input)) else (0));
  if nk_button_behavior((@ws), header, &in, NK_BUTTON_DEFAULT) then begin
    (state)^ := (if ((state)^ = NK_MAXIMIZED) then (NK_MINIMIZED) else (NK_MAXIMIZED));
  end;
  // select correct button style
  if ((state)^ = NK_MAXIMIZED) then begin
    symbol := (style)^.tab.sym_maximize;
    if (&type = NK_TREE_TAB) then begin
      button := (@(style)^.tab.tab_maximize_button);
    end
    else begin
      button := (@(style)^.tab.node_maximize_button);
    end;
  end
  else begin
    symbol := (style)^.tab.sym_minimize;
    if (&type = NK_TREE_TAB) then begin
      button := (@(style)^.tab.tab_minimize_button);
    end
    else begin
      button := (@(style)^.tab.node_minimize_button);
    end;
  end;
  begin
    // draw triangle button
    sym.w := (() -> begin
      var _tmp0 := ((style)^.font)^.height;
      sym.h := _tmp0;
      exit _tmp0;
    end)();
    sym.y := (header.y + (style)^.tab.padding.y);
    sym.x := (header.x + (style)^.tab.padding.x);
    nk_do_button_symbol((@ws), (@(win)^.buffer), sym, symbol, NK_BUTTON_DEFAULT, button, 0, (style)^.font);
    if img then begin
      // draw optional image icon
      sym.x := ((sym.x + sym.w) + (4 * item_spacing.x));
      nk_draw_image((@(win)^.buffer), sym, img, nk_white);
      sym.w := (((style)^.font)^.height + (style)^.tab.spacing.x);
    end;
  end;
  begin
    // draw label
    var label: __struct_nk_rect;
    header.w := (if (header.w < (sym.w + item_spacing.x)) then ((sym.w + item_spacing.x)) else (header.w));
    label.x := ((sym.x + sym.w) + item_spacing.x);
    label.y := sym.y;
    label.w := (header.w - ((sym.w + item_spacing.y) + (style)^.tab.indent));
    label.h := ((style)^.font)^.height;
    text.text := (style)^.tab.text;
    text.padding := nk_vec2(0, 0);
    nk_widget_text(&out, label, title, nk_strlen(title), (@text), NK_TEXT_LEFT, (style)^.font);
  end;
  // increase x-axis cursor widget position pointer
  if ((state)^ = NK_MAXIMIZED) then begin
    (layout)^.at_x := ((header.x + Single(((layout)^.offset_x)^)) + (style)^.tab.indent);
    (layout)^.bounds.w := (if ((layout)^.bounds.w < (style)^.tab.indent) then ((style)^.tab.indent) else ((layout)^.bounds.w));
    (layout)^.bounds.w := (layout)^.bounds.w - ((style)^.tab.indent + (style)^.window.padding.x);
    (layout)^.row.tree_depth := (layout)^.row.tree_depth + 1;
    exit nk_true;
  end
  else begin
    exit nk_false;
  end;
end;

method nk_tree_base(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: ^__struct_nk_image; title: ^Byte; initial_state: __enum_nk_collapse_states; hash: ^Byte; len: Int32; line: Int32): Int32; public;
begin
  var win: ^__struct_nk_window := (ctx)^.current;
  var title_len: Int32 := 0;
  var tree_hash: nk_hash := 0;
  var state: ^nk_uint := 0;
  // retrieve tree state from internal widget state tables
  if not Boolean(hash) then begin
    title_len := Int32(nk_strlen(title));
    tree_hash := nk_murmur_hash(title, Int32(title_len), nk_hash(line));
  end
  else begin
    tree_hash := nk_murmur_hash(hash, len, nk_hash(line));
  end;
  state := nk_find_value(win, tree_hash);
  if not Boolean(state) then begin
    state := nk_add_value(ctx, win, tree_hash, 0);
    (state)^ := initial_state;
  end;
  exit nk_tree_state_base(ctx, &type, img, title, ^__enum_nk_collapse_states(state));
end;

method nk_tree_state_push(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; title: ^Byte; state: ^__enum_nk_collapse_states): Int32; public;
begin
  exit nk_tree_state_base(ctx, &type, 0, title, state);
end;

method nk_tree_state_image_push(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: __struct_nk_image; title: ^Byte; state: ^__enum_nk_collapse_states): Int32; public;
begin
  exit nk_tree_state_base(ctx, &type, (@img), title, state);
end;

method nk_tree_state_pop(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window := 0;
  var layout: ^__struct_nk_panel := 0;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  (layout)^.at_x := (layout)^.at_x - ((ctx)^.style.tab.indent + (ctx)^.style.window.padding.x);
  (layout)^.bounds.w := (layout)^.bounds.w + ((ctx)^.style.tab.indent + (ctx)^.style.window.padding.x);
  assert((layout)^.row.tree_depth);
  (layout)^.row.tree_depth := (layout)^.row.tree_depth - 1;
end;

method nk_tree_push_hashed(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; title: ^Byte; initial_state: __enum_nk_collapse_states; hash: ^Byte; len: Int32; line: Int32): Int32; public;
begin
  exit nk_tree_base(ctx, &type, 0, title, initial_state, hash, len, line);
end;

method nk_tree_image_push_hashed(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: __struct_nk_image; title: ^Byte; initial_state: __enum_nk_collapse_states; hash: ^Byte; len: Int32; seed: Int32): Int32; public;
begin
  exit nk_tree_base(ctx, &type, (@img), title, initial_state, hash, len, seed);
end;

method nk_tree_pop(ctx: ^__struct_nk_context); public;
begin
  nk_tree_state_pop(ctx);
end;

method nk_tree_element_image_push_hashed_base(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: ^__struct_nk_image; title: ^Byte; title_len: Int32; state: ^__enum_nk_collapse_states; selected: ^Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var &out: ^__struct_nk_command_buffer;
  var &in: ^__struct_nk_input;
  var button: ^__struct_nk_style_button;
  var symbol: __enum_nk_symbol_type;
  var row_height: Single;
  var padding: __struct_nk_vec2;
  var text_len: Int32;
  var text_width: Single;
  var item_spacing: __struct_nk_vec2;
  var header: __struct_nk_rect := [0, 0, 0, 0];
  var sym: __struct_nk_rect := [0, 0, 0, 0];
  var text: __struct_nk_text;
  var ws: nk_flags := 0;
  var widget_state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  // cache some data
  win := (ctx)^.current;
  layout := (win)^.layout;
  &out := (@(win)^.buffer);
  style := (@(ctx)^.style);
  item_spacing := (style)^.window.spacing;
  padding := (style)^.selectable.padding;
  // calculate header bounds and draw background
  row_height := (((style)^.font)^.height + (2 * (style)^.tab.padding.y));
  nk_layout_set_min_row_height(ctx, row_height);
  nk_layout_row_dynamic(ctx, row_height, 1);
  nk_layout_reset_min_row_height(ctx);
  widget_state := nk_widget((@header), ctx);
  if (&type = NK_TREE_TAB) then begin
    var background: ^__struct_nk_style_item := (@(style)^.tab.background);
    if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
      nk_draw_image(&out, header, (@(background)^.data.image), nk_white);
      text.background := nk_rgba(0, 0, 0, 0);
    end
    else begin
      text.background := (background)^.data.color;
      nk_fill_rect(&out, header, 0, (style)^.tab.border_color);
      nk_fill_rect(&out, nk_shrink_rect(header, (style)^.tab.border), (style)^.tab.rounding, (background)^.data.color);
    end;
  end
  else begin
    text.background := (style)^.window.background;
  end;
  &in := (if not Boolean(((layout)^.flags and NK_WINDOW_ROM)) then ((@(ctx)^.input)) else (0));
  &in := (if (Boolean(&in) and Boolean((widget_state = NK_WIDGET_VALID))) then ((@(ctx)^.input)) else (0));
  // select correct button style
  if ((state)^ = NK_MAXIMIZED) then begin
    symbol := (style)^.tab.sym_maximize;
    if (&type = NK_TREE_TAB) then begin
      button := (@(style)^.tab.tab_maximize_button);
    end
    else begin
      button := (@(style)^.tab.node_maximize_button);
    end;
  end
  else begin
    symbol := (style)^.tab.sym_minimize;
    if (&type = NK_TREE_TAB) then begin
      button := (@(style)^.tab.tab_minimize_button);
    end
    else begin
      button := (@(style)^.tab.node_minimize_button);
    end;
  end;
  begin
    // draw triangle button
    sym.w := (() -> begin
      var _tmp0 := ((style)^.font)^.height;
      sym.h := _tmp0;
      exit _tmp0;
    end)();
    sym.y := (header.y + (style)^.tab.padding.y);
    sym.x := (header.x + (style)^.tab.padding.x);
    if nk_do_button_symbol((@ws), (@(win)^.buffer), sym, symbol, NK_BUTTON_DEFAULT, button, &in, (style)^.font) then begin
      (state)^ := (if ((state)^ = NK_MAXIMIZED) then (NK_MINIMIZED) else (NK_MAXIMIZED));
    end;
  end;
  // draw label
  begin
    var dummy: nk_flags := 0;
    var label: __struct_nk_rect;
    // calculate size of the text and tooltip
    text_len := nk_strlen(title);
    text_width := ((style)^.font)^.width(((style)^.font)^.userdata, ((style)^.font)^.height, title, text_len);
    text_width := text_width + (4 * padding.x);
    header.w := (if (header.w < (sym.w + item_spacing.x)) then ((sym.w + item_spacing.x)) else (header.w));
    label.x := ((sym.x + sym.w) + item_spacing.x);
    label.y := sym.y;
    label.w := (if ((header.w - ((sym.w + item_spacing.y) + (style)^.tab.indent)) < text_width) then ((header.w - ((sym.w + item_spacing.y) + (style)^.tab.indent))) else (text_width));
    label.h := ((style)^.font)^.height;
    if img then begin
      nk_do_selectable_image((@dummy), (@(win)^.buffer), label, title, title_len, NK_TEXT_LEFT, selected, img, (@(style)^.selectable), &in, (style)^.font);
    end
    else begin
      nk_do_selectable((@dummy), (@(win)^.buffer), label, title, title_len, NK_TEXT_LEFT, selected, (@(style)^.selectable), &in, (style)^.font);
    end;
  end;
  // increase x-axis cursor widget position pointer
  if ((state)^ = NK_MAXIMIZED) then begin
    (layout)^.at_x := ((header.x + Single(((layout)^.offset_x)^)) + (style)^.tab.indent);
    (layout)^.bounds.w := (if ((layout)^.bounds.w < (style)^.tab.indent) then ((style)^.tab.indent) else ((layout)^.bounds.w));
    (layout)^.bounds.w := (layout)^.bounds.w - ((style)^.tab.indent + (style)^.window.padding.x);
    (layout)^.row.tree_depth := (layout)^.row.tree_depth + 1;
    exit nk_true;
  end
  else begin
    exit nk_false;
  end;
end;

method nk_tree_element_base(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: ^__struct_nk_image; title: ^Byte; initial_state: __enum_nk_collapse_states; selected: ^Int32; hash: ^Byte; len: Int32; line: Int32): Int32; public;
begin
  var win: ^__struct_nk_window := (ctx)^.current;
  var title_len: Int32 := 0;
  var tree_hash: nk_hash := 0;
  var state: ^nk_uint := 0;
  // retrieve tree state from internal widget state tables
  if not Boolean(hash) then begin
    title_len := Int32(nk_strlen(title));
    tree_hash := nk_murmur_hash(title, Int32(title_len), nk_hash(line));
  end
  else begin
    tree_hash := nk_murmur_hash(hash, len, nk_hash(line));
  end;
  state := nk_find_value(win, tree_hash);
  if not Boolean(state) then begin
    state := nk_add_value(ctx, win, tree_hash, 0);
    (state)^ := initial_state;
  end;
  exit nk_tree_element_image_push_hashed_base(ctx, &type, img, title, nk_strlen(title), ^__enum_nk_collapse_states(state), selected);
end;

method nk_tree_element_push_hashed(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; title: ^Byte; initial_state: __enum_nk_collapse_states; selected: ^Int32; hash: ^Byte; len: Int32; seed: Int32): Int32; public;
begin
  exit nk_tree_element_base(ctx, &type, 0, title, initial_state, selected, hash, len, seed);
end;

method nk_tree_element_image_push_hashed(ctx: ^__struct_nk_context; &type: __enum_nk_tree_type; img: __struct_nk_image; title: ^Byte; initial_state: __enum_nk_collapse_states; selected: ^Int32; hash: ^Byte; len: Int32; seed: Int32): Int32; public;
begin
  exit nk_tree_element_base(ctx, &type, (@img), title, initial_state, selected, hash, len, seed);
end;

method nk_tree_element_pop(ctx: ^__struct_nk_context); public;
begin
  nk_tree_state_pop(ctx);
end;

// ===============================================================
//  *
//  *                          GROUP
//  *
//  * ===============================================================
method nk_group_scrolled_offset_begin(ctx: ^__struct_nk_context; x_offset: ^nk_uint; y_offset: ^nk_uint; title: ^Byte; &flags: nk_flags): Int32; public;
begin
  var bounds: __struct_nk_rect;
  var panel: __struct_nk_window;
  var win: ^__struct_nk_window;
  win := (ctx)^.current;
  nk_panel_alloc_space((@bounds), ctx);
  begin
    var c: ^__struct_nk_rect := (@((win)^.layout)^.clip);
    if (Boolean(not Boolean(not Boolean((Boolean((Boolean((Boolean((bounds.x > ((c)^.x + (c)^.w))) or Boolean(((bounds.x + bounds.w) < (c)^.x)))) or Boolean((bounds.y > ((c)^.y + (c)^.h))))) or Boolean(((bounds.y + bounds.h) < (c)^.y)))))) and Boolean(not Boolean((&flags and NK_WINDOW_MOVABLE)))) then begin
      exit 0;
    end;
  end;
  if ((win)^.flags and NK_WINDOW_ROM) then begin
    &flags := &flags or NK_WINDOW_ROM;
  end;
  // initialize a fake window to create the panel from
  nk_zero((@panel), sizeOf(panel));
  panel.bounds := bounds;
  panel.flags := &flags;
  panel.scrollbar.x := (x_offset)^;
  panel.scrollbar.y := (y_offset)^;
  panel.buffer := (win)^.buffer;
  panel.layout := ^__struct_nk_panel(nk_create_panel(ctx));
  (ctx)^.current := (@panel);
  nk_panel_begin(ctx, (if (&flags and NK_WINDOW_TITLE) then (title) else (0)), NK_PANEL_GROUP);
  (win)^.buffer := panel.buffer;
  (win)^.buffer.clip := (panel.layout)^.clip;
  (panel.layout)^.offset_x := x_offset;
  (panel.layout)^.offset_y := y_offset;
  (panel.layout)^.parent := (win)^.layout;
  (win)^.layout := panel.layout;
  (ctx)^.current := win;
  if (Boolean(((panel.layout)^.flags and NK_WINDOW_CLOSED)) or Boolean(((panel.layout)^.flags and NK_WINDOW_MINIMIZED))) then begin
    var f: nk_flags := (panel.layout)^.flags;
    nk_group_scrolled_end(ctx);
    if (f and NK_WINDOW_CLOSED) then begin
      exit NK_WINDOW_CLOSED;
    end;
    if (f and NK_WINDOW_MINIMIZED) then begin
      exit NK_WINDOW_MINIMIZED;
    end;
  end;
  exit 1;
end;

method nk_group_scrolled_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var parent: ^__struct_nk_panel;
  var g: ^__struct_nk_panel;
  var clip: __struct_nk_rect;
  var pan: __struct_nk_window;
  var panel_padding: __struct_nk_vec2;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  // make sure nk_group_begin was called correctly
  assert((ctx)^.current);
  win := (ctx)^.current;
  assert((win)^.layout);
  g := (win)^.layout;
  assert((g)^.parent);
  parent := (g)^.parent;
  // dummy window
  nk_zero((@pan), sizeOf(pan));
  panel_padding := nk_panel_get_padding((@(ctx)^.style), NK_PANEL_GROUP);
  pan.bounds.y := ((g)^.bounds.y - ((g)^.header_height + (g)^.menu.h));
  pan.bounds.x := ((g)^.bounds.x - panel_padding.x);
  pan.bounds.w := ((g)^.bounds.w + (2 * panel_padding.x));
  pan.bounds.h := (((g)^.bounds.h + (g)^.header_height) + (g)^.menu.h);
  if ((g)^.flags and NK_WINDOW_BORDER) then begin
    pan.bounds.x := pan.bounds.x - (g)^.border;
    pan.bounds.y := pan.bounds.y - (g)^.border;
    pan.bounds.w := pan.bounds.w + (2 * (g)^.border);
    pan.bounds.h := pan.bounds.h + (2 * (g)^.border);
  end;
  if not Boolean(((g)^.flags and NK_WINDOW_NO_SCROLLBAR)) then begin
    pan.bounds.w := pan.bounds.w + (ctx)^.style.window.scrollbar_size.x;
    pan.bounds.h := pan.bounds.h + (ctx)^.style.window.scrollbar_size.y;
  end;
  pan.scrollbar.x := ((g)^.offset_x)^;
  pan.scrollbar.y := ((g)^.offset_y)^;
  pan.flags := (g)^.flags;
  pan.buffer := (win)^.buffer;
  pan.layout := g;
  pan.parent := win;
  (ctx)^.current := (@pan);
  // make sure group has correct clipping rectangle
  nk_unify((@clip), (@(parent)^.clip), pan.bounds.x, pan.bounds.y, (pan.bounds.x + pan.bounds.w), ((pan.bounds.y + pan.bounds.h) + panel_padding.x));
  nk_push_scissor((@pan.buffer), clip);
  nk_end(ctx);
  (win)^.buffer := pan.buffer;
  nk_push_scissor((@(win)^.buffer), (parent)^.clip);
  (ctx)^.current := win;
  (win)^.layout := parent;
  (g)^.bounds := pan.bounds;
  exit;
end;

method nk_group_scrolled_begin(ctx: ^__struct_nk_context; scroll: ^__struct_nk_scroll; title: ^Byte; &flags: nk_flags): Int32; public;
begin
  exit nk_group_scrolled_offset_begin(ctx, (@(scroll)^.x), (@(scroll)^.y), title, &flags);
end;

method nk_group_begin_titled(ctx: ^__struct_nk_context; id: ^Byte; title: ^Byte; &flags: nk_flags): Int32; public;
begin
  var id_len: Int32;
  var id_hash: nk_hash;
  var win: ^__struct_nk_window;
  var x_offset: ^nk_uint;
  var y_offset: ^nk_uint;
  assert(ctx);
  assert(id);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(id))) then begin
    exit 0;
  end;
  // find persistent group scrollbar value
  win := (ctx)^.current;
  id_len := Int32(nk_strlen(id));
  id_hash := nk_murmur_hash(id, Int32(id_len), NK_PANEL_GROUP);
  x_offset := nk_find_value(win, id_hash);
  if not Boolean(x_offset) then begin
    x_offset := nk_add_value(ctx, win, id_hash, 0);
    y_offset := nk_add_value(ctx, win, (id_hash + 1), 0);
    assert(x_offset);
    assert(y_offset);
    if (Boolean(not Boolean(x_offset)) or Boolean(not Boolean(y_offset))) then begin
      exit 0;
    end;
    (x_offset)^ := (() -> begin
      var _tmp0 := 0;
      (y_offset)^ := _tmp0;
      exit _tmp0;
    end)();
  end
  else begin
    y_offset := nk_find_value(win, (id_hash + 1));
  end;
  exit nk_group_scrolled_offset_begin(ctx, x_offset, y_offset, title, &flags);
end;

method nk_group_begin(ctx: ^__struct_nk_context; title: ^Byte; &flags: nk_flags): Int32; public;
begin
  exit nk_group_begin_titled(ctx, title, title, &flags);
end;

method nk_group_end(ctx: ^__struct_nk_context); public;
begin
  nk_group_scrolled_end(ctx);
end;

// ===============================================================
//  *
//  *                          LIST VIEW
//  *
//  * ===============================================================
method nk_list_view_begin(ctx: ^__struct_nk_context; view: ^__struct_nk_list_view; title: ^Byte; &flags: nk_flags; row_height: Int32; row_count: Int32): Int32; public;
begin
  var title_len: Int32;
  var title_hash: nk_hash;
  var x_offset: ^nk_uint;
  var y_offset: ^nk_uint;
  var &result: Int32;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var item_spacing: __struct_nk_vec2;
  assert(ctx);
  assert(view);
  assert(title);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(view)))) or Boolean(not Boolean(title))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  item_spacing := (style)^.window.spacing;
  row_height := row_height + (if (0 < Int32(item_spacing.y)) then (Int32(item_spacing.y)) else (0));
  // find persistent list view scrollbar offset
  title_len := Int32(nk_strlen(title));
  title_hash := nk_murmur_hash(title, Int32(title_len), NK_PANEL_GROUP);
  x_offset := nk_find_value(win, title_hash);
  if not Boolean(x_offset) then begin
    x_offset := nk_add_value(ctx, win, title_hash, 0);
    y_offset := nk_add_value(ctx, win, (title_hash + 1), 0);
    assert(x_offset);
    assert(y_offset);
    if (Boolean(not Boolean(x_offset)) or Boolean(not Boolean(y_offset))) then begin
      exit 0;
    end;
    (x_offset)^ := (() -> begin
      var _tmp1 := 0;
      (y_offset)^ := _tmp1;
      exit _tmp1;
    end)();
  end
  else begin
    y_offset := nk_find_value(win, (title_hash + 1));
  end;
  (view)^.scroll_value := (y_offset)^;
  (view)^.scroll_pointer := y_offset;
  (y_offset)^ := 0;
  &result := nk_group_scrolled_offset_begin(ctx, x_offset, y_offset, title, &flags);
  win := (ctx)^.current;
  layout := (win)^.layout;
  (view)^.total_height := (row_height * (if (row_count < 1) then (1) else (row_count)));
  (view)^.begin := Int32((if ((Single((view)^.scroll_value) / Single(row_height)) < 0.0) then (0.0) else ((Single((view)^.scroll_value) / Single(row_height)))));
  (view)^.count := Int32((if (nk_iceilf(((layout)^.clip.h / Single(row_height))) < 0) then (0) else (nk_iceilf(((layout)^.clip.h / Single(row_height))))));
  (view)^.count := (if ((view)^.count < (row_count - (view)^.begin)) then ((view)^.count) else ((row_count - (view)^.begin)));
  (view)^.end := ((view)^.begin + (view)^.count);
  (view)^.ctx := ctx;
  exit &result;
end;

method nk_list_view_end(view: ^__struct_nk_list_view); public;
begin
  var ctx: ^__struct_nk_context;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  assert(view);
  assert((view)^.ctx);
  assert((view)^.scroll_pointer);
  if (Boolean(not Boolean(view)) or Boolean(not Boolean((view)^.ctx))) then begin
    exit;
  end;
  ctx := (view)^.ctx;
  win := (ctx)^.current;
  layout := (win)^.layout;
  (layout)^.at_y := ((layout)^.bounds.y + Single((view)^.total_height));
  ((view)^.scroll_pointer)^ := (((view)^.scroll_pointer)^ + (view)^.scroll_value);
  nk_group_end((view)^.ctx);
end;

// ===============================================================
//  *
//  *                              WIDGET
//  *
//  * ===============================================================
method nk_widget_bounds(ctx: ^__struct_nk_context): __struct_nk_rect; public;
begin
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_rect(0, 0, 0, 0);
  end;
  nk_layout_peek((@bounds), ctx);
  exit bounds;
end;

method nk_widget_position(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  nk_layout_peek((@bounds), ctx);
  exit nk_vec2(bounds.x, bounds.y);
end;

method nk_widget_size(ctx: ^__struct_nk_context): __struct_nk_vec2; public;
begin
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit nk_vec2(0, 0);
  end;
  nk_layout_peek((@bounds), ctx);
  exit nk_vec2(bounds.w, bounds.h);
end;

method nk_widget_width(ctx: ^__struct_nk_context): Single; public;
begin
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  nk_layout_peek((@bounds), ctx);
  exit bounds.w;
end;

method nk_widget_height(ctx: ^__struct_nk_context): Single; public;
begin
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit 0;
  end;
  nk_layout_peek((@bounds), ctx);
  exit bounds.h;
end;

method nk_widget_is_hovered(ctx: ^__struct_nk_context): Int32; public;
begin
  var c: __struct_nk_rect;
  var v: __struct_nk_rect;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(((ctx)^.active ≠ (ctx)^.current))) then begin
    exit 0;
  end;
  c := (((ctx)^.current)^.layout)^.clip;
  c.x := Single(Int32(c.x));
  c.y := Single(Int32(c.y));
  c.w := Single(Int32(c.w));
  c.h := Single(Int32(c.h));
  nk_layout_peek((@bounds), ctx);
  nk_unify((@v), (@c), bounds.x, bounds.y, (bounds.x + bounds.w), (bounds.y + bounds.h));
  if not Boolean(not Boolean((Boolean((Boolean((Boolean((bounds.x > (c.x + c.w))) or Boolean(((bounds.x + bounds.w) < c.x)))) or Boolean((bounds.y > (c.y + c.h))))) or Boolean(((bounds.y + bounds.h) < c.y))))) then begin
    exit 0;
  end;
  exit nk_input_is_mouse_hovering_rect((@(ctx)^.input), bounds);
end;

method nk_widget_is_mouse_clicked(ctx: ^__struct_nk_context; btn: __enum_nk_buttons): Int32; public;
begin
  var c: __struct_nk_rect;
  var v: __struct_nk_rect;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(((ctx)^.active ≠ (ctx)^.current))) then begin
    exit 0;
  end;
  c := (((ctx)^.current)^.layout)^.clip;
  c.x := Single(Int32(c.x));
  c.y := Single(Int32(c.y));
  c.w := Single(Int32(c.w));
  c.h := Single(Int32(c.h));
  nk_layout_peek((@bounds), ctx);
  nk_unify((@v), (@c), bounds.x, bounds.y, (bounds.x + bounds.w), (bounds.y + bounds.h));
  if not Boolean(not Boolean((Boolean((Boolean((Boolean((bounds.x > (c.x + c.w))) or Boolean(((bounds.x + bounds.w) < c.x)))) or Boolean((bounds.y > (c.y + c.h))))) or Boolean(((bounds.y + bounds.h) < c.y))))) then begin
    exit 0;
  end;
  exit nk_input_mouse_clicked((@(ctx)^.input), btn, bounds);
end;

method nk_widget_has_mouse_click_down(ctx: ^__struct_nk_context; btn: __enum_nk_buttons; down: Int32): Int32; public;
begin
  var c: __struct_nk_rect;
  var v: __struct_nk_rect;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(((ctx)^.active ≠ (ctx)^.current))) then begin
    exit 0;
  end;
  c := (((ctx)^.current)^.layout)^.clip;
  c.x := Single(Int32(c.x));
  c.y := Single(Int32(c.y));
  c.w := Single(Int32(c.w));
  c.h := Single(Int32(c.h));
  nk_layout_peek((@bounds), ctx);
  nk_unify((@v), (@c), bounds.x, bounds.y, (bounds.x + bounds.w), (bounds.y + bounds.h));
  if not Boolean(not Boolean((Boolean((Boolean((Boolean((bounds.x > (c.x + c.w))) or Boolean(((bounds.x + bounds.w) < c.x)))) or Boolean((bounds.y > (c.y + c.h))))) or Boolean(((bounds.y + bounds.h) < c.y))))) then begin
    exit 0;
  end;
  exit nk_input_has_mouse_click_down_in_rect((@(ctx)^.input), btn, bounds, down);
end;

method nk_widget(bounds: ^__struct_nk_rect; ctx: ^__struct_nk_context): __enum_nk_widget_layout_states; public;
begin
  var c: __struct_nk_rect;
  var v: __struct_nk_rect;
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit NK_WIDGET_INVALID;
  end;
  // allocate space and check if the widget needs to be updated and drawn
  nk_panel_alloc_space(bounds, ctx);
  win := (ctx)^.current;
  layout := (win)^.layout;
  &in := (@(ctx)^.input);
  c := (layout)^.clip;
  // if one of these triggers you forgot to add an `if` condition around either
  //         a window, group, popup, combobox or contextual menu `begin` and `end` block.
  //         Example:
  //             if (nk_begin(...) {...} nk_end(...); or
  //             if (nk_group_begin(...) { nk_group_end(...);}
  assert(not Boolean(((layout)^.flags and NK_WINDOW_MINIMIZED)));
  assert(not Boolean(((layout)^.flags and NK_WINDOW_HIDDEN)));
  assert(not Boolean(((layout)^.flags and NK_WINDOW_CLOSED)));
  // need to convert to int here to remove floating point errors
  (bounds)^.x := Single(Int32((bounds)^.x));
  (bounds)^.y := Single(Int32((bounds)^.y));
  (bounds)^.w := Single(Int32((bounds)^.w));
  (bounds)^.h := Single(Int32((bounds)^.h));
  c.x := Single(Int32(c.x));
  c.y := Single(Int32(c.y));
  c.w := Single(Int32(c.w));
  c.h := Single(Int32(c.h));
  nk_unify((@v), (@c), (bounds)^.x, (bounds)^.y, ((bounds)^.x + (bounds)^.w), ((bounds)^.y + (bounds)^.h));
  if not Boolean(not Boolean((Boolean((Boolean((Boolean(((bounds)^.x > (c.x + c.w))) or Boolean((((bounds)^.x + (bounds)^.w) < c.x)))) or Boolean(((bounds)^.y > (c.y + c.h))))) or Boolean((((bounds)^.y + (bounds)^.h) < c.y))))) then begin
    exit NK_WIDGET_INVALID;
  end;
  if not Boolean((Boolean((Boolean((v.x ≤ (&in)^.mouse.pos.x)) and Boolean(((&in)^.mouse.pos.x < (v.x + v.w))))) and Boolean((Boolean((v.y ≤ (&in)^.mouse.pos.y)) and Boolean(((&in)^.mouse.pos.y < (v.y + v.h))))))) then begin
    exit NK_WIDGET_ROM;
  end;
  exit NK_WIDGET_VALID;
end;

method nk_widget_fitting(bounds: ^__struct_nk_rect; ctx: ^__struct_nk_context; item_padding: __struct_nk_vec2): __enum_nk_widget_layout_states; public;
begin
  // update the bounds to stand without padding
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var layout: ^__struct_nk_panel;
  var state: __enum_nk_widget_layout_states;
  var panel_padding: __struct_nk_vec2;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit NK_WIDGET_INVALID;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  layout := (win)^.layout;
  state := nk_widget(bounds, ctx);
  panel_padding := nk_panel_get_padding(style, (layout)^.type);
  if ((layout)^.row.index = 1) then begin
    (bounds)^.w := (bounds)^.w + panel_padding.x;
    (bounds)^.x := (bounds)^.x - panel_padding.x;
  end
  else begin
    (bounds)^.x := (bounds)^.x - item_padding.x;
  end;
  if ((layout)^.row.index = (layout)^.row.columns) then begin
    (bounds)^.w := (bounds)^.w + panel_padding.x;
  end
  else begin
    (bounds)^.w := (bounds)^.w + item_padding.x;
  end;
  exit state;
end;

method nk_spacing(ctx: ^__struct_nk_context; cols: Int32); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var none: __struct_nk_rect;
  var i: Int32;
  var &index: Int32;
  var rows: Int32;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  // spacing over row boundaries
  win := (ctx)^.current;
  layout := (win)^.layout;
  &index := (((layout)^.row.index + cols) mod (layout)^.row.columns);
  rows := (((layout)^.row.index + cols) / (layout)^.row.columns);
  if rows then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < rows) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      nk_panel_alloc_row(ctx, win);
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    cols := &index;
  end;
  // non table layout need to allocate space
  if (Boolean(((layout)^.row.type ≠ NK_LAYOUT_DYNAMIC_FIXED)) and Boolean(((layout)^.row.type ≠ NK_LAYOUT_STATIC_FIXED))) then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < cols) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      nk_panel_alloc_space((@none), ctx);
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
  end;
  (layout)^.row.index := &index;
end;

// ===============================================================
//  *
//  *                              TEXT
//  *
//  * ===============================================================
method nk_widget_text(o: ^__struct_nk_command_buffer; b: __struct_nk_rect; string: ^Byte; len: Int32; t: ^__struct_nk_text; a: nk_flags; f: ^__struct_nk_user_font); public;
begin
  var label: __struct_nk_rect;
  var text_width: Single;
  assert(o);
  assert(t);
  if (Boolean(not Boolean(o)) or Boolean(not Boolean(t))) then begin
    exit;
  end;
  b.h := (if (b.h < (2 * (t)^.padding.y)) then ((2 * (t)^.padding.y)) else (b.h));
  label.x := 0;
  label.w := 0;
  label.y := (b.y + (t)^.padding.y);
  label.h := (if ((f)^.height < (b.h - (2 * (t)^.padding.y))) then ((f)^.height) else ((b.h - (2 * (t)^.padding.y))));
  text_width := (f)^.width((f)^.userdata, (f)^.height, ^Byte(string), len);
  text_width := text_width + (2.0 * (t)^.padding.x);
  // align in x-axis
  if (a and NK_TEXT_ALIGN_LEFT) then begin
    label.x := (b.x + (t)^.padding.x);
    label.w := (if (0 < (b.w - (2 * (t)^.padding.x))) then ((b.w - (2 * (t)^.padding.x))) else (0));
  end
  else begin
    if (a and NK_TEXT_ALIGN_CENTERED) then begin
      label.w := (if (1 < ((2 * (t)^.padding.x) + Single(text_width))) then (((2 * (t)^.padding.x) + Single(text_width))) else (1));
      label.x := ((b.x + (t)^.padding.x) + (((b.w - (2 * (t)^.padding.x)) - label.w) / 2));
      label.x := (if ((b.x + (t)^.padding.x) < label.x) then (label.x) else ((b.x + (t)^.padding.x)));
      label.w := (if ((b.x + b.w) < (label.x + label.w)) then ((b.x + b.w)) else ((label.x + label.w)));
      if (label.w ≥ label.x) then begin
        label.w := label.w - label.x;
      end;
    end
    else begin
      if (a and NK_TEXT_ALIGN_RIGHT) then begin
        label.x := (if ((b.x + (t)^.padding.x) < ((b.x + b.w) - ((2 * (t)^.padding.x) + Single(text_width)))) then (((b.x + b.w) - ((2 * (t)^.padding.x) + Single(text_width)))) else ((b.x + (t)^.padding.x)));
        label.w := (Single(text_width) + (2 * (t)^.padding.x));
      end
      else begin
        exit;
      end;
    end;
  end;
  // align in y-axis
  if (a and NK_TEXT_ALIGN_MIDDLE) then begin
    label.y := ((b.y + (b.h / 2.0)) - (Single((f)^.height) / 2.0));
    label.h := (if ((b.h / 2.0) < (b.h - ((b.h / 2.0) + ((f)^.height / 2.0)))) then ((b.h - ((b.h / 2.0) + ((f)^.height / 2.0)))) else ((b.h / 2.0)));
  end
  else begin
    if (a and NK_TEXT_ALIGN_BOTTOM) then begin
      label.y := ((b.y + b.h) - (f)^.height);
      label.h := (f)^.height;
    end;
  end;
  nk_draw_text(o, label, ^Byte(string), len, f, (t)^.background, (t)^.text);
end;

method nk_widget_text_wrap(o: ^__struct_nk_command_buffer; b: __struct_nk_rect; string: ^Byte; len: Int32; t: ^__struct_nk_text; f: ^__struct_nk_user_font); public;
begin
  var width: Single;
  var glyphs: Int32 := 0;
  var fitting: Int32 := 0;
  var done: Int32 := 0;
  var line: __struct_nk_rect;
  var text: __struct_nk_text;
  var seperator: ^nk_rune := [32];
  assert(o);
  assert(t);
  if (Boolean(not Boolean(o)) or Boolean(not Boolean(t))) then begin
    exit;
  end;
  text.padding := nk_vec2(0, 0);
  text.background := (t)^.background;
  text.text := (t)^.text;
  b.w := (if (b.w < (2 * (t)^.padding.x)) then ((2 * (t)^.padding.x)) else (b.w));
  b.h := (if (b.h < (2 * (t)^.padding.y)) then ((2 * (t)^.padding.y)) else (b.h));
  b.h := (b.h - (2 * (t)^.padding.y));
  line.x := (b.x + (t)^.padding.x);
  line.y := (b.y + (t)^.padding.y);
  line.w := (b.w - (2 * (t)^.padding.x));
  line.h := ((2 * (t)^.padding.y) + (f)^.height);
  fitting := nk_text_clamp(f, string, len, line.w, (@glyphs), (@width), seperator, (sizeOf(seperator) / sizeOf(seperator[0])));
  while (done < len) do begin
    if (Boolean(not Boolean(fitting)) or Boolean(((line.y + line.h) ≥ (b.y + b.h)))) then begin
      break;
    end;
    nk_widget_text(o, line, (@string[done]), fitting, (@text), NK_TEXT_LEFT, f);
    done := done + fitting;
    line.y := line.y + ((f)^.height + (2 * (t)^.padding.y));
    fitting := nk_text_clamp(f, (@string[done]), (len - done), line.w, (@glyphs), (@width), seperator, (sizeOf(seperator) / sizeOf(seperator[0])));
  end;
end;

method nk_text_colored(ctx: ^__struct_nk_context; str: ^Byte; len: Int32; alignment: nk_flags; color: __struct_nk_color); public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var item_padding: __struct_nk_vec2;
  var bounds: __struct_nk_rect;
  var text: __struct_nk_text;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  nk_panel_alloc_space((@bounds), ctx);
  item_padding := (style)^.text.padding;
  text.padding.x := item_padding.x;
  text.padding.y := item_padding.y;
  text.background := (style)^.window.background;
  text.text := color;
  nk_widget_text((@(win)^.buffer), bounds, str, len, (@text), alignment, (style)^.font);
end;

method nk_text_wrap_colored(ctx: ^__struct_nk_context; str: ^Byte; len: Int32; color: __struct_nk_color); public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var item_padding: __struct_nk_vec2;
  var bounds: __struct_nk_rect;
  var text: __struct_nk_text;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  nk_panel_alloc_space((@bounds), ctx);
  item_padding := (style)^.text.padding;
  text.padding.x := item_padding.x;
  text.padding.y := item_padding.y;
  text.background := (style)^.window.background;
  text.text := color;
  nk_widget_text_wrap((@(win)^.buffer), bounds, str, len, (@text), (style)^.font);
end;

method nk_text(ctx: ^__struct_nk_context; str: ^Byte; len: Int32; alignment: nk_flags); public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  nk_text_colored(ctx, str, len, alignment, (ctx)^.style.text.color);
end;

method nk_text_wrap(ctx: ^__struct_nk_context; str: ^Byte; len: Int32); public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  nk_text_wrap_colored(ctx, str, len, (ctx)^.style.text.color);
end;

method nk_label(ctx: ^__struct_nk_context; str: ^Byte; alignment: nk_flags); public;
begin
  nk_text(ctx, str, nk_strlen(str), alignment);
end;

method nk_label_colored(ctx: ^__struct_nk_context; str: ^Byte; align: nk_flags; color: __struct_nk_color); public;
begin
  nk_text_colored(ctx, str, nk_strlen(str), align, color);
end;

method nk_label_wrap(ctx: ^__struct_nk_context; str: ^Byte); public;
begin
  nk_text_wrap(ctx, str, nk_strlen(str));
end;

method nk_label_colored_wrap(ctx: ^__struct_nk_context; str: ^Byte; color: __struct_nk_color); public;
begin
  nk_text_wrap_colored(ctx, str, nk_strlen(str), color);
end;

// ===============================================================
//  *
//  *                          IMAGE
//  *
//  * ===============================================================
method nk_handle_ptr(ptr: ^Void): nk_handle; public;
begin
  var handle: nk_handle := [0];
  handle.ptr := ptr;
  exit handle;
end;

method nk_handle_id(id: Int32): nk_handle; public;
begin
  var handle: nk_handle;
  nk_zero((@handle), sizeOf(handle));
  handle.id := id;
  exit handle;
end;

method nk_subimage_ptr(ptr: ^Void; w: UInt16; h: UInt16; r: __struct_nk_rect): __struct_nk_image; public;
begin
  var s: __struct_nk_image;
  nk_zero((@s), sizeOf(s));
  s.handle.ptr := ptr;
  s.w := w;
  s.h := h;
  s.region[0] := UInt16(r.x);
  s.region[1] := UInt16(r.y);
  s.region[2] := UInt16(r.w);
  s.region[3] := UInt16(r.h);
  exit s;
end;

method nk_subimage_id(id: Int32; w: UInt16; h: UInt16; r: __struct_nk_rect): __struct_nk_image; public;
begin
  var s: __struct_nk_image;
  nk_zero((@s), sizeOf(s));
  s.handle.id := id;
  s.w := w;
  s.h := h;
  s.region[0] := UInt16(r.x);
  s.region[1] := UInt16(r.y);
  s.region[2] := UInt16(r.w);
  s.region[3] := UInt16(r.h);
  exit s;
end;

method nk_subimage_handle(handle: nk_handle; w: UInt16; h: UInt16; r: __struct_nk_rect): __struct_nk_image; public;
begin
  var s: __struct_nk_image;
  nk_zero((@s), sizeOf(s));
  s.handle := handle;
  s.w := w;
  s.h := h;
  s.region[0] := UInt16(r.x);
  s.region[1] := UInt16(r.y);
  s.region[2] := UInt16(r.w);
  s.region[3] := UInt16(r.h);
  exit s;
end;

method nk_image_handle(handle: nk_handle): __struct_nk_image; public;
begin
  var s: __struct_nk_image;
  nk_zero((@s), sizeOf(s));
  s.handle := handle;
  s.w := 0;
  s.h := 0;
  s.region[0] := 0;
  s.region[1] := 0;
  s.region[2] := 0;
  s.region[3] := 0;
  exit s;
end;

method nk_image_ptr(ptr: ^Void): __struct_nk_image; public;
begin
  var s: __struct_nk_image;
  nk_zero((@s), sizeOf(s));
  assert(ptr);
  s.handle.ptr := ptr;
  s.w := 0;
  s.h := 0;
  s.region[0] := 0;
  s.region[1] := 0;
  s.region[2] := 0;
  s.region[3] := 0;
  exit s;
end;

method nk_image_id(id: Int32): __struct_nk_image; public;
begin
  var s: __struct_nk_image;
  nk_zero((@s), sizeOf(s));
  s.handle.id := id;
  s.w := 0;
  s.h := 0;
  s.region[0] := 0;
  s.region[1] := 0;
  s.region[2] := 0;
  s.region[3] := 0;
  exit s;
end;

method nk_image_is_subimage(img: ^__struct_nk_image): Int32; public;
begin
  assert(img);
  exit not Boolean((Boolean(((img)^.w = 0)) and Boolean(((img)^.h = 0))));
end;

method nk_image(ctx: ^__struct_nk_context; img: __struct_nk_image); public;
begin
  var win: ^__struct_nk_window;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  if not Boolean(nk_widget((@bounds), ctx)) then begin
    exit;
  end;
  nk_draw_image((@(win)^.buffer), bounds, (@img), nk_white);
end;

method nk_image_color(ctx: ^__struct_nk_context; img: __struct_nk_image; col: __struct_nk_color); public;
begin
  var win: ^__struct_nk_window;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  if not Boolean(nk_widget((@bounds), ctx)) then begin
    exit;
  end;
  nk_draw_image((@(win)^.buffer), bounds, (@img), col);
end;

// ==============================================================
//  *
//  *                          BUTTON
//  *
//  * ===============================================================
method nk_draw_symbol(&out: ^__struct_nk_command_buffer; &type: __enum_nk_symbol_type; content: __struct_nk_rect; background: __struct_nk_color; foreground: __struct_nk_color; border_width: Single; font: ^__struct_nk_user_font); public;
begin
  case &type of
    NK_SYMBOL_X: begin
        goto switch0_0;
      end;
    NK_SYMBOL_UNDERSCORE: begin
        goto switch0_1;
      end;
    NK_SYMBOL_PLUS: begin
        goto switch0_2;
      end;
    NK_SYMBOL_MINUS: begin
        goto switch0_3;
      end;
    NK_SYMBOL_CIRCLE_SOLID: begin
        goto switch0_4;
      end;
    NK_SYMBOL_CIRCLE_OUTLINE: begin
        goto switch0_5;
      end;
    NK_SYMBOL_RECT_SOLID: begin
        goto switch0_6;
      end;
    NK_SYMBOL_RECT_OUTLINE: begin
        goto switch0_7;
      end;
    NK_SYMBOL_TRIANGLE_UP: begin
        goto switch0_8;
      end;
    NK_SYMBOL_TRIANGLE_DOWN: begin
        goto switch0_9;
      end;
    NK_SYMBOL_TRIANGLE_LEFT: begin
        goto switch0_10;
      end;
    NK_SYMBOL_TRIANGLE_RIGHT: begin
        goto switch0_11;
      end;
    NK_SYMBOL_NONE: begin
        goto switch0_12;
      end;
    NK_SYMBOL_MAX: begin
        goto switch0_13;
      end;
    else begin
      goto switch0_default;
    end;
  end;
  goto _breaklabelswitch0;
  switch0_0:;
  switch0_1:;
  switch0_2:;
  switch0_3:;
  begin
    // single character text symbol
    var X: ^Byte := (if (&type = NK_SYMBOL_X) then ("x") else ((if (&type = NK_SYMBOL_UNDERSCORE) then ("_") else ((if (&type = NK_SYMBOL_PLUS) then ("+") else ("-"))))));
    var text: __struct_nk_text;
    text.padding := nk_vec2(0, 0);
    text.background := background;
    text.text := foreground;
    nk_widget_text(&out, content, X, 1, (@text), NK_TEXT_CENTERED, font);
  end;
  goto _breaklabelswitch0;
  switch0_4:;
  switch0_5:;
  switch0_6:;
  switch0_7:;
  begin
    // simple empty/filled shapes
    if (Boolean((&type = NK_SYMBOL_RECT_SOLID)) or Boolean((&type = NK_SYMBOL_RECT_OUTLINE))) then begin
      nk_fill_rect(&out, content, 0, foreground);
      if (&type = NK_SYMBOL_RECT_OUTLINE) then begin
        nk_fill_rect(&out, nk_shrink_rect(content, border_width), 0, background);
      end;
    end
    else begin
      nk_fill_circle(&out, content, foreground);
      if (&type = NK_SYMBOL_CIRCLE_OUTLINE) then begin
        nk_fill_circle(&out, nk_shrink_rect(content, 1), background);
      end;
    end;
  end;
  goto _breaklabelswitch0;
  switch0_8:;
  switch0_9:;
  switch0_10:;
  switch0_11:;
  begin
    var heading: __enum_nk_heading;
    var points: array[0..3 - 1] of __struct_nk_vec2;
    heading := (if (&type = NK_SYMBOL_TRIANGLE_RIGHT) then (NK_RIGHT) else ((if (&type = NK_SYMBOL_TRIANGLE_LEFT) then (NK_LEFT) else ((if (&type = NK_SYMBOL_TRIANGLE_UP) then (NK_UP) else (NK_DOWN))))));
    nk_triangle_from_direction(points, content, 0, 0, heading);
    nk_fill_triangle(&out, points[0].x, points[0].y, points[1].x, points[1].y, points[2].x, points[2].y, foreground);
  end;
  goto _breaklabelswitch0;
  switch0_default:;
  switch0_12:;
  switch0_13:;
  goto _breaklabelswitch0;
  _breaklabelswitch0:;
end;

method nk_button_behavior(state: ^nk_flags; r: __struct_nk_rect; i: ^__struct_nk_input; behavior: __enum_nk_button_behavior): Int32; public;
begin
  var ret: Int32 := 0;
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  if not Boolean(i) then begin
    exit 0;
  end;
  if nk_input_is_mouse_hovering_rect(i, r) then begin
    (state)^ := NK_WIDGET_STATE_HOVERED;
    if nk_input_is_mouse_down(i, NK_BUTTON_LEFT) then begin
      (state)^ := NK_WIDGET_STATE_ACTIVE;
    end;
    if nk_input_has_mouse_click_in_rect(i, NK_BUTTON_LEFT, r) then begin
      ret := (if (behavior ≠ NK_BUTTON_DEFAULT) then (nk_input_is_mouse_down(i, NK_BUTTON_LEFT)) else (nk_input_is_mouse_pressed(i, NK_BUTTON_LEFT)));
    end;
  end;
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(i, r)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(i, r) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
  exit ret;
end;

method nk_draw_button(&out: ^__struct_nk_command_buffer; bounds: ^__struct_nk_rect; state: nk_flags; style: ^__struct_nk_style_button): ^__struct_nk_style_item; public;
begin
  var background: ^__struct_nk_style_item;
  if (state and NK_WIDGET_STATE_HOVER) then begin
    background := (@(style)^.hover);
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      background := (@(style)^.active);
    end
    else begin
      background := (@(style)^.normal);
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image(&out, (bounds)^, (@(background)^.data.image), nk_white);
  end
  else begin
    nk_fill_rect(&out, (bounds)^, (style)^.rounding, (background)^.data.color);
    nk_stroke_rect(&out, (bounds)^, (style)^.rounding, (style)^.border, (style)^.border_color);
  end;
  exit background;
end;

method nk_do_button(state: ^nk_flags; &out: ^__struct_nk_command_buffer; r: __struct_nk_rect; style: ^__struct_nk_style_button; &in: ^__struct_nk_input; behavior: __enum_nk_button_behavior; content: ^__struct_nk_rect): Int32; public;
begin
  var bounds: __struct_nk_rect;
  assert(style);
  assert(state);
  assert(&out);
  if (Boolean(not Boolean(&out)) or Boolean(not Boolean(style))) then begin
    exit nk_false;
  end;
  // calculate button content space
  (content)^.x := (((r.x + (style)^.padding.x) + (style)^.border) + (style)^.rounding);
  (content)^.y := (((r.y + (style)^.padding.y) + (style)^.border) + (style)^.rounding);
  (content)^.w := (r.w - (((2 * (style)^.padding.x) + (style)^.border) + ((style)^.rounding * 2)));
  (content)^.h := (r.h - (((2 * (style)^.padding.y) + (style)^.border) + ((style)^.rounding * 2)));
  // execute button behavior
  bounds.x := (r.x - (style)^.touch_padding.x);
  bounds.y := (r.y - (style)^.touch_padding.y);
  bounds.w := (r.w + (2 * (style)^.touch_padding.x));
  bounds.h := (r.h + (2 * (style)^.touch_padding.y));
  exit nk_button_behavior(state, bounds, &in, behavior);
end;

method nk_draw_button_text(&out: ^__struct_nk_command_buffer; bounds: ^__struct_nk_rect; content: ^__struct_nk_rect; state: nk_flags; style: ^__struct_nk_style_button; txt: ^Byte; len: Int32; text_alignment: nk_flags; font: ^__struct_nk_user_font); public;
begin
  var text: __struct_nk_text;
  var background: ^__struct_nk_style_item;
  background := nk_draw_button(&out, bounds, state, style);
  // select correct colors/images
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    text.background := (background)^.data.color;
  end
  else begin
    text.background := (style)^.text_background;
  end;
  if (state and NK_WIDGET_STATE_HOVER) then begin
    text.text := (style)^.text_hover;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      text.text := (style)^.text_active;
    end
    else begin
      text.text := (style)^.text_normal;
    end;
  end;
  text.padding := nk_vec2(0, 0);
  nk_widget_text(&out, (content)^, txt, len, (@text), text_alignment, font);
end;

method nk_do_button_text(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; string: ^Byte; len: Int32; align: nk_flags; behavior: __enum_nk_button_behavior; style: ^__struct_nk_style_button; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var content: __struct_nk_rect;
  var ret: Int32 := nk_false;
  assert(state);
  assert(style);
  assert(&out);
  assert(string);
  assert(font);
  if (Boolean((Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font)))) or Boolean(not Boolean(string))) then begin
    exit nk_false;
  end;
  ret := nk_do_button(state, &out, bounds, style, &in, behavior, (@content));
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_button_text(&out, (@bounds), (@content), (state)^, style, string, len, align, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit ret;
end;

method nk_draw_button_symbol(&out: ^__struct_nk_command_buffer; bounds: ^__struct_nk_rect; content: ^__struct_nk_rect; state: nk_flags; style: ^__struct_nk_style_button; &type: __enum_nk_symbol_type; font: ^__struct_nk_user_font); public;
begin
  var sym: __struct_nk_color;
  var bg: __struct_nk_color;
  var background: ^__struct_nk_style_item;
  // select correct colors/images
  background := nk_draw_button(&out, bounds, state, style);
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    bg := (background)^.data.color;
  end
  else begin
    bg := (style)^.text_background;
  end;
  if (state and NK_WIDGET_STATE_HOVER) then begin
    sym := (style)^.text_hover;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      sym := (style)^.text_active;
    end
    else begin
      sym := (style)^.text_normal;
    end;
  end;
  nk_draw_symbol(&out, &type, (content)^, bg, sym, 1, font);
end;

method nk_do_button_symbol(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; symbol: __enum_nk_symbol_type; behavior: __enum_nk_button_behavior; style: ^__struct_nk_style_button; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var ret: Int32;
  var content: __struct_nk_rect;
  assert(state);
  assert(style);
  assert(font);
  assert(&out);
  if (Boolean((Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font)))) or Boolean(not Boolean(state))) then begin
    exit nk_false;
  end;
  ret := nk_do_button(state, &out, bounds, style, &in, behavior, (@content));
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_button_symbol(&out, (@bounds), (@content), (state)^, style, symbol, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit ret;
end;

method nk_draw_button_image(&out: ^__struct_nk_command_buffer; bounds: ^__struct_nk_rect; content: ^__struct_nk_rect; state: nk_flags; style: ^__struct_nk_style_button; img: ^__struct_nk_image); public;
begin
  nk_draw_button(&out, bounds, state, style);
  nk_draw_image(&out, (content)^, img, nk_white);
end;

method nk_do_button_image(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; img: __struct_nk_image; b: __enum_nk_button_behavior; style: ^__struct_nk_style_button; &in: ^__struct_nk_input): Int32; public;
begin
  var ret: Int32;
  var content: __struct_nk_rect;
  assert(state);
  assert(style);
  assert(&out);
  if (Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(style)))) or Boolean(not Boolean(state))) then begin
    exit nk_false;
  end;
  ret := nk_do_button(state, &out, bounds, style, &in, b, (@content));
  content.x := content.x + (style)^.image_padding.x;
  content.y := content.y + (style)^.image_padding.y;
  content.w := content.w - (2 * (style)^.image_padding.x);
  content.h := content.h - (2 * (style)^.image_padding.y);
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_button_image(&out, (@bounds), (@content), (state)^, style, (@img));
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit ret;
end;

method nk_draw_button_text_symbol(&out: ^__struct_nk_command_buffer; bounds: ^__struct_nk_rect; label: ^__struct_nk_rect; symbol: ^__struct_nk_rect; state: nk_flags; style: ^__struct_nk_style_button; str: ^Byte; len: Int32; &type: __enum_nk_symbol_type; font: ^__struct_nk_user_font); public;
begin
  var sym: __struct_nk_color;
  var text: __struct_nk_text;
  var background: ^__struct_nk_style_item;
  // select correct background colors/images
  background := nk_draw_button(&out, bounds, state, style);
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    text.background := (background)^.data.color;
  end
  else begin
    text.background := (style)^.text_background;
  end;
  // select correct text colors
  if (state and NK_WIDGET_STATE_HOVER) then begin
    sym := (style)^.text_hover;
    text.text := (style)^.text_hover;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      sym := (style)^.text_active;
      text.text := (style)^.text_active;
    end
    else begin
      sym := (style)^.text_normal;
      text.text := (style)^.text_normal;
    end;
  end;
  text.padding := nk_vec2(0, 0);
  nk_draw_symbol(&out, &type, (symbol)^, (style)^.text_background, sym, 0, font);
  nk_widget_text(&out, (label)^, str, len, (@text), NK_TEXT_CENTERED, font);
end;

method nk_do_button_text_symbol(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; symbol: __enum_nk_symbol_type; str: ^Byte; len: Int32; align: nk_flags; behavior: __enum_nk_button_behavior; style: ^__struct_nk_style_button; font: ^__struct_nk_user_font; &in: ^__struct_nk_input): Int32; public;
begin
  var ret: Int32;
  var tri: __struct_nk_rect := [0, 0, 0, 0];
  var content: __struct_nk_rect;
  assert(style);
  assert(&out);
  assert(font);
  if (Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font))) then begin
    exit nk_false;
  end;
  ret := nk_do_button(state, &out, bounds, style, &in, behavior, (@content));
  tri.y := ((content.y + (content.h / 2)) - ((font)^.height / 2));
  tri.w := (font)^.height;
  tri.h := (font)^.height;
  if (align and NK_TEXT_ALIGN_LEFT) then begin
    tri.x := ((content.x + content.w) - ((2 * (style)^.padding.x) + tri.w));
    tri.x := (if (tri.x < 0) then (0) else (tri.x));
  end
  else begin
    tri.x := (content.x + (2 * (style)^.padding.x));
  end;
  // draw button
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_button_text_symbol(&out, (@bounds), (@content), (@tri), (state)^, style, str, len, symbol, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit ret;
end;

method nk_draw_button_text_image(&out: ^__struct_nk_command_buffer; bounds: ^__struct_nk_rect; label: ^__struct_nk_rect; image: ^__struct_nk_rect; state: nk_flags; style: ^__struct_nk_style_button; str: ^Byte; len: Int32; font: ^__struct_nk_user_font; img: ^__struct_nk_image); public;
begin
  var text: __struct_nk_text;
  var background: ^__struct_nk_style_item;
  background := nk_draw_button(&out, bounds, state, style);
  // select correct colors
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    text.background := (background)^.data.color;
  end
  else begin
    text.background := (style)^.text_background;
  end;
  if (state and NK_WIDGET_STATE_HOVER) then begin
    text.text := (style)^.text_hover;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      text.text := (style)^.text_active;
    end
    else begin
      text.text := (style)^.text_normal;
    end;
  end;
  text.padding := nk_vec2(0, 0);
  nk_widget_text(&out, (label)^, str, len, (@text), NK_TEXT_CENTERED, font);
  nk_draw_image(&out, (image)^, img, nk_white);
end;

method nk_do_button_text_image(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; img: __struct_nk_image; str: ^Byte; len: Int32; align: nk_flags; behavior: __enum_nk_button_behavior; style: ^__struct_nk_style_button; font: ^__struct_nk_user_font; &in: ^__struct_nk_input): Int32; public;
begin
  var ret: Int32;
  var icon: __struct_nk_rect;
  var content: __struct_nk_rect;
  assert(style);
  assert(state);
  assert(font);
  assert(&out);
  if (Boolean((Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(font)))) or Boolean(not Boolean(style)))) or Boolean(not Boolean(str))) then begin
    exit nk_false;
  end;
  ret := nk_do_button(state, &out, bounds, style, &in, behavior, (@content));
  icon.y := (bounds.y + (style)^.padding.y);
  icon.w := (() -> begin
    var _tmp0 := (bounds.h - (2 * (style)^.padding.y));
    icon.h := _tmp0;
    exit _tmp0;
  end)();
  if (align and NK_TEXT_ALIGN_LEFT) then begin
    icon.x := ((bounds.x + bounds.w) - ((2 * (style)^.padding.x) + icon.w));
    icon.x := (if (icon.x < 0) then (0) else (icon.x));
  end
  else begin
    icon.x := (bounds.x + (2 * (style)^.padding.x));
  end;
  icon.x := icon.x + (style)^.image_padding.x;
  icon.y := icon.y + (style)^.image_padding.y;
  icon.w := icon.w - (2 * (style)^.image_padding.x);
  icon.h := icon.h - (2 * (style)^.image_padding.y);
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_button_text_image(&out, (@bounds), (@content), (@icon), (state)^, style, str, len, font, (@img));
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit ret;
end;

method nk_button_set_behavior(ctx: ^__struct_nk_context; behavior: __enum_nk_button_behavior); public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit;
  end;
  (ctx)^.button_behavior := behavior;
end;

method nk_button_push_behavior(ctx: ^__struct_nk_context; behavior: __enum_nk_button_behavior): Int32; public;
begin
  var button_stack: ^__struct_nk_config_stack_button_behavior;
  var element: ^__struct_nk_config_stack_button_behavior_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  button_stack := (@(ctx)^.stacks.button_behaviors);
  assert(((button_stack)^.head < Int32((sizeOf((button_stack)^.elements) / sizeOf((button_stack)^.elements[0])))));
  if ((button_stack)^.head ≥ Int32((sizeOf((button_stack)^.elements) / sizeOf((button_stack)^.elements[0])))) then begin
    exit 0;
  end;
  element := (@(button_stack)^.elements[(() -> begin
    var _tmp0 := (button_stack)^.head;
    (button_stack)^.head := _tmp0 + 1;
    exit _tmp0;
  end)()]);
  (element)^.address := (@(ctx)^.button_behavior);
  (element)^.old_value := (ctx)^.button_behavior;
  (ctx)^.button_behavior := behavior;
  exit 1;
end;

method nk_button_pop_behavior(ctx: ^__struct_nk_context): Int32; public;
begin
  var button_stack: ^__struct_nk_config_stack_button_behavior;
  var element: ^__struct_nk_config_stack_button_behavior_element;
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  button_stack := (@(ctx)^.stacks.button_behaviors);
  assert(((button_stack)^.head > 0));
  if ((button_stack)^.head < 1) then begin
    exit 0;
  end;
  element := (@(button_stack)^.elements[(() -> begin
    var _tmp0 := (button_stack)^.head - 1;
    (button_stack)^.head := _tmp0;
    exit _tmp0;
  end)()]);
  ((element)^.address)^ := (element)^.old_value;
  exit 1;
end;

method nk_button_text_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; title: ^Byte; len: Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert(style);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(style)) or Boolean(not Boolean(ctx)))) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_button_text((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, title, len, (style)^.text_alignment, (ctx)^.button_behavior, style, &in, (ctx)^.style.font);
end;

method nk_button_text(ctx: ^__struct_nk_context; title: ^Byte; len: Int32): Int32; public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  exit nk_button_text_styled(ctx, (@(ctx)^.style.button), title, len);
end;

method nk_button_label_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; title: ^Byte): Int32; public;
begin
  exit nk_button_text_styled(ctx, style, title, nk_strlen(title));
end;

method nk_button_label(ctx: ^__struct_nk_context; title: ^Byte): Int32; public;
begin
  exit nk_button_text(ctx, title, nk_strlen(title));
end;

method nk_button_color(ctx: ^__struct_nk_context; color: __struct_nk_color): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var button: __struct_nk_style_button;
  var ret: Int32 := 0;
  var bounds: __struct_nk_rect;
  var content: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  button := (ctx)^.style.button;
  button.normal := nk_style_item_color(color);
  button.hover := nk_style_item_color(color);
  button.active := nk_style_item_color(color);
  ret := nk_do_button((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, (@button), &in, (ctx)^.button_behavior, (@content));
  nk_draw_button((@(win)^.buffer), (@bounds), (ctx)^.last_widget_state, (@button));
  exit ret;
end;

method nk_button_symbol_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; symbol: __enum_nk_symbol_type): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_button_symbol((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, symbol, (ctx)^.button_behavior, style, &in, (ctx)^.style.font);
end;

method nk_button_symbol(ctx: ^__struct_nk_context; symbol: __enum_nk_symbol_type): Int32; public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  exit nk_button_symbol_styled(ctx, (@(ctx)^.style.button), symbol);
end;

method nk_button_image_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; img: __struct_nk_image): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_button_image((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, img, (ctx)^.button_behavior, style, &in);
end;

method nk_button_image(ctx: ^__struct_nk_context; img: __struct_nk_image): Int32; public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  exit nk_button_image_styled(ctx, (@(ctx)^.style.button), img);
end;

method nk_button_symbol_text_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; symbol: __enum_nk_symbol_type; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_button_text_symbol((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, symbol, text, len, align, (ctx)^.button_behavior, style, (ctx)^.style.font, &in);
end;

method nk_button_symbol_text(ctx: ^__struct_nk_context; symbol: __enum_nk_symbol_type; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  assert(ctx);
  if not Boolean(ctx) then begin
    exit 0;
  end;
  exit nk_button_symbol_text_styled(ctx, (@(ctx)^.style.button), symbol, text, len, align);
end;

method nk_button_symbol_label(ctx: ^__struct_nk_context; symbol: __enum_nk_symbol_type; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_button_symbol_text(ctx, symbol, label, nk_strlen(label), align);
end;

method nk_button_symbol_label_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; symbol: __enum_nk_symbol_type; title: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_button_symbol_text_styled(ctx, style, symbol, title, nk_strlen(title), align);
end;

method nk_button_image_text_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; img: __struct_nk_image; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_button_text_image((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, img, text, len, align, (ctx)^.button_behavior, style, (ctx)^.style.font, &in);
end;

method nk_button_image_text(ctx: ^__struct_nk_context; img: __struct_nk_image; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  exit nk_button_image_text_styled(ctx, (@(ctx)^.style.button), img, text, len, align);
end;

method nk_button_image_label(ctx: ^__struct_nk_context; img: __struct_nk_image; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_button_image_text(ctx, img, label, nk_strlen(label), align);
end;

method nk_button_image_label_styled(ctx: ^__struct_nk_context; style: ^__struct_nk_style_button; img: __struct_nk_image; label: ^Byte; text_alignment: nk_flags): Int32; public;
begin
  exit nk_button_image_text_styled(ctx, style, img, label, nk_strlen(label), text_alignment);
end;

// ===============================================================
//  *
//  *                              TOGGLE
//  *
//  * ===============================================================
method nk_toggle_behavior(&in: ^__struct_nk_input; &select: __struct_nk_rect; state: ^nk_flags; active: Int32): Int32; public;
begin
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  if nk_button_behavior(state, &select, &in, NK_BUTTON_DEFAULT) then begin
    (state)^ := NK_WIDGET_STATE_ACTIVE;
    active := not Boolean(active);
  end;
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(&in, &select)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(&in, &select) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
  exit active;
end;

method nk_draw_checkbox(&out: ^__struct_nk_command_buffer; state: nk_flags; style: ^__struct_nk_style_toggle; active: Int32; label: ^__struct_nk_rect; selector: ^__struct_nk_rect; cursors: ^__struct_nk_rect; string: ^Byte; len: Int32; font: ^__struct_nk_user_font); public;
begin
  var background: ^__struct_nk_style_item;
  var cursor: ^__struct_nk_style_item;
  var text: __struct_nk_text;
  // select correct colors/images
  if (state and NK_WIDGET_STATE_HOVER) then begin
    background := (@(style)^.hover);
    cursor := (@(style)^.cursor_hover);
    text.text := (style)^.text_hover;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      background := (@(style)^.hover);
      cursor := (@(style)^.cursor_hover);
      text.text := (style)^.text_active;
    end
    else begin
      background := (@(style)^.normal);
      cursor := (@(style)^.cursor_normal);
      text.text := (style)^.text_normal;
    end;
  end;
  // draw background and cursor
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    nk_fill_rect(&out, (selector)^, 0, (style)^.border_color);
    nk_fill_rect(&out, nk_shrink_rect((selector)^, (style)^.border), 0, (background)^.data.color);
  end
  else begin
    nk_draw_image(&out, (selector)^, (@(background)^.data.image), nk_white);
  end;
  if active then begin
    if ((cursor)^.type = NK_STYLE_ITEM_IMAGE) then begin
      nk_draw_image(&out, (cursors)^, (@(cursor)^.data.image), nk_white);
    end
    else begin
      nk_fill_rect(&out, (cursors)^, 0, (cursor)^.data.color);
    end;
  end;
  text.padding.x := 0;
  text.padding.y := 0;
  text.background := (style)^.text_background;
  nk_widget_text(&out, (label)^, string, len, (@text), NK_TEXT_LEFT, font);
end;

method nk_draw_option(&out: ^__struct_nk_command_buffer; state: nk_flags; style: ^__struct_nk_style_toggle; active: Int32; label: ^__struct_nk_rect; selector: ^__struct_nk_rect; cursors: ^__struct_nk_rect; string: ^Byte; len: Int32; font: ^__struct_nk_user_font); public;
begin
  var background: ^__struct_nk_style_item;
  var cursor: ^__struct_nk_style_item;
  var text: __struct_nk_text;
  // select correct colors/images
  if (state and NK_WIDGET_STATE_HOVER) then begin
    background := (@(style)^.hover);
    cursor := (@(style)^.cursor_hover);
    text.text := (style)^.text_hover;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      background := (@(style)^.hover);
      cursor := (@(style)^.cursor_hover);
      text.text := (style)^.text_active;
    end
    else begin
      background := (@(style)^.normal);
      cursor := (@(style)^.cursor_normal);
      text.text := (style)^.text_normal;
    end;
  end;
  // draw background and cursor
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    nk_fill_circle(&out, (selector)^, (style)^.border_color);
    nk_fill_circle(&out, nk_shrink_rect((selector)^, (style)^.border), (background)^.data.color);
  end
  else begin
    nk_draw_image(&out, (selector)^, (@(background)^.data.image), nk_white);
  end;
  if active then begin
    if ((cursor)^.type = NK_STYLE_ITEM_IMAGE) then begin
      nk_draw_image(&out, (cursors)^, (@(cursor)^.data.image), nk_white);
    end
    else begin
      nk_fill_circle(&out, (cursors)^, (cursor)^.data.color);
    end;
  end;
  text.padding.x := 0;
  text.padding.y := 0;
  text.background := (style)^.text_background;
  nk_widget_text(&out, (label)^, string, len, (@text), NK_TEXT_LEFT, font);
end;

method nk_do_toggle(state: ^nk_flags; &out: ^__struct_nk_command_buffer; r: __struct_nk_rect; active: ^Int32; str: ^Byte; len: Int32; &type: __enum_nk_toggle_type; style: ^__struct_nk_style_toggle; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var was_active: Int32;
  var bounds: __struct_nk_rect;
  var &select: __struct_nk_rect;
  var cursor: __struct_nk_rect;
  var label: __struct_nk_rect;
  assert(style);
  assert(&out);
  assert(font);
  if (Boolean((Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font)))) or Boolean(not Boolean(active))) then begin
    exit 0;
  end;
  r.w := (if (r.w < ((font)^.height + (2 * (style)^.padding.x))) then (((font)^.height + (2 * (style)^.padding.x))) else (r.w));
  r.h := (if (r.h < ((font)^.height + (2 * (style)^.padding.y))) then (((font)^.height + (2 * (style)^.padding.y))) else (r.h));
  // add additional touch padding for touch screen devices
  bounds.x := (r.x - (style)^.touch_padding.x);
  bounds.y := (r.y - (style)^.touch_padding.y);
  bounds.w := (r.w + (2 * (style)^.touch_padding.x));
  bounds.h := (r.h + (2 * (style)^.touch_padding.y));
  // calculate the selector space
  &select.w := (font)^.height;
  &select.h := &select.w;
  &select.y := ((r.y + (r.h / 2.0)) - (&select.h / 2.0));
  &select.x := r.x;
  // calculate the bounds of the cursor inside the selector
  cursor.x := ((&select.x + (style)^.padding.x) + (style)^.border);
  cursor.y := ((&select.y + (style)^.padding.y) + (style)^.border);
  cursor.w := (&select.w - ((2 * (style)^.padding.x) + (2 * (style)^.border)));
  cursor.h := (&select.h - ((2 * (style)^.padding.y) + (2 * (style)^.border)));
  // label behind the selector
  label.x := ((&select.x + &select.w) + (style)^.spacing);
  label.y := &select.y;
  label.w := ((if ((r.x + r.w) < label.x) then (label.x) else ((r.x + r.w))) - label.x);
  label.h := &select.w;
  // update selector
  was_active := (active)^;
  (active)^ := nk_toggle_behavior(&in, bounds, state, (active)^);
  // draw selector
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  if (&type = NK_TOGGLE_CHECK) then begin
    nk_draw_checkbox(&out, (state)^, style, (active)^, (@label), (@&select), (@cursor), str, len, font);
  end
  else begin
    nk_draw_option(&out, (state)^, style, (active)^, (@label), (@&select), (@cursor), str, len, font);
  end;
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit (was_active ≠ (active)^);
end;

// ----------------------------------------------------------------
//  *
//  *                          CHECKBOX
//  *
//  * --------------------------------------------------------------
method nk_check_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; active: Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit active;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit active;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  nk_do_toggle((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, (@active), text, len, NK_TOGGLE_CHECK, (@(style)^.checkbox), &in, (style)^.font);
  exit active;
end;

method nk_check_flags_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; &flags: UInt32; value: UInt32): UInt32; public;
begin
  var old_active: Int32;
  assert(ctx);
  assert(text);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(text))) then begin
    exit &flags;
  end;
  old_active := Int32(((&flags and value) and value));
  if nk_check_text(ctx, text, len, old_active) then begin
    &flags := &flags or value;
  end
  else begin
    &flags := &flags and not value;
  end;
  exit &flags;
end;

method nk_checkbox_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; active: ^Int32): Int32; public;
begin
  var old_val: Int32;
  assert(ctx);
  assert(text);
  assert(active);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(active))) then begin
    exit 0;
  end;
  old_val := (active)^;
  (active)^ := nk_check_text(ctx, text, len, (active)^);
  exit (old_val ≠ (active)^);
end;

method nk_checkbox_flags_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; &flags: ^UInt32; value: UInt32): Int32; public;
begin
  var active: Int32;
  assert(ctx);
  assert(text);
  assert(&flags);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(&flags))) then begin
    exit 0;
  end;
  active := Int32((((&flags)^ and value) and value));
  if nk_checkbox_text(ctx, text, len, (@active)) then begin
    if active then begin
      (&flags)^ := (&flags)^ or value;
    end
    else begin
      (&flags)^ := (&flags)^ and not value;
    end;
    exit 1;
  end;
  exit 0;
end;

method nk_check_label(ctx: ^__struct_nk_context; label: ^Byte; active: Int32): Int32; public;
begin
  exit nk_check_text(ctx, label, nk_strlen(label), active);
end;

method nk_check_flags_label(ctx: ^__struct_nk_context; label: ^Byte; &flags: UInt32; value: UInt32): UInt32; public;
begin
  exit nk_check_flags_text(ctx, label, nk_strlen(label), &flags, value);
end;

method nk_checkbox_label(ctx: ^__struct_nk_context; label: ^Byte; active: ^Int32): Int32; public;
begin
  exit nk_checkbox_text(ctx, label, nk_strlen(label), active);
end;

method nk_checkbox_flags_label(ctx: ^__struct_nk_context; label: ^Byte; &flags: ^UInt32; value: UInt32): Int32; public;
begin
  exit nk_checkbox_flags_text(ctx, label, nk_strlen(label), &flags, value);
end;

// ----------------------------------------------------------------
//  *
//  *                          OPTION
//  *
//  * --------------------------------------------------------------
method nk_option_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; is_active: Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit is_active;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit Int32(state);
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  nk_do_toggle((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, (@is_active), text, len, NK_TOGGLE_OPTION, (@(style)^.option), &in, (style)^.font);
  exit is_active;
end;

method nk_radio_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; active: ^Int32): Int32; public;
begin
  var old_value: Int32;
  assert(ctx);
  assert(text);
  assert(active);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(text)))) or Boolean(not Boolean(active))) then begin
    exit 0;
  end;
  old_value := (active)^;
  (active)^ := nk_option_text(ctx, text, len, old_value);
  exit (old_value ≠ (active)^);
end;

method nk_option_label(ctx: ^__struct_nk_context; label: ^Byte; active: Int32): Int32; public;
begin
  exit nk_option_text(ctx, label, nk_strlen(label), active);
end;

method nk_radio_label(ctx: ^__struct_nk_context; label: ^Byte; active: ^Int32): Int32; public;
begin
  exit nk_radio_text(ctx, label, nk_strlen(label), active);
end;

// ===============================================================
//  *
//  *                              SELECTABLE
//  *
//  * ===============================================================
method nk_draw_selectable(&out: ^__struct_nk_command_buffer; state: nk_flags; style: ^__struct_nk_style_selectable; active: Int32; bounds: ^__struct_nk_rect; icon: ^__struct_nk_rect; img: ^__struct_nk_image; sym: __enum_nk_symbol_type; string: ^Byte; len: Int32; align: nk_flags; font: ^__struct_nk_user_font); public;
begin
  var background: ^__struct_nk_style_item;
  var text: __struct_nk_text;
  text.padding := (style)^.padding;
  // select correct colors/images
  if not Boolean(active) then begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      background := (@(style)^.pressed);
      text.text := (style)^.text_pressed;
    end
    else begin
      if (state and NK_WIDGET_STATE_HOVER) then begin
        background := (@(style)^.hover);
        text.text := (style)^.text_hover;
      end
      else begin
        background := (@(style)^.normal);
        text.text := (style)^.text_normal;
      end;
    end;
  end
  else begin
    if (state and NK_WIDGET_STATE_ACTIVED) then begin
      background := (@(style)^.pressed_active);
      text.text := (style)^.text_pressed_active;
    end
    else begin
      if (state and NK_WIDGET_STATE_HOVER) then begin
        background := (@(style)^.hover_active);
        text.text := (style)^.text_hover_active;
      end
      else begin
        background := (@(style)^.normal_active);
        text.text := (style)^.text_normal_active;
      end;
    end;
  end;
  // draw selectable background and text
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image(&out, (bounds)^, (@(background)^.data.image), nk_white);
    text.background := nk_rgba(0, 0, 0, 0);
  end
  else begin
    nk_fill_rect(&out, (bounds)^, (style)^.rounding, (background)^.data.color);
    text.background := (background)^.data.color;
  end;
  if icon then begin
    if img then begin
      nk_draw_image(&out, (icon)^, img, nk_white);
    end
    else begin
      nk_draw_symbol(&out, sym, (icon)^, text.background, text.text, 1, font);
    end;
  end;
  nk_widget_text(&out, (bounds)^, string, len, (@text), align, font);
end;

method nk_do_selectable(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; str: ^Byte; len: Int32; align: nk_flags; value: ^Int32; style: ^__struct_nk_style_selectable; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var old_value: Int32;
  var touch: __struct_nk_rect;
  assert(state);
  assert(&out);
  assert(str);
  assert(len);
  assert(value);
  assert(style);
  assert(font);
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(state)) or Boolean(not Boolean(&out)))) or Boolean(not Boolean(str)))) or Boolean(not Boolean(len)))) or Boolean(not Boolean(value)))) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font))) then begin
    exit 0;
  end;
  old_value := (value)^;
  // remove padding
  touch.x := (bounds.x - (style)^.touch_padding.x);
  touch.y := (bounds.y - (style)^.touch_padding.y);
  touch.w := (bounds.w + ((style)^.touch_padding.x * 2));
  touch.h := (bounds.h + ((style)^.touch_padding.y * 2));
  // update button
  if nk_button_behavior(state, touch, &in, NK_BUTTON_DEFAULT) then begin
    (value)^ := not Boolean((value)^);
  end;
  // draw selectable
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_selectable(&out, (state)^, style, (value)^, (@bounds), 0, 0, NK_SYMBOL_NONE, str, len, align, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit (old_value ≠ (value)^);
end;

method nk_do_selectable_image(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; str: ^Byte; len: Int32; align: nk_flags; value: ^Int32; img: ^__struct_nk_image; style: ^__struct_nk_style_selectable; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var old_value: Int32;
  var touch: __struct_nk_rect;
  var icon: __struct_nk_rect;
  assert(state);
  assert(&out);
  assert(str);
  assert(len);
  assert(value);
  assert(style);
  assert(font);
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(state)) or Boolean(not Boolean(&out)))) or Boolean(not Boolean(str)))) or Boolean(not Boolean(len)))) or Boolean(not Boolean(value)))) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font))) then begin
    exit 0;
  end;
  old_value := (value)^;
  // toggle behavior
  touch.x := (bounds.x - (style)^.touch_padding.x);
  touch.y := (bounds.y - (style)^.touch_padding.y);
  touch.w := (bounds.w + ((style)^.touch_padding.x * 2));
  touch.h := (bounds.h + ((style)^.touch_padding.y * 2));
  if nk_button_behavior(state, touch, &in, NK_BUTTON_DEFAULT) then begin
    (value)^ := not Boolean((value)^);
  end;
  icon.y := (bounds.y + (style)^.padding.y);
  icon.w := (() -> begin
    var _tmp0 := (bounds.h - (2 * (style)^.padding.y));
    icon.h := _tmp0;
    exit _tmp0;
  end)();
  if (align and NK_TEXT_ALIGN_LEFT) then begin
    icon.x := ((bounds.x + bounds.w) - ((2 * (style)^.padding.x) + icon.w));
    icon.x := (if (icon.x < 0) then (0) else (icon.x));
  end
  else begin
    icon.x := (bounds.x + (2 * (style)^.padding.x));
  end;
  icon.x := icon.x + (style)^.image_padding.x;
  icon.y := icon.y + (style)^.image_padding.y;
  icon.w := icon.w - (2 * (style)^.image_padding.x);
  icon.h := icon.h - (2 * (style)^.image_padding.y);
  // draw selectable
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_selectable(&out, (state)^, style, (value)^, (@bounds), (@icon), img, NK_SYMBOL_NONE, str, len, align, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit (old_value ≠ (value)^);
end;

method nk_do_selectable_symbol(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; str: ^Byte; len: Int32; align: nk_flags; value: ^Int32; sym: __enum_nk_symbol_type; style: ^__struct_nk_style_selectable; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var old_value: Int32;
  var touch: __struct_nk_rect;
  var icon: __struct_nk_rect;
  assert(state);
  assert(&out);
  assert(str);
  assert(len);
  assert(value);
  assert(style);
  assert(font);
  if (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean(not Boolean(state)) or Boolean(not Boolean(&out)))) or Boolean(not Boolean(str)))) or Boolean(not Boolean(len)))) or Boolean(not Boolean(value)))) or Boolean(not Boolean(style)))) or Boolean(not Boolean(font))) then begin
    exit 0;
  end;
  old_value := (value)^;
  // toggle behavior
  touch.x := (bounds.x - (style)^.touch_padding.x);
  touch.y := (bounds.y - (style)^.touch_padding.y);
  touch.w := (bounds.w + ((style)^.touch_padding.x * 2));
  touch.h := (bounds.h + ((style)^.touch_padding.y * 2));
  if nk_button_behavior(state, touch, &in, NK_BUTTON_DEFAULT) then begin
    (value)^ := not Boolean((value)^);
  end;
  icon.y := (bounds.y + (style)^.padding.y);
  icon.w := (() -> begin
    var _tmp0 := (bounds.h - (2 * (style)^.padding.y));
    icon.h := _tmp0;
    exit _tmp0;
  end)();
  if (align and NK_TEXT_ALIGN_LEFT) then begin
    icon.x := ((bounds.x + bounds.w) - ((2 * (style)^.padding.x) + icon.w));
    icon.x := (if (icon.x < 0) then (0) else (icon.x));
  end
  else begin
    icon.x := (bounds.x + (2 * (style)^.padding.x));
  end;
  icon.x := icon.x + (style)^.image_padding.x;
  icon.y := icon.y + (style)^.image_padding.y;
  icon.w := icon.w - (2 * (style)^.image_padding.x);
  icon.h := icon.h - (2 * (style)^.image_padding.y);
  // draw selectable
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_selectable(&out, (state)^, style, (value)^, (@bounds), (@icon), 0, sym, str, len, align, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit (old_value ≠ (value)^);
end;

method nk_selectable_text(ctx: ^__struct_nk_context; str: ^Byte; len: Int32; align: nk_flags; value: ^Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var state: __enum_nk_widget_layout_states;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert(value);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(value))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  style := (@(ctx)^.style);
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_selectable((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, str, len, align, value, (@(style)^.selectable), &in, (style)^.font);
end;

method nk_selectable_image_text(ctx: ^__struct_nk_context; img: __struct_nk_image; str: ^Byte; len: Int32; align: nk_flags; value: ^Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var state: __enum_nk_widget_layout_states;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert(value);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(value))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  style := (@(ctx)^.style);
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_selectable_image((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, str, len, align, value, (@img), (@(style)^.selectable), &in, (style)^.font);
end;

method nk_selectable_symbol_text(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; str: ^Byte; len: Int32; align: nk_flags; value: ^Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var state: __enum_nk_widget_layout_states;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert(value);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(value))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  style := (@(ctx)^.style);
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_selectable_symbol((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, str, len, align, value, sym, (@(style)^.selectable), &in, (style)^.font);
end;

method nk_selectable_symbol_label(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; title: ^Byte; align: nk_flags; value: ^Int32): Int32; public;
begin
  exit nk_selectable_symbol_text(ctx, sym, title, nk_strlen(title), align, value);
end;

method nk_select_text(ctx: ^__struct_nk_context; str: ^Byte; len: Int32; align: nk_flags; value: Int32): Int32; public;
begin
  nk_selectable_text(ctx, str, len, align, (@value));
  exit value;
end;

method nk_selectable_label(ctx: ^__struct_nk_context; str: ^Byte; align: nk_flags; value: ^Int32): Int32; public;
begin
  exit nk_selectable_text(ctx, str, nk_strlen(str), align, value);
end;

method nk_selectable_image_label(ctx: ^__struct_nk_context; img: __struct_nk_image; str: ^Byte; align: nk_flags; value: ^Int32): Int32; public;
begin
  exit nk_selectable_image_text(ctx, img, str, nk_strlen(str), align, value);
end;

method nk_select_label(ctx: ^__struct_nk_context; str: ^Byte; align: nk_flags; value: Int32): Int32; public;
begin
  nk_selectable_text(ctx, str, nk_strlen(str), align, (@value));
  exit value;
end;

method nk_select_image_label(ctx: ^__struct_nk_context; img: __struct_nk_image; str: ^Byte; align: nk_flags; value: Int32): Int32; public;
begin
  nk_selectable_image_text(ctx, img, str, nk_strlen(str), align, (@value));
  exit value;
end;

method nk_select_image_text(ctx: ^__struct_nk_context; img: __struct_nk_image; str: ^Byte; len: Int32; align: nk_flags; value: Int32): Int32; public;
begin
  nk_selectable_image_text(ctx, img, str, len, align, (@value));
  exit value;
end;

method nk_select_symbol_text(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; title: ^Byte; title_len: Int32; align: nk_flags; value: Int32): Int32; public;
begin
  nk_selectable_symbol_text(ctx, sym, title, title_len, align, (@value));
  exit value;
end;

method nk_select_symbol_label(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; title: ^Byte; align: nk_flags; value: Int32): Int32; public;
begin
  exit nk_select_symbol_text(ctx, sym, title, nk_strlen(title), align, value);
end;

// ===============================================================
//  *
//  *                              SLIDER
//  *
//  * ===============================================================
method nk_slider_behavior(state: ^nk_flags; logical_cursor: ^__struct_nk_rect; visual_cursor: ^__struct_nk_rect; &in: ^__struct_nk_input; bounds: __struct_nk_rect; slider_min: Single; slider_max: Single; slider_value: Single; slider_step: Single; slider_steps: Single): Single; public;
begin
  var left_mouse_down: Int32;
  var left_mouse_click_in_cursor: Int32;
  // check if visual cursor is being dragged
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  left_mouse_down := (Boolean(&in) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down));
  left_mouse_click_in_cursor := (Boolean(&in) and Boolean(nk_input_has_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, (visual_cursor)^, nk_true)));
  if (Boolean(left_mouse_down) and Boolean(left_mouse_click_in_cursor)) then begin
    var ratio: Single := 0;
    var d: Single := ((&in)^.mouse.pos.x - ((visual_cursor)^.x + ((visual_cursor)^.w * 0.5)));
    var pxstep: Single := (bounds.w / slider_steps);
    // only update value if the next slider step is reached
    (state)^ := NK_WIDGET_STATE_ACTIVE;
    if ((if (d < 0) then (-d) else (d)) ≥ pxstep) then begin
      var steps: Single := Single(Int32(((if (d < 0) then (-d) else (d)) / pxstep)));
      slider_value := slider_value + (if (d > 0) then ((slider_step * steps)) else (-(slider_step * steps)));
      slider_value := (if ((if (slider_value < slider_max) then (slider_value) else (slider_max)) < slider_min) then (slider_min) else ((if (slider_value < slider_max) then (slider_value) else (slider_max))));
      ratio := ((slider_value - slider_min) / slider_step);
      (logical_cursor)^.x := (bounds.x + ((logical_cursor)^.w * ratio));
      (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.x := (logical_cursor)^.x;
    end;
  end;
  // slider widget state
  if nk_input_is_mouse_hovering_rect(&in, bounds) then begin
    (state)^ := NK_WIDGET_STATE_HOVERED;
  end;
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(&in, bounds)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(&in, bounds) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
  exit slider_value;
end;

method nk_draw_slider(&out: ^__struct_nk_command_buffer; state: nk_flags; style: ^__struct_nk_style_slider; bounds: ^__struct_nk_rect; visual_cursor: ^__struct_nk_rect; min: Single; value: Single; max: Single); public;
begin
  var fill: __struct_nk_rect;
  var bar: __struct_nk_rect;
  var background: ^__struct_nk_style_item;
  // select correct slider images/colors
  var bar_color: __struct_nk_color;
  var cursor: ^__struct_nk_style_item;
  if (state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.active);
    bar_color := (style)^.bar_active;
    cursor := (@(style)^.cursor_active);
  end
  else begin
    if (state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.hover);
      bar_color := (style)^.bar_hover;
      cursor := (@(style)^.cursor_hover);
    end
    else begin
      background := (@(style)^.normal);
      bar_color := (style)^.bar_normal;
      cursor := (@(style)^.cursor_normal);
    end;
  end;
  // calculate slider background bar
  bar.x := (bounds)^.x;
  bar.y := (((visual_cursor)^.y + ((visual_cursor)^.h / 2)) - ((bounds)^.h / 12));
  bar.w := (bounds)^.w;
  bar.h := ((bounds)^.h / 6);
  // filled background bar style
  fill.w := (((visual_cursor)^.x + ((visual_cursor)^.w / 2.0)) - bar.x);
  fill.x := bar.x;
  fill.y := bar.y;
  fill.h := bar.h;
  // draw background
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image(&out, (bounds)^, (@(background)^.data.image), nk_white);
  end
  else begin
    nk_fill_rect(&out, (bounds)^, (style)^.rounding, (background)^.data.color);
    nk_stroke_rect(&out, (bounds)^, (style)^.rounding, (style)^.border, (style)^.border_color);
  end;
  // draw slider bar
  nk_fill_rect(&out, bar, (style)^.rounding, bar_color);
  nk_fill_rect(&out, fill, (style)^.rounding, (style)^.bar_filled);
  // draw cursor
  if ((cursor)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image(&out, (visual_cursor)^, (@(cursor)^.data.image), nk_white);
  end
  else begin
    nk_fill_circle(&out, (visual_cursor)^, (cursor)^.data.color);
  end;
end;

method nk_do_slider(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; min: Single; val: Single; max: Single; &step: Single; style: ^__struct_nk_style_slider; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Single; public;
begin
  var slider_range: Single;
  var slider_min: Single;
  var slider_max: Single;
  var slider_value: Single;
  var slider_steps: Single;
  var cursor_offset: Single;
  var visual_cursor: __struct_nk_rect;
  var logical_cursor: __struct_nk_rect;
  assert(style);
  assert(&out);
  if (Boolean(not Boolean(&out)) or Boolean(not Boolean(style))) then begin
    exit 0;
  end;
  // remove padding from slider bounds
  bounds.x := (bounds.x + (style)^.padding.x);
  bounds.y := (bounds.y + (style)^.padding.y);
  bounds.h := (if (bounds.h < (2 * (style)^.padding.y)) then ((2 * (style)^.padding.y)) else (bounds.h));
  bounds.w := (if (bounds.w < ((2 * (style)^.padding.x) + (style)^.cursor_size.x)) then (((2 * (style)^.padding.x) + (style)^.cursor_size.x)) else (bounds.w));
  bounds.w := bounds.w - (2 * (style)^.padding.x);
  bounds.h := bounds.h - (2 * (style)^.padding.y);
  // optional buttons
  if (style)^.show_buttons then begin
    var ws: nk_flags;
    var button: __struct_nk_rect;
    button.y := bounds.y;
    button.w := bounds.h;
    button.h := bounds.h;
    // decrement button
    button.x := bounds.x;
    if nk_do_button_symbol((@ws), &out, button, (style)^.dec_symbol, NK_BUTTON_DEFAULT, (@(style)^.dec_button), &in, font) then begin
      val := val - &step;
    end;
    // increment button
    button.x := ((bounds.x + bounds.w) - button.w);
    if nk_do_button_symbol((@ws), &out, button, (style)^.inc_symbol, NK_BUTTON_DEFAULT, (@(style)^.inc_button), &in, font) then begin
      val := val + &step;
    end;
    bounds.x := ((bounds.x + button.w) + (style)^.spacing.x);
    bounds.w := (bounds.w - ((2 * button.w) + (2 * (style)^.spacing.x)));
  end;
  // remove one cursor size to support visual cursor
  bounds.x := bounds.x + ((style)^.cursor_size.x * 0.5);
  bounds.w := bounds.w - (style)^.cursor_size.x;
  // make sure the provided values are correct
  slider_max := (if (min < max) then (max) else (min));
  slider_min := (if (min < max) then (min) else (max));
  slider_value := (if ((if (val < slider_max) then (val) else (slider_max)) < slider_min) then (slider_min) else ((if (val < slider_max) then (val) else (slider_max))));
  slider_range := (slider_max - slider_min);
  slider_steps := (slider_range / &step);
  cursor_offset := ((slider_value - slider_min) / &step);
  // calculate cursor
  //     Basically you have two cursors. One for visual representation and interaction
  //     and one for updating the actual cursor value.
  logical_cursor.h := bounds.h;
  logical_cursor.w := (bounds.w / slider_steps);
  logical_cursor.x := (bounds.x + (logical_cursor.w * cursor_offset));
  logical_cursor.y := bounds.y;
  visual_cursor.h := (style)^.cursor_size.y;
  visual_cursor.w := (style)^.cursor_size.x;
  visual_cursor.y := ((bounds.y + (bounds.h * 0.5)) - (visual_cursor.h * 0.5));
  visual_cursor.x := (logical_cursor.x - (visual_cursor.w * 0.5));
  slider_value := nk_slider_behavior(state, (@logical_cursor), (@visual_cursor), &in, bounds, slider_min, slider_max, slider_value, &step, slider_steps);
  visual_cursor.x := (logical_cursor.x - (visual_cursor.w * 0.5));
  // draw slider
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_slider(&out, (state)^, style, (@bounds), (@visual_cursor), slider_min, slider_value, slider_max);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit slider_value;
end;

method nk_slider_float(ctx: ^__struct_nk_context; min_value: Single; value: ^Single; max_value: Single; value_step: Single): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var ret: Int32 := 0;
  var old_value: Single;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  assert(value);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(value))) then begin
    exit ret;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit ret;
  end;
  &in := (if ((layout)^.flags and NK_WINDOW_ROM) then (0) else ((@(ctx)^.input)));
  old_value := (value)^;
  (value)^ := nk_do_slider((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, min_value, old_value, max_value, value_step, (@(style)^.slider), &in, (style)^.font);
  exit (Boolean((old_value > (value)^)) or Boolean((old_value < (value)^)));
end;

method nk_slide_float(ctx: ^__struct_nk_context; min: Single; val: Single; max: Single; &step: Single): Single; public;
begin
  nk_slider_float(ctx, min, (@val), max, &step);
  exit val;
end;

method nk_slide_int(ctx: ^__struct_nk_context; min: Int32; val: Int32; max: Int32; &step: Int32): Int32; public;
begin
  var value: Single := Single(val);
  nk_slider_float(ctx, Single(min), (@value), Single(max), Single(&step));
  exit Int32(value);
end;

method nk_slider_int(ctx: ^__struct_nk_context; min: Int32; val: ^Int32; max: Int32; &step: Int32): Int32; public;
begin
  var ret: Int32;
  var value: Single := Single((val)^);
  ret := nk_slider_float(ctx, Single(min), (@value), Single(max), Single(&step));
  (val)^ := Int32(value);
  exit ret;
end;

// ===============================================================
//  *
//  *                          PROGRESS
//  *
//  * ===============================================================
method nk_progress_behavior(state: ^nk_flags; &in: ^__struct_nk_input; r: __struct_nk_rect; cursor: __struct_nk_rect; max: nk_size; value: nk_size; modifiable: Int32): nk_size; public;
begin
  var left_mouse_down: Int32 := 0;
  var left_mouse_click_in_cursor: Int32 := 0;
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  if (Boolean(not Boolean(&in)) or Boolean(not Boolean(modifiable))) then begin
    exit value;
  end;
  left_mouse_down := (Boolean(&in) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down));
  left_mouse_click_in_cursor := (Boolean(&in) and Boolean(nk_input_has_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, cursor, nk_true)));
  if nk_input_is_mouse_hovering_rect(&in, r) then begin
    (state)^ := NK_WIDGET_STATE_HOVERED;
  end;
  if (Boolean((Boolean(&in) and Boolean(left_mouse_down))) and Boolean(left_mouse_click_in_cursor)) then begin
    if (Boolean(left_mouse_down) and Boolean(left_mouse_click_in_cursor)) then begin
      var ratio: Single := ((if (0 < Single(((&in)^.mouse.pos.x - cursor.x))) then (Single(((&in)^.mouse.pos.x - cursor.x))) else (0)) / Single(cursor.w));
      value := nk_size((if ((if ((Single(max) * ratio) < Single(max)) then ((Single(max) * ratio)) else (Single(max))) < 0) then (0) else ((if ((Single(max) * ratio) < Single(max)) then ((Single(max) * ratio)) else (Single(max))))));
      (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.x := (cursor.x + (cursor.w / 2.0));
      (state)^ := (state)^ or NK_WIDGET_STATE_ACTIVE;
    end;
  end;
  // set progressbar widget state
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(&in, r)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(&in, r) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
  exit value;
end;

method nk_draw_progress(&out: ^__struct_nk_command_buffer; state: nk_flags; style: ^__struct_nk_style_progress; bounds: ^__struct_nk_rect; scursor: ^__struct_nk_rect; value: nk_size; max: nk_size); public;
begin
  var background: ^__struct_nk_style_item;
  var cursor: ^__struct_nk_style_item;
  // select correct colors/images to draw
  if (state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.active);
    cursor := (@(style)^.cursor_active);
  end
  else begin
    if (state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.hover);
      cursor := (@(style)^.cursor_hover);
    end
    else begin
      background := (@(style)^.normal);
      cursor := (@(style)^.cursor_normal);
    end;
  end;
  // draw background
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    nk_fill_rect(&out, (bounds)^, (style)^.rounding, (background)^.data.color);
    nk_stroke_rect(&out, (bounds)^, (style)^.rounding, (style)^.border, (style)^.border_color);
  end
  else begin
    nk_draw_image(&out, (bounds)^, (@(background)^.data.image), nk_white);
  end;
  // draw cursor
  if ((cursor)^.type = NK_STYLE_ITEM_COLOR) then begin
    nk_fill_rect(&out, (scursor)^, (style)^.rounding, (cursor)^.data.color);
    nk_stroke_rect(&out, (scursor)^, (style)^.rounding, (style)^.border, (style)^.border_color);
  end
  else begin
    nk_draw_image(&out, (scursor)^, (@(cursor)^.data.image), nk_white);
  end;
end;

method nk_do_progress(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; value: nk_size; max: nk_size; modifiable: Int32; style: ^__struct_nk_style_progress; &in: ^__struct_nk_input): nk_size; public;
begin
  var prog_scale: Single;
  var prog_value: nk_size;
  var cursor: __struct_nk_rect;
  assert(style);
  assert(&out);
  if (Boolean(not Boolean(&out)) or Boolean(not Boolean(style))) then begin
    exit 0;
  end;
  // calculate progressbar cursor
  cursor.w := (if (bounds.w < ((2 * (style)^.padding.x) + (2 * (style)^.border))) then (((2 * (style)^.padding.x) + (2 * (style)^.border))) else (bounds.w));
  cursor.h := (if (bounds.h < ((2 * (style)^.padding.y) + (2 * (style)^.border))) then (((2 * (style)^.padding.y) + (2 * (style)^.border))) else (bounds.h));
  cursor := nk_pad_rect(bounds, nk_vec2(((style)^.padding.x + (style)^.border), ((style)^.padding.y + (style)^.border)));
  prog_scale := (Single(value) / Single(max));
  // update progressbar
  prog_value := (if (value < max) then (value) else (max));
  prog_value := nk_progress_behavior(state, &in, bounds, cursor, max, prog_value, modifiable);
  cursor.w := (cursor.w * prog_scale);
  // draw progressbar
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_progress(&out, (state)^, style, (@bounds), (@cursor), value, max);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit prog_value;
end;

method nk_progress(ctx: ^__struct_nk_context; cur: ^nk_size; max: nk_size; is_modifyable: Int32): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var state: __enum_nk_widget_layout_states;
  var old_value: nk_size;
  assert(ctx);
  assert(cur);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(cur))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  old_value := (cur)^;
  (cur)^ := nk_do_progress((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, (cur)^, max, is_modifyable, (@(style)^.progress), &in);
  exit ((cur)^ ≠ old_value);
end;

method nk_prog(ctx: ^__struct_nk_context; cur: nk_size; max: nk_size; modifyable: Int32): nk_size; public;
begin
  nk_progress(ctx, (@cur), max, modifyable);
  exit cur;
end;

// ===============================================================
//  *
//  *                              SCROLLBAR
//  *
//  * ===============================================================
method nk_scrollbar_behavior(state: ^nk_flags; &in: ^__struct_nk_input; has_scrolling: Int32; scroll: ^__struct_nk_rect; cursor: ^__struct_nk_rect; empty0: ^__struct_nk_rect; empty1: ^__struct_nk_rect; scroll_offset: Single; target: Single; scroll_step: Single; o: __enum_nk_orientation): Single; public;
begin
  var ws: nk_flags := 0;
  var left_mouse_down: Int32;
  var left_mouse_clicked: Int32;
  var left_mouse_click_in_cursor: Int32;
  var scroll_delta: Single;
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  if not Boolean(&in) then begin
    exit scroll_offset;
  end;
  left_mouse_down := (&in)^.mouse.buttons[NK_BUTTON_LEFT].down;
  left_mouse_clicked := (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked;
  left_mouse_click_in_cursor := nk_input_has_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, (cursor)^, nk_true);
  if nk_input_is_mouse_hovering_rect(&in, (scroll)^) then begin
    (state)^ := NK_WIDGET_STATE_HOVERED;
  end;
  scroll_delta := (if (o = NK_VERTICAL) then ((&in)^.mouse.scroll_delta.y) else ((&in)^.mouse.scroll_delta.x));
  if (Boolean((Boolean(left_mouse_down) and Boolean(left_mouse_click_in_cursor))) and Boolean(not Boolean(left_mouse_clicked))) then begin
    // update cursor by mouse dragging
    var pixel: Single;
    // update cursor by mouse dragging
    var delta: Single;
    (state)^ := NK_WIDGET_STATE_ACTIVE;
    if (o = NK_VERTICAL) then begin
      var cursor_y: Single;
      pixel := (&in)^.mouse.delta.y;
      delta := ((pixel / (scroll)^.h) * target);
      scroll_offset := (if ((if ((scroll_offset + delta) < (target - (scroll)^.h)) then ((scroll_offset + delta)) else ((target - (scroll)^.h))) < 0) then (0) else ((if ((scroll_offset + delta) < (target - (scroll)^.h)) then ((scroll_offset + delta)) else ((target - (scroll)^.h)))));
      cursor_y := ((scroll)^.y + ((scroll_offset / target) * (scroll)^.h));
      (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.y := (cursor_y + ((cursor)^.h / 2.0));
    end
    else begin
      var cursor_x: Single;
      pixel := (&in)^.mouse.delta.x;
      delta := ((pixel / (scroll)^.w) * target);
      scroll_offset := (if ((if ((scroll_offset + delta) < (target - (scroll)^.w)) then ((scroll_offset + delta)) else ((target - (scroll)^.w))) < 0) then (0) else ((if ((scroll_offset + delta) < (target - (scroll)^.w)) then ((scroll_offset + delta)) else ((target - (scroll)^.w)))));
      cursor_x := ((scroll)^.x + ((scroll_offset / target) * (scroll)^.w));
      (&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked_pos.x := (cursor_x + ((cursor)^.w / 2.0));
    end;
  end
  else begin
    if (Boolean((Boolean((Boolean(nk_input_is_key_pressed(&in, NK_KEY_SCROLL_UP)) and Boolean((o = NK_VERTICAL)))) and Boolean(has_scrolling))) or Boolean(nk_button_behavior((@ws), (empty0)^, &in, NK_BUTTON_DEFAULT))) then begin
      // scroll page up by click on empty space or shortcut
      if (o = NK_VERTICAL) then begin
        scroll_offset := (if (0 < (scroll_offset - (scroll)^.h)) then ((scroll_offset - (scroll)^.h)) else (0));
      end
      else begin
        scroll_offset := (if (0 < (scroll_offset - (scroll)^.w)) then ((scroll_offset - (scroll)^.w)) else (0));
      end;
    end
    else begin
      if (Boolean((Boolean((Boolean(nk_input_is_key_pressed(&in, NK_KEY_SCROLL_DOWN)) and Boolean((o = NK_VERTICAL)))) and Boolean(has_scrolling))) or Boolean(nk_button_behavior((@ws), (empty1)^, &in, NK_BUTTON_DEFAULT))) then begin
        // scroll page down by click on empty space or shortcut
        if (o = NK_VERTICAL) then begin
          scroll_offset := (if ((scroll_offset + (scroll)^.h) < (target - (scroll)^.h)) then ((scroll_offset + (scroll)^.h)) else ((target - (scroll)^.h)));
        end
        else begin
          scroll_offset := (if ((scroll_offset + (scroll)^.w) < (target - (scroll)^.w)) then ((scroll_offset + (scroll)^.w)) else ((target - (scroll)^.w)));
        end;
      end
      else begin
        if has_scrolling then begin
          if (Boolean((scroll_delta < 0)) or Boolean((scroll_delta > 0))) then begin
            // update cursor by mouse scrolling
            scroll_offset := (scroll_offset + (scroll_step * -scroll_delta));
            if (o = NK_VERTICAL) then begin
              scroll_offset := (if ((if (scroll_offset < (target - (scroll)^.h)) then (scroll_offset) else ((target - (scroll)^.h))) < 0) then (0) else ((if (scroll_offset < (target - (scroll)^.h)) then (scroll_offset) else ((target - (scroll)^.h)))));
            end
            else begin
              scroll_offset := (if ((if (scroll_offset < (target - (scroll)^.w)) then (scroll_offset) else ((target - (scroll)^.w))) < 0) then (0) else ((if (scroll_offset < (target - (scroll)^.w)) then (scroll_offset) else ((target - (scroll)^.w)))));
            end;
          end
          else begin
            if nk_input_is_key_pressed(&in, NK_KEY_SCROLL_START) then begin
              // update cursor to the beginning
              if (o = NK_VERTICAL) then begin
                scroll_offset := 0;
              end;
            end
            else begin
              if nk_input_is_key_pressed(&in, NK_KEY_SCROLL_END) then begin
                // update cursor to the end
                if (o = NK_VERTICAL) then begin
                  scroll_offset := (target - (scroll)^.h);
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(&in, (scroll)^)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(&in, (scroll)^) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
  exit scroll_offset;
end;

method nk_draw_scrollbar(&out: ^__struct_nk_command_buffer; state: nk_flags; style: ^__struct_nk_style_scrollbar; bounds: ^__struct_nk_rect; scroll: ^__struct_nk_rect); public;
begin
  var background: ^__struct_nk_style_item;
  var cursor: ^__struct_nk_style_item;
  // select correct colors/images to draw
  if (state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.active);
    cursor := (@(style)^.cursor_active);
  end
  else begin
    if (state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.hover);
      cursor := (@(style)^.cursor_hover);
    end
    else begin
      background := (@(style)^.normal);
      cursor := (@(style)^.cursor_normal);
    end;
  end;
  // draw background
  if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
    nk_fill_rect(&out, (bounds)^, (style)^.rounding, (background)^.data.color);
    nk_stroke_rect(&out, (bounds)^, (style)^.rounding, (style)^.border, (style)^.border_color);
  end
  else begin
    nk_draw_image(&out, (bounds)^, (@(background)^.data.image), nk_white);
  end;
  // draw cursor
  if ((cursor)^.type = NK_STYLE_ITEM_COLOR) then begin
    nk_fill_rect(&out, (scroll)^, (style)^.rounding_cursor, (cursor)^.data.color);
    nk_stroke_rect(&out, (scroll)^, (style)^.rounding_cursor, (style)^.border_cursor, (style)^.cursor_border_color);
  end
  else begin
    nk_draw_image(&out, (scroll)^, (@(cursor)^.data.image), nk_white);
  end;
end;

method nk_do_scrollbarv(state: ^nk_flags; &out: ^__struct_nk_command_buffer; scroll: __struct_nk_rect; has_scrolling: Int32; offset: Single; target: Single; &step: Single; button_pixel_inc: Single; style: ^__struct_nk_style_scrollbar; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Single; public;
begin
  var empty_north: __struct_nk_rect;
  var empty_south: __struct_nk_rect;
  var cursor: __struct_nk_rect;
  var scroll_step: Single;
  var scroll_offset: Single;
  var scroll_off: Single;
  var scroll_ratio: Single;
  assert(&out);
  assert(style);
  assert(state);
  if (Boolean(not Boolean(&out)) or Boolean(not Boolean(style))) then begin
    exit 0;
  end;
  scroll.w := (if (scroll.w < 1) then (1) else (scroll.w));
  scroll.h := (if (scroll.h < 0) then (0) else (scroll.h));
  if (target ≤ scroll.h) then begin
    exit 0;
  end;
  // optional scrollbar buttons
  if (style)^.show_buttons then begin
    var ws: nk_flags;
    var scroll_h: Single;
    var button: __struct_nk_rect;
    button.x := scroll.x;
    button.w := scroll.w;
    button.h := scroll.w;
    scroll_h := (if ((scroll.h - (2 * button.h)) < 0) then (0) else ((scroll.h - (2 * button.h))));
    scroll_step := (if (&step < button_pixel_inc) then (&step) else (button_pixel_inc));
    // decrement button
    button.y := scroll.y;
    if nk_do_button_symbol((@ws), &out, button, (style)^.dec_symbol, NK_BUTTON_REPEATER, (@(style)^.dec_button), &in, font) then begin
      offset := (offset - scroll_step);
    end;
    // increment button
    button.y := ((scroll.y + scroll.h) - button.h);
    if nk_do_button_symbol((@ws), &out, button, (style)^.inc_symbol, NK_BUTTON_REPEATER, (@(style)^.inc_button), &in, font) then begin
      offset := (offset + scroll_step);
    end;
    scroll.y := (scroll.y + button.h);
    scroll.h := scroll_h;
  end;
  // calculate scrollbar constants
  scroll_step := (if (&step < scroll.h) then (&step) else (scroll.h));
  scroll_offset := (if ((if (offset < (target - scroll.h)) then (offset) else ((target - scroll.h))) < 0) then (0) else ((if (offset < (target - scroll.h)) then (offset) else ((target - scroll.h)))));
  scroll_ratio := (scroll.h / target);
  scroll_off := (scroll_offset / target);
  // calculate scrollbar cursor bounds
  cursor.h := (if (((scroll_ratio * scroll.h) - ((2 * (style)^.border) + (2 * (style)^.padding.y))) < 0) then (0) else (((scroll_ratio * scroll.h) - ((2 * (style)^.border) + (2 * (style)^.padding.y)))));
  cursor.y := (((scroll.y + (scroll_off * scroll.h)) + (style)^.border) + (style)^.padding.y);
  cursor.w := (scroll.w - ((2 * (style)^.border) + (2 * (style)^.padding.x)));
  cursor.x := ((scroll.x + (style)^.border) + (style)^.padding.x);
  // calculate empty space around cursor
  empty_north.x := scroll.x;
  empty_north.y := scroll.y;
  empty_north.w := scroll.w;
  empty_north.h := (if ((cursor.y - scroll.y) < 0) then (0) else ((cursor.y - scroll.y)));
  empty_south.x := scroll.x;
  empty_south.y := (cursor.y + cursor.h);
  empty_south.w := scroll.w;
  empty_south.h := (if (((scroll.y + scroll.h) - (cursor.y + cursor.h)) < 0) then (0) else (((scroll.y + scroll.h) - (cursor.y + cursor.h))));
  // update scrollbar
  scroll_offset := nk_scrollbar_behavior(state, &in, has_scrolling, (@scroll), (@cursor), (@empty_north), (@empty_south), scroll_offset, target, scroll_step, NK_VERTICAL);
  scroll_off := (scroll_offset / target);
  cursor.y := (((scroll.y + (scroll_off * scroll.h)) + (style)^.border_cursor) + (style)^.padding.y);
  // draw scrollbar
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_scrollbar(&out, (state)^, style, (@scroll), (@cursor));
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit scroll_offset;
end;

method nk_do_scrollbarh(state: ^nk_flags; &out: ^__struct_nk_command_buffer; scroll: __struct_nk_rect; has_scrolling: Int32; offset: Single; target: Single; &step: Single; button_pixel_inc: Single; style: ^__struct_nk_style_scrollbar; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Single; public;
begin
  var cursor: __struct_nk_rect;
  var empty_west: __struct_nk_rect;
  var empty_east: __struct_nk_rect;
  var scroll_step: Single;
  var scroll_offset: Single;
  var scroll_off: Single;
  var scroll_ratio: Single;
  assert(&out);
  assert(style);
  if (Boolean(not Boolean(&out)) or Boolean(not Boolean(style))) then begin
    exit 0;
  end;
  // scrollbar background
  scroll.h := (if (scroll.h < 1) then (1) else (scroll.h));
  scroll.w := (if (scroll.w < (2 * scroll.h)) then ((2 * scroll.h)) else (scroll.w));
  if (target ≤ scroll.w) then begin
    exit 0;
  end;
  // optional scrollbar buttons
  if (style)^.show_buttons then begin
    var ws: nk_flags;
    var scroll_w: Single;
    var button: __struct_nk_rect;
    button.y := scroll.y;
    button.w := scroll.h;
    button.h := scroll.h;
    scroll_w := (scroll.w - (2 * button.w));
    scroll_step := (if (&step < button_pixel_inc) then (&step) else (button_pixel_inc));
    // decrement button
    button.x := scroll.x;
    if nk_do_button_symbol((@ws), &out, button, (style)^.dec_symbol, NK_BUTTON_REPEATER, (@(style)^.dec_button), &in, font) then begin
      offset := (offset - scroll_step);
    end;
    // increment button
    button.x := ((scroll.x + scroll.w) - button.w);
    if nk_do_button_symbol((@ws), &out, button, (style)^.inc_symbol, NK_BUTTON_REPEATER, (@(style)^.inc_button), &in, font) then begin
      offset := (offset + scroll_step);
    end;
    scroll.x := (scroll.x + button.w);
    scroll.w := scroll_w;
  end;
  // calculate scrollbar constants
  scroll_step := (if (&step < scroll.w) then (&step) else (scroll.w));
  scroll_offset := (if ((if (offset < (target - scroll.w)) then (offset) else ((target - scroll.w))) < 0) then (0) else ((if (offset < (target - scroll.w)) then (offset) else ((target - scroll.w)))));
  scroll_ratio := (scroll.w / target);
  scroll_off := (scroll_offset / target);
  // calculate cursor bounds
  cursor.w := ((scroll_ratio * scroll.w) - ((2 * (style)^.border) + (2 * (style)^.padding.x)));
  cursor.x := (((scroll.x + (scroll_off * scroll.w)) + (style)^.border) + (style)^.padding.x);
  cursor.h := (scroll.h - ((2 * (style)^.border) + (2 * (style)^.padding.y)));
  cursor.y := ((scroll.y + (style)^.border) + (style)^.padding.y);
  // calculate empty space around cursor
  empty_west.x := scroll.x;
  empty_west.y := scroll.y;
  empty_west.w := (cursor.x - scroll.x);
  empty_west.h := scroll.h;
  empty_east.x := (cursor.x + cursor.w);
  empty_east.y := scroll.y;
  empty_east.w := ((scroll.x + scroll.w) - (cursor.x + cursor.w));
  empty_east.h := scroll.h;
  // update scrollbar
  scroll_offset := nk_scrollbar_behavior(state, &in, has_scrolling, (@scroll), (@cursor), (@empty_west), (@empty_east), scroll_offset, target, scroll_step, NK_HORIZONTAL);
  scroll_off := (scroll_offset / target);
  cursor.x := (scroll.x + (scroll_off * scroll.w));
  // draw scrollbar
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_scrollbar(&out, (state)^, style, (@scroll), (@cursor));
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  exit scroll_offset;
end;

// defined: NK_TEXT_HAS_SELECTION (s) ((s)->select_start != (s)->select_end)
method nk_textedit_get_width(edit: ^__struct_nk_text_edit; line_start: Int32; char_id: Int32; font: ^__struct_nk_user_font): Single; public;
begin
  var len: Int32 := 0;
  var unicode: nk_rune := 0;
  var str: ^Byte := nk_str_at_const((@(edit)^.string), (line_start + char_id), (@unicode), (@len));
  exit (font)^.width((font)^.userdata, (font)^.height, str, len);
end;

method nk_textedit_layout_row(r: ^__struct_nk_text_edit_row; edit: ^__struct_nk_text_edit; line_start_id: Int32; row_height: Single; font: ^__struct_nk_user_font); public;
begin
  var l: Int32;
  var glyphs: Int32 := 0;
  var unicode: nk_rune;
  var remaining: ^Byte;
  var len: Int32 := nk_str_len_char((@(edit)^.string));
  var &end: ^Byte := (nk_str_get_const((@(edit)^.string)) + len);
  var text: ^Byte := nk_str_at_const((@(edit)^.string), line_start_id, (@unicode), (@l));
  var size: __struct_nk_vec2 := nk_text_calculate_text_bounds(font, text, Int32((&end - text)), row_height, (@remaining), 0, (@glyphs), NK_STOP_ON_NEW_LINE);
  (r)^.x0 := 0.0;
  (r)^.x1 := size.x;
  (r)^.baseline_y_delta := size.y;
  (r)^.ymin := 0.0;
  (r)^.ymax := size.y;
  (r)^.num_chars := glyphs;
end;

method nk_textedit_locate_coord(edit: ^__struct_nk_text_edit; x: Single; y: Single; font: ^__struct_nk_user_font; row_height: Single): Int32; public;
begin
  var r: __struct_nk_text_edit_row;
  var n: Int32 := (edit)^.string.len;
  var base_y: Single := 0;
  var prev_x: Single;
  var i: Int32 := 0;
  var k: Int32;
  r.x0 := (() -> begin
    var _tmp0 := 0;
    r.x1 := _tmp0;
    exit _tmp0;
  end)();
  r.ymin := (() -> begin
    var _tmp1 := 0;
    r.ymax := _tmp1;
    exit _tmp1;
  end)();
  r.num_chars := 0;
  // search rows to find one that straddles 'y'
  while (i < n) do begin
    nk_textedit_layout_row((@r), edit, i, row_height, font);
    if (r.num_chars ≤ 0) then begin
      exit n;
    end;
    if (Boolean((i = 0)) and Boolean((y < (base_y + r.ymin)))) then begin
      exit 0;
    end;
    if (y < (base_y + r.ymax)) then begin
      break;
    end;
    i := i + r.num_chars;
    base_y := base_y + r.baseline_y_delta;
  end;
  // below all text, return 'after' last character
  if (i ≥ n) then begin
    exit n;
  end;
  // check if it's before the beginning of the line
  if (x < r.x0) then begin
    exit i;
  end;
  // check if it's before the end of the line
  if (x < r.x1) then begin
    // search characters in row for one that straddles 'x'
    k := i;
    prev_x := r.x0;
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel4:;
      if (i < r.num_chars) then begin
      end
      else begin
        goto _breaklabel4;
      end;
      // for loop: body
      begin
        var w: Single := nk_textedit_get_width(edit, k, i, font);
        if (x < (prev_x + w)) then begin
          if (x < (prev_x + (w / 2))) then begin
            exit (k + i);
          end
          else begin
            exit ((k + i) + 1);
          end;
        end;
        prev_x := prev_x + w;
      end;
      _continuelabel4:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel4;
      // for loop: break
      _breaklabel4:;
    end;
  end;
  // if the last character is a newline, return that.
  //      * otherwise return 'after' the last character
  if (nk_str_rune_at((@(edit)^.string), ((i + r.num_chars) - 1)) = 10) then begin
    exit ((i + r.num_chars) - 1);
  end
  else begin
    exit (i + r.num_chars);
  end;
end;

method nk_textedit_click(state: ^__struct_nk_text_edit; x: Single; y: Single; font: ^__struct_nk_user_font; row_height: Single); public;
begin
  // API click: on mouse down, move the cursor to the clicked location,
  //      * and reset the selection
  (state)^.cursor := nk_textedit_locate_coord(state, x, y, font, row_height);
  (state)^.select_start := (state)^.cursor;
  (state)^.select_end := (state)^.cursor;
  (state)^.has_preferred_x := 0;
end;

method nk_textedit_drag(state: ^__struct_nk_text_edit; x: Single; y: Single; font: ^__struct_nk_user_font; row_height: Single); public;
begin
  // API drag: on mouse drag, move the cursor and selection endpoint
  //      * to the clicked location
  var p: Int32 := nk_textedit_locate_coord(state, x, y, font, row_height);
  if ((state)^.select_start = (state)^.select_end) then begin
    (state)^.select_start := (state)^.cursor;
  end;
  (state)^.cursor := (() -> begin
    var _tmp0 := p;
    (state)^.select_end := _tmp0;
    exit _tmp0;
  end)();
end;

method nk_textedit_find_charpos(find: ^__struct_nk_text_find; state: ^__struct_nk_text_edit; n: Int32; single_line: Int32; font: ^__struct_nk_user_font; row_height: Single); public;
begin
  // find the x/y location of a character, and remember info about the previous
  //      * row in case we get a move-up event (for page up, we'll have to rescan)
  var r: __struct_nk_text_edit_row;
  var prev_start: Int32 := 0;
  var z: Int32 := (state)^.string.len;
  var i: Int32 := 0;
  var first: Int32;
  nk_zero((@r), sizeOf(r));
  if (n = z) then begin
    // if it's at the end, then find the last line -- simpler than trying to
    //         explicitly handle this case in the regular code
    nk_textedit_layout_row((@r), state, 0, row_height, font);
    if single_line then begin
      (find)^.first_char := 0;
      (find)^.length := z;
    end
    else begin
      while (i < z) do begin
        prev_start := i;
        i := i + r.num_chars;
        nk_textedit_layout_row((@r), state, i, row_height, font);
      end;
      (find)^.first_char := i;
      (find)^.length := r.num_chars;
    end;
    (find)^.x := r.x1;
    (find)^.y := r.ymin;
    (find)^.height := (r.ymax - r.ymin);
    (find)^.prev_first := prev_start;
    exit;
  end;
  // search rows to find the one that straddles character n
  (find)^.y := 0;
  begin
    // for loop: initializer
    // for loop: compare
    _looplabel1:;
    // for loop: body
    begin
      nk_textedit_layout_row((@r), state, i, row_height, font);
      if (n < (i + r.num_chars)) then begin
        goto _breaklabel1;
      end;
      prev_start := i;
      i := i + r.num_chars;
      (find)^.y := (find)^.y + r.baseline_y_delta;
    end;
    _continuelabel1:;
    // for loop: increment/continue
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  (find)^.first_char := (() -> begin
    var _tmp4 := i;
    first := _tmp4;
    exit _tmp4;
  end)();
  (find)^.length := r.num_chars;
  (find)^.height := (r.ymax - r.ymin);
  (find)^.prev_first := prev_start;
  // now scan to find xpos
  (find)^.x := r.x0;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel5:;
    if ((first + i) < n) then begin
    end
    else begin
      goto _breaklabel5;
    end;
    // for loop: body
    (find)^.x := (find)^.x + nk_textedit_get_width(state, first, i, font);
    _continuelabel5:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel5;
    // for loop: break
    _breaklabel5:;
  end;
end;

method nk_textedit_clamp(state: ^__struct_nk_text_edit); public;
begin
  // make the selection/cursor state valid if client altered the string
  var n: Int32 := (state)^.string.len;
  if ((state)^.select_start ≠ (state)^.select_end) then begin
    if ((state)^.select_start > n) then begin
      (state)^.select_start := n;
    end;
    if ((state)^.select_end > n) then begin
      (state)^.select_end := n;
    end;
    // if clamping forced them to be equal, move the cursor to match
    if ((state)^.select_start = (state)^.select_end) then begin
      (state)^.cursor := (state)^.select_start;
    end;
  end;
  if ((state)^.cursor > n) then begin
    (state)^.cursor := n;
  end;
end;

method nk_textedit_delete(state: ^__struct_nk_text_edit; &where: Int32; len: Int32); public;
begin
  // delete characters while updating undo
  nk_textedit_makeundo_delete(state, &where, len);
  nk_str_delete_runes((@(state)^.string), &where, len);
  (state)^.has_preferred_x := 0;
end;

method nk_textedit_delete_selection(state: ^__struct_nk_text_edit); public;
begin
  // delete the section
  nk_textedit_clamp(state);
  if ((state)^.select_start ≠ (state)^.select_end) then begin
    if ((state)^.select_start < (state)^.select_end) then begin
      nk_textedit_delete(state, (state)^.select_start, ((state)^.select_end - (state)^.select_start));
      (state)^.select_end := (() -> begin
        var _tmp0 := (state)^.select_start;
        (state)^.cursor := _tmp0;
        exit _tmp0;
      end)();
    end
    else begin
      nk_textedit_delete(state, (state)^.select_end, ((state)^.select_start - (state)^.select_end));
      (state)^.select_start := (() -> begin
        var _tmp1 := (state)^.select_end;
        (state)^.cursor := _tmp1;
        exit _tmp1;
      end)();
    end;
    (state)^.has_preferred_x := 0;
  end;
end;

method nk_textedit_sortselection(state: ^__struct_nk_text_edit); public;
begin
  // canonicalize the selection so start <= end
  if ((state)^.select_end < (state)^.select_start) then begin
    var temp: Int32 := (state)^.select_end;
    (state)^.select_end := (state)^.select_start;
    (state)^.select_start := temp;
  end;
end;

method nk_textedit_move_to_first(state: ^__struct_nk_text_edit); public;
begin
  // move cursor to first character of selection
  if ((state)^.select_start ≠ (state)^.select_end) then begin
    nk_textedit_sortselection(state);
    (state)^.cursor := (state)^.select_start;
    (state)^.select_end := (state)^.select_start;
    (state)^.has_preferred_x := 0;
  end;
end;

method nk_textedit_move_to_last(state: ^__struct_nk_text_edit); public;
begin
  // move cursor to last character of selection
  if ((state)^.select_start ≠ (state)^.select_end) then begin
    nk_textedit_sortselection(state);
    nk_textedit_clamp(state);
    (state)^.cursor := (state)^.select_end;
    (state)^.select_start := (state)^.select_end;
    (state)^.has_preferred_x := 0;
  end;
end;

method nk_is_word_boundary(state: ^__struct_nk_text_edit; idx: Int32): Int32; public;
begin
  var len: Int32;
  var c: nk_rune;
  if (idx ≤ 0) then begin
    exit 1;
  end;
  if not Boolean(nk_str_at_rune((@(state)^.string), idx, (@c), (@len))) then begin
    exit 1;
  end;
  exit (Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((Boolean((c = 32)) or Boolean((c = 9)))) or Boolean((c = 12288)))) or Boolean((c = 44)))) or Boolean((c = 59)))) or Boolean((c = 40)))) or Boolean((c = 41)))) or Boolean((c = 123)))) or Boolean((c = 125)))) or Boolean((c = 91)))) or Boolean((c = 93)))) or Boolean((c = 124)));
end;

method nk_textedit_move_to_word_previous(state: ^__struct_nk_text_edit): Int32; public;
begin
  var c: Int32 := ((state)^.cursor - 1);
  while (Boolean((c ≥ 0)) and Boolean(not Boolean(nk_is_word_boundary(state, c)))) do
    c := c - 1;
  if (c < 0) then begin
    c := 0;
  end;
  exit c;
end;

method nk_textedit_move_to_word_next(state: ^__struct_nk_text_edit): Int32; public;
begin
  var len: Int32 := (state)^.string.len;
  var c: Int32 := ((state)^.cursor + 1);
  while (Boolean((c < len)) and Boolean(not Boolean(nk_is_word_boundary(state, c)))) do
    c := c + 1;
  if (c > len) then begin
    c := len;
  end;
  exit c;
end;

method nk_textedit_prep_selection_at_cursor(state: ^__struct_nk_text_edit); public;
begin
  // update selection and cursor to match each other
  if not Boolean(((state)^.select_start ≠ (state)^.select_end)) then begin
    (state)^.select_start := (() -> begin
      var _tmp0 := (state)^.cursor;
      (state)^.select_end := _tmp0;
      exit _tmp0;
    end)();
  end
  else begin
    (state)^.cursor := (state)^.select_end;
  end;
end;

method nk_textedit_cut(state: ^__struct_nk_text_edit): Int32; public;
begin
  // API cut: delete selection
  if ((state)^.mode = NK_TEXT_EDIT_MODE_VIEW) then begin
    exit 0;
  end;
  if ((state)^.select_start ≠ (state)^.select_end) then begin
    nk_textedit_delete_selection(state);
    // implicitly clamps
    (state)^.has_preferred_x := 0;
    exit 1;
  end;
  exit 0;
end;

method nk_textedit_paste(state: ^__struct_nk_text_edit; ctext: ^Byte; len: Int32): Int32; public;
begin
  // API paste: replace existing selection with passed-in text
  var glyphs: Int32;
  var text: ^Byte := ^Byte(ctext);
  if ((state)^.mode = NK_TEXT_EDIT_MODE_VIEW) then begin
    exit 0;
  end;
  // if there's a selection, the paste should delete it
  nk_textedit_clamp(state);
  nk_textedit_delete_selection(state);
  // try to insert the characters
  glyphs := nk_utf_len(ctext, len);
  if nk_str_insert_text_char((@(state)^.string), (state)^.cursor, text, len) then begin
    nk_textedit_makeundo_insert(state, (state)^.cursor, glyphs);
    (state)^.cursor := (state)^.cursor + len;
    (state)^.has_preferred_x := 0;
    exit 1;
  end;
  // remove the undo since we didn't actually insert the characters
  if (state)^.undo.undo_point then begin
    (state)^.undo.undo_point := (state)^.undo.undo_point - 1;
  end;
  exit 0;
end;

method nk_textedit_text(state: ^__struct_nk_text_edit; text: ^Byte; total_len: Int32); public;
begin
  var unicode: nk_rune;
  var glyph_len: Int32;
  var text_len: Int32 := 0;
  assert(state);
  assert(text);
  if (Boolean((Boolean(not Boolean(text)) or Boolean(not Boolean(total_len)))) or Boolean(((state)^.mode = NK_TEXT_EDIT_MODE_VIEW))) then begin
    exit;
  end;
  glyph_len := nk_utf_decode(text, (@unicode), total_len);
  while (Boolean((text_len < total_len)) and Boolean(glyph_len)) do begin
    // don't insert a backward delete, just process the event
    if (unicode = 127) then begin
      goto next;
    end;
    begin
    end;
    // can't add newline in single-line mode
    if (Boolean((unicode = 10)) and Boolean((state)^.single_line)) then begin
      goto next;
    end;
    begin
    end;
    // filter incoming text
    if (Boolean((state)^.filter) and Boolean(not Boolean((state)^.filter(state, unicode)))) then begin
      goto next;
    end;
    begin
    end;
    if (Boolean(not Boolean(((state)^.select_start ≠ (state)^.select_end))) and Boolean(((state)^.cursor < (state)^.string.len))) then begin
      if ((state)^.mode = NK_TEXT_EDIT_MODE_REPLACE) then begin
        nk_textedit_makeundo_replace(state, (state)^.cursor, 1, 1);
        nk_str_delete_runes((@(state)^.string), (state)^.cursor, 1);
      end;
      if nk_str_insert_text_utf8((@(state)^.string), (state)^.cursor, (text + text_len), 1) then begin
        (state)^.cursor := (state)^.cursor + 1;
        (state)^.has_preferred_x := 0;
      end;
    end
    else begin
      nk_textedit_delete_selection(state);
      // implicitly clamps
      if nk_str_insert_text_utf8((@(state)^.string), (state)^.cursor, (text + text_len), 1) then begin
        nk_textedit_makeundo_insert(state, (state)^.cursor, 1);
        (state)^.cursor := (state)^.cursor + 1;
        (state)^.has_preferred_x := 0;
      end;
    end;
    next:;
    text_len := text_len + glyph_len;
    glyph_len := nk_utf_decode((text + text_len), (@unicode), (total_len - text_len));
  end;
end;

method nk_textedit_key(state: ^__struct_nk_text_edit; key: __enum_nk_keys; shift_mod: Int32; font: ^__struct_nk_user_font; row_height: Single); public;
begin
  retry:;
  begin
    case key of
      NK_KEY_NONE: begin
          goto switch0_0;
        end;
      NK_KEY_CTRL: begin
          goto switch0_1;
        end;
      NK_KEY_ENTER: begin
          goto switch0_2;
        end;
      NK_KEY_SHIFT: begin
          goto switch0_3;
        end;
      NK_KEY_TAB: begin
          goto switch0_4;
        end;
      NK_KEY_COPY: begin
          goto switch0_5;
        end;
      NK_KEY_CUT: begin
          goto switch0_6;
        end;
      NK_KEY_PASTE: begin
          goto switch0_7;
        end;
      NK_KEY_MAX: begin
          goto switch0_8;
        end;
      NK_KEY_TEXT_UNDO: begin
          goto switch0_9;
        end;
      NK_KEY_TEXT_REDO: begin
          goto switch0_10;
        end;
      NK_KEY_TEXT_SELECT_ALL: begin
          goto switch0_11;
        end;
      NK_KEY_TEXT_INSERT_MODE: begin
          goto switch0_12;
        end;
      NK_KEY_TEXT_REPLACE_MODE: begin
          goto switch0_13;
        end;
      NK_KEY_TEXT_RESET_MODE: begin
          goto switch0_14;
        end;
      NK_KEY_LEFT: begin
          goto switch0_15;
        end;
      NK_KEY_RIGHT: begin
          goto switch0_16;
        end;
      NK_KEY_TEXT_WORD_LEFT: begin
          goto switch0_17;
        end;
      NK_KEY_TEXT_WORD_RIGHT: begin
          goto switch0_18;
        end;
      NK_KEY_DOWN: begin
          goto switch0_19;
        end;
      NK_KEY_UP: begin
          goto switch0_20;
        end;
      NK_KEY_DEL: begin
          goto switch0_21;
        end;
      NK_KEY_BACKSPACE: begin
          goto switch0_22;
        end;
      NK_KEY_TEXT_START: begin
          goto switch0_23;
        end;
      NK_KEY_TEXT_END: begin
          goto switch0_24;
        end;
      NK_KEY_TEXT_LINE_START: begin
          goto switch0_25;
        end;
      NK_KEY_TEXT_LINE_END: begin
          goto switch0_26;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    switch0_1:;
    switch0_2:;
    switch0_3:;
    switch0_4:;
    switch0_5:;
    switch0_6:;
    switch0_7:;
    switch0_8:;
    switch0_default:;
    goto _breaklabelswitch0;
    switch0_9:;
    nk_textedit_undo(state);
    (state)^.has_preferred_x := 0;
    goto _breaklabelswitch0;
    switch0_10:;
    nk_textedit_redo(state);
    (state)^.has_preferred_x := 0;
    goto _breaklabelswitch0;
    switch0_11:;
    nk_textedit_select_all(state);
    (state)^.has_preferred_x := 0;
    goto _breaklabelswitch0;
    switch0_12:;
    if ((state)^.mode = NK_TEXT_EDIT_MODE_VIEW) then begin
      (state)^.mode := NK_TEXT_EDIT_MODE_INSERT;
    end;
    goto _breaklabelswitch0;
    switch0_13:;
    if ((state)^.mode = NK_TEXT_EDIT_MODE_VIEW) then begin
      (state)^.mode := NK_TEXT_EDIT_MODE_REPLACE;
    end;
    goto _breaklabelswitch0;
    switch0_14:;
    if (Boolean(((state)^.mode = NK_TEXT_EDIT_MODE_INSERT)) or Boolean(((state)^.mode = NK_TEXT_EDIT_MODE_REPLACE))) then begin
      (state)^.mode := NK_TEXT_EDIT_MODE_VIEW;
    end;
    goto _breaklabelswitch0;
    switch0_15:;
    if shift_mod then begin
      nk_textedit_clamp(state);
      nk_textedit_prep_selection_at_cursor(state);
      // move selection left
      if ((state)^.select_end > 0) then begin
        (state)^.select_end := (state)^.select_end - 1;
      end;
      (state)^.cursor := (state)^.select_end;
      (state)^.has_preferred_x := 0;
    end
    else begin
      // if currently there's a selection,
      //              * move cursor to start of selection
      if ((state)^.select_start ≠ (state)^.select_end) then begin
        nk_textedit_move_to_first(state);
      end
      else begin
        if ((state)^.cursor > 0) then begin
          (state)^.cursor := (state)^.cursor - 1;
        end;
      end;
      (state)^.has_preferred_x := 0;
    end;
    goto _breaklabelswitch0;
    switch0_16:;
    if shift_mod then begin
      nk_textedit_prep_selection_at_cursor(state);
      // move selection right
      (state)^.select_end := (state)^.select_end + 1;
      nk_textedit_clamp(state);
      (state)^.cursor := (state)^.select_end;
      (state)^.has_preferred_x := 0;
    end
    else begin
      // if currently there's a selection,
      //              * move cursor to end of selection
      if ((state)^.select_start ≠ (state)^.select_end) then begin
        nk_textedit_move_to_last(state);
      end
      else begin
        (state)^.cursor := (state)^.cursor + 1;
      end;
      nk_textedit_clamp(state);
      (state)^.has_preferred_x := 0;
    end;
    goto _breaklabelswitch0;
    switch0_17:;
    if shift_mod then begin
      if not Boolean(((state)^.select_start ≠ (state)^.select_end)) then begin
        nk_textedit_prep_selection_at_cursor(state);
      end;
      (state)^.cursor := nk_textedit_move_to_word_previous(state);
      (state)^.select_end := (state)^.cursor;
      nk_textedit_clamp(state);
    end
    else begin
      if ((state)^.select_start ≠ (state)^.select_end) then begin
        nk_textedit_move_to_first(state);
      end
      else begin
        (state)^.cursor := nk_textedit_move_to_word_previous(state);
        nk_textedit_clamp(state);
      end;
    end;
    goto _breaklabelswitch0;
    switch0_18:;
    if shift_mod then begin
      if not Boolean(((state)^.select_start ≠ (state)^.select_end)) then begin
        nk_textedit_prep_selection_at_cursor(state);
      end;
      (state)^.cursor := nk_textedit_move_to_word_next(state);
      (state)^.select_end := (state)^.cursor;
      nk_textedit_clamp(state);
    end
    else begin
      if ((state)^.select_start ≠ (state)^.select_end) then begin
        nk_textedit_move_to_last(state);
      end
      else begin
        (state)^.cursor := nk_textedit_move_to_word_next(state);
        nk_textedit_clamp(state);
      end;
    end;
    goto _breaklabelswitch0;
    switch0_19:;
    begin
      var find: __struct_nk_text_find;
      var row: __struct_nk_text_edit_row;
      var i: Int32;
      var sel: Int32 := shift_mod;
      if (state)^.single_line then begin
        // on windows, up&down in single-line behave like left&right
        key := NK_KEY_RIGHT;
        goto retry;
        begin
        end;
      end;
      if sel then begin
        nk_textedit_prep_selection_at_cursor(state);
      end
      else begin
        if ((state)^.select_start ≠ (state)^.select_end) then begin
          nk_textedit_move_to_last(state);
        end;
      end;
      // compute current position of cursor point
      nk_textedit_clamp(state);
      nk_textedit_find_charpos((@find), state, (state)^.cursor, (state)^.single_line, font, row_height);
      // now find character position down a row
      if find.length then begin
        var x: Single;
        var goal_x: Single := (if (state)^.has_preferred_x then ((state)^.preferred_x) else (find.x));
        var start: Int32 := (find.first_char + find.length);
        (state)^.cursor := start;
        nk_textedit_layout_row((@row), state, (state)^.cursor, row_height, font);
        x := row.x0;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel1:;
          if (Boolean((i < row.num_chars)) and Boolean((x < row.x1))) then begin
          end
          else begin
            goto _breaklabel1;
          end;
          // for loop: body
          begin
            var dx: Single := nk_textedit_get_width(state, start, i, font);
            x := x + dx;
            if (x > goal_x) then begin
              goto _breaklabel1;
            end;
            (state)^.cursor := (state)^.cursor + 1;
          end;
          _continuelabel1:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel1;
          // for loop: break
          _breaklabel1:;
        end;
        nk_textedit_clamp(state);
        (state)^.has_preferred_x := 1;
        (state)^.preferred_x := goal_x;
        if sel then begin
          (state)^.select_end := (state)^.cursor;
        end;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_20:;
    begin
      var find: __struct_nk_text_find;
      var row: __struct_nk_text_edit_row;
      var i: Int32;
      var sel: Int32 := shift_mod;
      if (state)^.single_line then begin
        // on windows, up&down become left&right
        key := NK_KEY_LEFT;
        goto retry;
        begin
        end;
      end;
      if sel then begin
        nk_textedit_prep_selection_at_cursor(state);
      end
      else begin
        if ((state)^.select_start ≠ (state)^.select_end) then begin
          nk_textedit_move_to_first(state);
        end;
      end;
      // compute current position of cursor point
      nk_textedit_clamp(state);
      nk_textedit_find_charpos((@find), state, (state)^.cursor, (state)^.single_line, font, row_height);
      // can only go up if there's a previous row
      if (find.prev_first ≠ find.first_char) then begin
        // now find character position up a row
        var x: Single;
        var goal_x: Single := (if (state)^.has_preferred_x then ((state)^.preferred_x) else (find.x));
        (state)^.cursor := find.prev_first;
        nk_textedit_layout_row((@row), state, (state)^.cursor, row_height, font);
        x := row.x0;
        begin
          // for loop: initializer
          i := 0;
          // for loop: compare
          _looplabel3:;
          if (Boolean((i < row.num_chars)) and Boolean((x < row.x1))) then begin
          end
          else begin
            goto _breaklabel3;
          end;
          // for loop: body
          begin
            var dx: Single := nk_textedit_get_width(state, find.prev_first, i, font);
            x := x + dx;
            if (x > goal_x) then begin
              goto _breaklabel3;
            end;
            (state)^.cursor := (state)^.cursor + 1;
          end;
          _continuelabel3:;
          // for loop: increment/continue
          i := i + 1;
          goto _looplabel3;
          // for loop: break
          _breaklabel3:;
        end;
        nk_textedit_clamp(state);
        (state)^.has_preferred_x := 1;
        (state)^.preferred_x := goal_x;
        if sel then begin
          (state)^.select_end := (state)^.cursor;
        end;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_21:;
    if ((state)^.mode = NK_TEXT_EDIT_MODE_VIEW) then begin
      goto _breaklabelswitch0;
    end;
    if ((state)^.select_start ≠ (state)^.select_end) then begin
      nk_textedit_delete_selection(state);
    end
    else begin
      var n: Int32 := (state)^.string.len;
      if ((state)^.cursor < n) then begin
        nk_textedit_delete(state, (state)^.cursor, 1);
      end;
    end;
    (state)^.has_preferred_x := 0;
    goto _breaklabelswitch0;
    switch0_22:;
    if ((state)^.mode = NK_TEXT_EDIT_MODE_VIEW) then begin
      goto _breaklabelswitch0;
    end;
    if ((state)^.select_start ≠ (state)^.select_end) then begin
      nk_textedit_delete_selection(state);
    end
    else begin
      nk_textedit_clamp(state);
      if ((state)^.cursor > 0) then begin
        nk_textedit_delete(state, ((state)^.cursor - 1), 1);
        (state)^.cursor := (state)^.cursor - 1;
      end;
    end;
    (state)^.has_preferred_x := 0;
    goto _breaklabelswitch0;
    switch0_23:;
    if shift_mod then begin
      nk_textedit_prep_selection_at_cursor(state);
      (state)^.cursor := (() -> begin
        var _tmp5 := 0;
        (state)^.select_end := _tmp5;
        exit _tmp5;
      end)();
      (state)^.has_preferred_x := 0;
    end
    else begin
      (state)^.cursor := (() -> begin
        var _tmp6 := (() -> begin
          var _tmp7 := 0;
          (state)^.select_end := _tmp7;
          exit _tmp7;
        end)();
        (state)^.select_start := _tmp6;
        exit _tmp6;
      end)();
      (state)^.has_preferred_x := 0;
    end;
    goto _breaklabelswitch0;
    switch0_24:;
    if shift_mod then begin
      nk_textedit_prep_selection_at_cursor(state);
      (state)^.cursor := (() -> begin
        var _tmp8 := (state)^.string.len;
        (state)^.select_end := _tmp8;
        exit _tmp8;
      end)();
      (state)^.has_preferred_x := 0;
    end
    else begin
      (state)^.cursor := (state)^.string.len;
      (state)^.select_start := (() -> begin
        var _tmp9 := 0;
        (state)^.select_end := _tmp9;
        exit _tmp9;
      end)();
      (state)^.has_preferred_x := 0;
    end;
    goto _breaklabelswitch0;
    switch0_25:;
    begin
      if shift_mod then begin
        var find: __struct_nk_text_find;
        nk_textedit_clamp(state);
        nk_textedit_prep_selection_at_cursor(state);
        if (Boolean((state)^.string.len) and Boolean(((state)^.cursor = (state)^.string.len))) then begin
          (state)^.cursor := (state)^.cursor - 1;
        end;
        nk_textedit_find_charpos((@find), state, (state)^.cursor, (state)^.single_line, font, row_height);
        (state)^.cursor := (() -> begin
          var _tmp10 := find.first_char;
          (state)^.select_end := _tmp10;
          exit _tmp10;
        end)();
        (state)^.has_preferred_x := 0;
      end
      else begin
        var find: __struct_nk_text_find;
        if (Boolean((state)^.string.len) and Boolean(((state)^.cursor = (state)^.string.len))) then begin
          (state)^.cursor := (state)^.cursor - 1;
        end;
        nk_textedit_clamp(state);
        nk_textedit_move_to_first(state);
        nk_textedit_find_charpos((@find), state, (state)^.cursor, (state)^.single_line, font, row_height);
        (state)^.cursor := find.first_char;
        (state)^.has_preferred_x := 0;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_26:;
    begin
      if shift_mod then begin
        var find: __struct_nk_text_find;
        nk_textedit_clamp(state);
        nk_textedit_prep_selection_at_cursor(state);
        nk_textedit_find_charpos((@find), state, (state)^.cursor, (state)^.single_line, font, row_height);
        (state)^.has_preferred_x := 0;
        (state)^.cursor := (find.first_char + find.length);
        if (Boolean((find.length > 0)) and Boolean((nk_str_rune_at((@(state)^.string), ((state)^.cursor - 1)) = 10))) then begin
          (state)^.cursor := (state)^.cursor - 1;
        end;
        (state)^.select_end := (state)^.cursor;
      end
      else begin
        var find: __struct_nk_text_find;
        nk_textedit_clamp(state);
        nk_textedit_move_to_first(state);
        nk_textedit_find_charpos((@find), state, (state)^.cursor, (state)^.single_line, font, row_height);
        (state)^.has_preferred_x := 0;
        (state)^.cursor := (find.first_char + find.length);
        if (Boolean((find.length > 0)) and Boolean((nk_str_rune_at((@(state)^.string), ((state)^.cursor - 1)) = 10))) then begin
          (state)^.cursor := (state)^.cursor - 1;
        end;
      end;
    end;
    goto _breaklabelswitch0;
    _breaklabelswitch0:;
  end;
end;

method nk_textedit_flush_redo(state: ^__struct_nk_text_undo_state); public;
begin
  (state)^.redo_point := 99;
  (state)^.redo_char_point := 999;
end;

method nk_textedit_discard_undo(state: ^__struct_nk_text_undo_state); public;
begin
  // discard the oldest entry in the undo list
  if ((state)^.undo_point > 0) then begin
    // if the 0th undo state has characters, clean those up
    if ((state)^.undo_rec[0].char_storage ≥ 0) then begin
      var n: Int32 := (state)^.undo_rec[0].insert_length;
      var i: Int32;
      // delete n characters from all other records
      (state)^.undo_char_point := Int16(((state)^.undo_char_point - n));
      memcpy((state)^.undo_char, ((state)^.undo_char + n), (nk_size((state)^.undo_char_point) * sizeOf(nk_rune)));
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel0:;
        if (i < (state)^.undo_point) then begin
        end
        else begin
          goto _breaklabel0;
        end;
        // for loop: body
        begin
          if ((state)^.undo_rec[i].char_storage ≥ 0) then begin
            (state)^.undo_rec[i].char_storage := Int16(((state)^.undo_rec[i].char_storage - n));
          end;
        end;
        _continuelabel0:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel0;
        // for loop: break
        _breaklabel0:;
      end;
    end;
    (state)^.undo_point := (state)^.undo_point - 1;
    memcpy((state)^.undo_rec, ((state)^.undo_rec + 1), nk_size((nk_size((state)^.undo_point) * sizeOf((state)^.undo_rec[0]))));
  end;
end;

method nk_textedit_discard_redo(state: ^__struct_nk_text_undo_state); public;
begin
  // discard the oldest entry in the redo list--it's bad if this
  //     ever happens, but because undo & redo have to store the actual
  //     characters in different cases, the redo character buffer can
  //     fill up even though the undo buffer didn't
  var num: nk_size;
  var k: Int32 := (99 - 1);
  if ((state)^.redo_point ≤ k) then begin
    // if the k'th undo state has characters, clean those up
    if ((state)^.undo_rec[k].char_storage ≥ 0) then begin
      var n: Int32 := (state)^.undo_rec[k].insert_length;
      var i: Int32;
      // delete n characters from all other records
      (state)^.redo_char_point := Int16(((state)^.redo_char_point + n));
      num := nk_size((999 - (state)^.redo_char_point));
      memcpy(((state)^.undo_char + (state)^.redo_char_point), (((state)^.undo_char + (state)^.redo_char_point) - n), (num * sizeOf(Byte)));
      begin
        // for loop: initializer
        i := (state)^.redo_point;
        // for loop: compare
        _looplabel0:;
        if (i < k) then begin
        end
        else begin
          goto _breaklabel0;
        end;
        // for loop: body
        begin
          if ((state)^.undo_rec[i].char_storage ≥ 0) then begin
            (state)^.undo_rec[i].char_storage := Int16(((state)^.undo_rec[i].char_storage + n));
          end;
        end;
        _continuelabel0:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel0;
        // for loop: break
        _breaklabel0:;
      end;
    end;
    (state)^.redo_point := (state)^.redo_point + 1;
    num := nk_size((99 - (state)^.redo_point));
    if num then begin
      memcpy((((state)^.undo_rec + (state)^.redo_point) - 1), ((state)^.undo_rec + (state)^.redo_point), (num * sizeOf((state)^.undo_rec[0])));
    end;
  end;
end;

method nk_textedit_create_undo_record(state: ^__struct_nk_text_undo_state; numchars: Int32): ^__struct_nk_text_undo_record; public;
begin
  // any time we create a new undo record, we discard redo
  nk_textedit_flush_redo(state);
  // if we have no free records, we have to make room,
  //      * by sliding the existing records down
  if ((state)^.undo_point = 99) then begin
    nk_textedit_discard_undo(state);
  end;
  // if the characters to store won't possibly fit in the buffer,
  //      * we can't undo
  if (numchars > 999) then begin
    (state)^.undo_point := 0;
    (state)^.undo_char_point := 0;
    exit 0;
  end;
  // if we don't have enough free characters in the buffer,
  //      * we have to make room
  while (((state)^.undo_char_point + numchars) > 999) do
    nk_textedit_discard_undo(state);
  exit (@(state)^.undo_rec[(() -> begin
    var _tmp0 := (state)^.undo_point;
    (state)^.undo_point := _tmp0 + 1;
    exit _tmp0;
  end)()]);
end;

method nk_textedit_createundo(state: ^__struct_nk_text_undo_state; pos: Int32; insert_len: Int32; delete_len: Int32): ^nk_rune; public;
begin
  var r: ^__struct_nk_text_undo_record := nk_textedit_create_undo_record(state, insert_len);
  if (r = 0) then begin
    exit 0;
  end;
  (r)^.where := pos;
  (r)^.insert_length := Int16(insert_len);
  (r)^.delete_length := Int16(delete_len);
  if (insert_len = 0) then begin
    (r)^.char_storage := -1;
    exit 0;
  end
  else begin
    (r)^.char_storage := (state)^.undo_char_point;
    (state)^.undo_char_point := Int16(((state)^.undo_char_point + insert_len));
    exit (@(state)^.undo_char[(r)^.char_storage]);
  end;
end;

method nk_textedit_undo(state: ^__struct_nk_text_edit); public;
begin
  var s: ^__struct_nk_text_undo_state := (@(state)^.undo);
  var u: __struct_nk_text_undo_record;
  var r: ^__struct_nk_text_undo_record;
  if ((s)^.undo_point = 0) then begin
    exit;
  end;
  // we need to do two things: apply the undo record, and create a redo record
  u := (s)^.undo_rec[((s)^.undo_point - 1)];
  r := (@(s)^.undo_rec[((s)^.redo_point - 1)]);
  (r)^.char_storage := -1;
  (r)^.insert_length := u.delete_length;
  (r)^.delete_length := u.insert_length;
  (r)^.where := u.where;
  if u.delete_length then begin
    // if the undo record says to delete characters, then the redo record will
    //             need to re-insert the characters that get deleted, so we need to store
    //             them.
    //             there are three cases:
    //                 - there's enough room to store the characters
    //                 - characters stored for *redoing* don't leave room for redo
    //                 - characters stored for *undoing* don't leave room for redo
    //             if the last is true, we have to bail
    if (((s)^.undo_char_point + u.delete_length) ≥ 999) then begin
      // the undo records take up too much character space; there's no space
      //             * to store the redo characters
      (r)^.insert_length := 0;
    end
    else begin
      var i: Int32;
      // there's definitely room to store the characters eventually
      while (((s)^.undo_char_point + u.delete_length) > (s)^.redo_char_point) do begin
        // there's currently not enough room, so discard a redo record
        nk_textedit_discard_redo(s);
        // should never happen:
        if ((s)^.redo_point = 99) then begin
          exit;
        end;
      end;
      r := (@(s)^.undo_rec[((s)^.redo_point - 1)]);
      (r)^.char_storage := Int16(((s)^.redo_char_point - u.delete_length));
      (s)^.redo_char_point := Int16(((s)^.redo_char_point - u.delete_length));
      // now save the characters
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel0:;
        if (i < u.delete_length) then begin
        end
        else begin
          goto _breaklabel0;
        end;
        // for loop: body
        (s)^.undo_char[((r)^.char_storage + i)] := nk_str_rune_at((@(state)^.string), (u.where + i));
        _continuelabel0:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel0;
        // for loop: break
        _breaklabel0:;
      end;
    end;
    // now we can carry out the deletion
    nk_str_delete_runes((@(state)^.string), u.where, u.delete_length);
  end;
  // check type of recorded action:
  if u.insert_length then begin
    // easy case: was a deletion, so we need to insert n characters
    nk_str_insert_text_runes((@(state)^.string), u.where, (@(s)^.undo_char[u.char_storage]), u.insert_length);
    (s)^.undo_char_point := Int16(((s)^.undo_char_point - u.insert_length));
  end;
  (state)^.cursor := Int16((u.where + u.insert_length));
  (s)^.undo_point := (s)^.undo_point - 1;
  (s)^.redo_point := (s)^.redo_point - 1;
end;

method nk_textedit_redo(state: ^__struct_nk_text_edit); public;
begin
  var s: ^__struct_nk_text_undo_state := (@(state)^.undo);
  var u: ^__struct_nk_text_undo_record;
  var r: __struct_nk_text_undo_record;
  if ((s)^.redo_point = 99) then begin
    exit;
  end;
  // we need to do two things: apply the redo record, and create an undo record
  u := (@(s)^.undo_rec[(s)^.undo_point]);
  r := (s)^.undo_rec[(s)^.redo_point];
  // we KNOW there must be room for the undo record, because the redo record
  //     was derived from an undo record
  (u)^.delete_length := r.insert_length;
  (u)^.insert_length := r.delete_length;
  (u)^.where := r.where;
  (u)^.char_storage := -1;
  if r.delete_length then begin
    // the redo record requires us to delete characters, so the undo record
    //         needs to store the characters
    if (((s)^.undo_char_point + (u)^.insert_length) > (s)^.redo_char_point) then begin
      (u)^.insert_length := 0;
      (u)^.delete_length := 0;
    end
    else begin
      var i: Int32;
      (u)^.char_storage := (s)^.undo_char_point;
      (s)^.undo_char_point := Int16(((s)^.undo_char_point + (u)^.insert_length));
      // now save the characters
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel0:;
        if (i < (u)^.insert_length) then begin
        end
        else begin
          goto _breaklabel0;
        end;
        // for loop: body
        begin
          (s)^.undo_char[((u)^.char_storage + i)] := nk_str_rune_at((@(state)^.string), ((u)^.where + i));
        end;
        _continuelabel0:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel0;
        // for loop: break
        _breaklabel0:;
      end;
    end;
    nk_str_delete_runes((@(state)^.string), r.where, r.delete_length);
  end;
  if r.insert_length then begin
    // easy case: need to insert n characters
    nk_str_insert_text_runes((@(state)^.string), r.where, (@(s)^.undo_char[r.char_storage]), r.insert_length);
  end;
  (state)^.cursor := (r.where + r.insert_length);
  (s)^.undo_point := (s)^.undo_point + 1;
  (s)^.redo_point := (s)^.redo_point + 1;
end;

method nk_textedit_makeundo_insert(state: ^__struct_nk_text_edit; &where: Int32; length: Int32); public;
begin
  nk_textedit_createundo((@(state)^.undo), &where, 0, length);
end;

method nk_textedit_makeundo_delete(state: ^__struct_nk_text_edit; &where: Int32; length: Int32); public;
begin
  var i: Int32;
  var p: ^nk_rune := nk_textedit_createundo((@(state)^.undo), &where, length, 0);
  if p then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < length) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      p[i] := nk_str_rune_at((@(state)^.string), (&where + i));
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
  end;
end;

method nk_textedit_makeundo_replace(state: ^__struct_nk_text_edit; &where: Int32; old_length: Int32; new_length: Int32); public;
begin
  var i: Int32;
  var p: ^nk_rune := nk_textedit_createundo((@(state)^.undo), &where, old_length, new_length);
  if p then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < old_length) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      p[i] := nk_str_rune_at((@(state)^.string), (&where + i));
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
  end;
end;

method nk_textedit_clear_state(state: ^__struct_nk_text_edit; &type: __enum_nk_text_edit_type; filter: nk_plugin_filter); public;
begin
  // reset the state to default
  (state)^.undo.undo_point := 0;
  (state)^.undo.undo_char_point := 0;
  (state)^.undo.redo_point := 99;
  (state)^.undo.redo_char_point := 999;
  (state)^.select_end := (() -> begin
    var _tmp0 := 0;
    (state)^.select_start := _tmp0;
    exit _tmp0;
  end)();
  (state)^.cursor := 0;
  (state)^.has_preferred_x := 0;
  (state)^.preferred_x := 0;
  (state)^.cursor_at_end_of_line := 0;
  (state)^.initialized := 1;
  (state)^.single_line := Byte((&type = NK_TEXT_EDIT_SINGLE_LINE));
  (state)^.mode := NK_TEXT_EDIT_MODE_VIEW;
  (state)^.filter := filter;
  (state)^.scrollbar := nk_vec2(0, 0);
end;

method nk_textedit_init_fixed(state: ^__struct_nk_text_edit; memory: ^Void; size: nk_size); public;
begin
  assert(state);
  assert(memory);
  if (Boolean((Boolean(not Boolean(state)) or Boolean(not Boolean(memory)))) or Boolean(not Boolean(size))) then begin
    exit;
  end;
  memset(state, 0, sizeOf(__struct_nk_text_edit));
  nk_textedit_clear_state(state, NK_TEXT_EDIT_SINGLE_LINE, 0);
  nk_str_init_fixed((@(state)^.string), memory, size);
end;

method nk_textedit_init(state: ^__struct_nk_text_edit; alloc: ^__struct_nk_allocator; size: nk_size); public;
begin
  assert(state);
  assert(alloc);
  if (Boolean(not Boolean(state)) or Boolean(not Boolean(alloc))) then begin
    exit;
  end;
  memset(state, 0, sizeOf(__struct_nk_text_edit));
  nk_textedit_clear_state(state, NK_TEXT_EDIT_SINGLE_LINE, 0);
  nk_str_init((@(state)^.string), alloc, size);
end;

method nk_textedit_init_default(state: ^__struct_nk_text_edit); public;
begin
  assert(state);
  if not Boolean(state) then begin
    exit;
  end;
  memset(state, 0, sizeOf(__struct_nk_text_edit));
  nk_textedit_clear_state(state, NK_TEXT_EDIT_SINGLE_LINE, 0);
  nk_str_init_default((@(state)^.string));
end;

method nk_textedit_select_all(state: ^__struct_nk_text_edit); public;
begin
  assert(state);
  (state)^.select_start := 0;
  (state)^.select_end := (state)^.string.len;
end;

method nk_textedit_free(state: ^__struct_nk_text_edit); public;
begin
  assert(state);
  if not Boolean(state) then begin
    exit;
  end;
  nk_str_free((@(state)^.string));
end;

// ===============================================================
//  *
//  *                          FILTER
//  *
//  * ===============================================================
method nk_filter_default(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  exit nk_true;
end;

method nk_filter_ascii(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  if (unicode > 128) then begin
    exit nk_false;
  end
  else begin
    exit nk_true;
  end;
end;

method nk_filter_float(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  if (Boolean((Boolean((Boolean((unicode < 48)) or Boolean((unicode > 57)))) and Boolean((unicode ≠ 46)))) and Boolean((unicode ≠ 45))) then begin
    exit nk_false;
  end
  else begin
    exit nk_true;
  end;
end;

method nk_filter_decimal(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  if (Boolean((Boolean((unicode < 48)) or Boolean((unicode > 57)))) and Boolean((unicode ≠ 45))) then begin
    exit nk_false;
  end
  else begin
    exit nk_true;
  end;
end;

method nk_filter_hex(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  if (Boolean((Boolean((Boolean((unicode < 48)) or Boolean((unicode > 57)))) and Boolean((Boolean((unicode < 97)) or Boolean((unicode > 102)))))) and Boolean((Boolean((unicode < 65)) or Boolean((unicode > 70))))) then begin
    exit nk_false;
  end
  else begin
    exit nk_true;
  end;
end;

method nk_filter_oct(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  if (Boolean((unicode < 48)) or Boolean((unicode > 55))) then begin
    exit nk_false;
  end
  else begin
    exit nk_true;
  end;
end;

method nk_filter_binary(box: ^__struct_nk_text_edit; unicode: nk_rune): Int32; public;
begin
  if (Boolean((unicode ≠ 48)) and Boolean((unicode ≠ 49))) then begin
    exit nk_false;
  end
  else begin
    exit nk_true;
  end;
end;

// ===============================================================
//  *
//  *                          EDIT
//  *
//  * ===============================================================
method nk_edit_draw_text(&out: ^__struct_nk_command_buffer; style: ^__struct_nk_style_edit; pos_x: Single; pos_y: Single; x_offset: Single; text: ^Byte; byte_len: Int32; row_height: Single; font: ^__struct_nk_user_font; background: __struct_nk_color; foreground: __struct_nk_color; is_selected: Int32); public;
begin
  assert(&out);
  assert(font);
  assert(style);
  if (Boolean((Boolean((Boolean(not Boolean(text)) or Boolean(not Boolean(byte_len)))) or Boolean(not Boolean(&out)))) or Boolean(not Boolean(style))) then begin
    exit;
  end;
  begin
    var glyph_len: Int32 := 0;
    var unicode: nk_rune := 0;
    var text_len: Int32 := 0;
    var line_width: Single := 0;
    var glyph_width: Single;
    var line: ^Byte := text;
    var line_offset: Single := 0;
    var line_count: Int32 := 0;
    var txt: __struct_nk_text;
    txt.padding := nk_vec2(0, 0);
    txt.background := background;
    txt.text := foreground;
    glyph_len := nk_utf_decode((text + text_len), (@unicode), (byte_len - text_len));
    if not Boolean(glyph_len) then begin
      exit;
    end;
    while (Boolean((text_len < byte_len)) and Boolean(glyph_len)) do begin
      if (unicode = 10) then begin
        // new line separator so draw previous line
        var label: __struct_nk_rect;
        label.y := (pos_y + line_offset);
        label.h := row_height;
        label.w := line_width;
        label.x := pos_x;
        if not Boolean(line_count) then begin
          label.x := label.x + x_offset;
        end;
        if is_selected then begin
          // selection needs to draw different background color
          nk_fill_rect(&out, label, 0, background);
        end;
        nk_widget_text(&out, label, line, Int32(((text + text_len) - line)), (@txt), NK_TEXT_CENTERED, font);
        text_len := text_len + 1;
        line_count := line_count + 1;
        line_width := 0;
        line := (text + text_len);
        line_offset := line_offset + row_height;
        glyph_len := nk_utf_decode((text + text_len), (@unicode), Int32((byte_len - text_len)));
        continue;
      end;
      if (unicode = 13) then begin
        text_len := text_len + 1;
        glyph_len := nk_utf_decode((text + text_len), (@unicode), (byte_len - text_len));
        continue;
      end;
      glyph_width := (font)^.width((font)^.userdata, (font)^.height, (text + text_len), glyph_len);
      line_width := line_width + Single(glyph_width);
      text_len := text_len + glyph_len;
      glyph_len := nk_utf_decode((text + text_len), (@unicode), (byte_len - text_len));
      continue;
    end;
    if (line_width > 0) then begin
      // draw last line
      var label: __struct_nk_rect;
      label.y := (pos_y + line_offset);
      label.h := row_height;
      label.w := line_width;
      label.x := pos_x;
      if not Boolean(line_count) then begin
        label.x := label.x + x_offset;
      end;
      if is_selected then begin
        nk_fill_rect(&out, label, 0, background);
      end;
      nk_widget_text(&out, label, line, Int32(((text + text_len) - line)), (@txt), NK_TEXT_LEFT, font);
    end;
  end;
end;

method nk_do_edit(state: ^nk_flags; &out: ^__struct_nk_command_buffer; bounds: __struct_nk_rect; &flags: nk_flags; filter: nk_plugin_filter; edit: ^__struct_nk_text_edit; style: ^__struct_nk_style_edit; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): nk_flags; public;
begin
  var area: __struct_nk_rect;
  var ret: nk_flags := 0;
  var row_height: Single;
  var prev_state: Byte := 0;
  var is_hovered: Byte := 0;
  var select_all: Byte := 0;
  var cursor_follow: Byte := 0;
  var old_clip: __struct_nk_rect;
  var clip: __struct_nk_rect;
  assert(state);
  assert(&out);
  assert(style);
  if (Boolean((Boolean(not Boolean(state)) or Boolean(not Boolean(&out)))) or Boolean(not Boolean(style))) then begin
    exit ret;
  end;
  // visible text area calculation
  area.x := ((bounds.x + (style)^.padding.x) + (style)^.border);
  area.y := ((bounds.y + (style)^.padding.y) + (style)^.border);
  area.w := (bounds.w - ((2.0 * (style)^.padding.x) + (2 * (style)^.border)));
  area.h := (bounds.h - ((2.0 * (style)^.padding.y) + (2 * (style)^.border)));
  if (&flags and NK_EDIT_MULTILINE) then begin
    area.w := (if (0 < (area.w - (style)^.scrollbar_size.x)) then ((area.w - (style)^.scrollbar_size.x)) else (0));
  end;
  row_height := (if (&flags and NK_EDIT_MULTILINE) then (((font)^.height + (style)^.row_padding)) else (area.h));
  // calculate clipping rectangle
  old_clip := (&out)^.clip;
  nk_unify((@clip), (@old_clip), area.x, area.y, (area.x + area.w), (area.y + area.h));
  // update edit state
  prev_state := Byte((edit)^.active);
  is_hovered := Byte(nk_input_is_mouse_hovering_rect(&in, bounds));
  if (Boolean((Boolean(&in) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked))) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down)) then begin
    (edit)^.active := (Boolean((Boolean((bounds.x ≤ (&in)^.mouse.pos.x)) and Boolean(((&in)^.mouse.pos.x < (bounds.x + bounds.w))))) and Boolean((Boolean((bounds.y ≤ (&in)^.mouse.pos.y)) and Boolean(((&in)^.mouse.pos.y < (bounds.y + bounds.h))))));
  end;
  // (de)activate text editor
  if (Boolean(not Boolean(prev_state)) and Boolean((edit)^.active)) then begin
    var &type: __enum_nk_text_edit_type := (if (&flags and NK_EDIT_MULTILINE) then (NK_TEXT_EDIT_MULTI_LINE) else (NK_TEXT_EDIT_SINGLE_LINE));
    nk_textedit_clear_state(edit, &type, filter);
    if (&flags and NK_EDIT_AUTO_SELECT) then begin
      select_all := nk_true;
    end;
    if (&flags and NK_EDIT_GOTO_END_ON_ACTIVATE) then begin
      (edit)^.cursor := (edit)^.string.len;
      &in := 0;
    end;
  end
  else begin
    if not Boolean((edit)^.active) then begin
      (edit)^.mode := NK_TEXT_EDIT_MODE_VIEW;
    end;
  end;
  if (&flags and NK_EDIT_READ_ONLY) then begin
    (edit)^.mode := NK_TEXT_EDIT_MODE_VIEW;
  end
  else begin
    if (&flags and NK_EDIT_ALWAYS_INSERT_MODE) then begin
      (edit)^.mode := NK_TEXT_EDIT_MODE_INSERT;
    end;
  end;
  ret := (if (edit)^.active then (NK_EDIT_ACTIVE) else (NK_EDIT_INACTIVE));
  if (prev_state ≠ (edit)^.active) then begin
    ret := ret or (if (edit)^.active then (NK_EDIT_ACTIVATED) else (NK_EDIT_DEACTIVATED));
  end;
  // handle user input
  if (Boolean((edit)^.active) and Boolean(&in)) then begin
    var shift_mod: Int32 := (&in)^.keyboard.keys[NK_KEY_SHIFT].down;
    var mouse_x: Single := (((&in)^.mouse.pos.x - area.x) + (edit)^.scrollbar.x);
    var mouse_y: Single := (((&in)^.mouse.pos.y - area.y) + (edit)^.scrollbar.y);
    // mouse click handler
    is_hovered := Byte(nk_input_is_mouse_hovering_rect(&in, area));
    if select_all then begin
      nk_textedit_select_all(edit);
    end
    else begin
      if (Boolean((Boolean(is_hovered) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down))) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked)) then begin
        nk_textedit_click(edit, mouse_x, mouse_y, font, row_height);
      end
      else begin
        if (Boolean((Boolean(is_hovered) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down))) and Boolean((Boolean(((&in)^.mouse.delta.x ≠ 0.0)) or Boolean(((&in)^.mouse.delta.y ≠ 0.0))))) then begin
          nk_textedit_drag(edit, mouse_x, mouse_y, font, row_height);
          cursor_follow := nk_true;
        end
        else begin
          if (Boolean((Boolean(is_hovered) and Boolean((&in)^.mouse.buttons[NK_BUTTON_RIGHT].clicked))) and Boolean((&in)^.mouse.buttons[NK_BUTTON_RIGHT].down)) then begin
            nk_textedit_key(edit, NK_KEY_TEXT_WORD_LEFT, nk_false, font, row_height);
            nk_textedit_key(edit, NK_KEY_TEXT_WORD_RIGHT, nk_true, font, row_height);
            cursor_follow := nk_true;
          end;
        end;
      end;
    end;
    begin
      var i: Int32;
      // keyboard input
      var old_mode: Int32 := (edit)^.mode;
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel1:;
        if (i < NK_KEY_MAX) then begin
        end
        else begin
          goto _breaklabel1;
        end;
        // for loop: body
        begin
          if (Boolean((i = NK_KEY_ENTER)) or Boolean((i = NK_KEY_TAB))) then begin
            goto _continuelabel1;
          end;
          // special case
          if nk_input_is_key_pressed(&in, __enum_nk_keys(i)) then begin
            nk_textedit_key(edit, __enum_nk_keys(i), shift_mod, font, row_height);
            cursor_follow := nk_true;
          end;
        end;
        _continuelabel1:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel1;
        // for loop: break
        _breaklabel1:;
      end;
      if (old_mode ≠ (edit)^.mode) then begin
        (&in)^.keyboard.text_len := 0;
      end;
    end;
    // text input
    (edit)^.filter := filter;
    if (&in)^.keyboard.text_len then begin
      nk_textedit_text(edit, (&in)^.keyboard.text, (&in)^.keyboard.text_len);
      cursor_follow := nk_true;
      (&in)^.keyboard.text_len := 0;
    end;
    // enter key handler
    if nk_input_is_key_pressed(&in, NK_KEY_ENTER) then begin
      cursor_follow := nk_true;
      if (Boolean((&flags and NK_EDIT_CTRL_ENTER_NEWLINE)) and Boolean(shift_mod)) then begin
        nk_textedit_text(edit, #10, 1);
      end
      else begin
        if (&flags and NK_EDIT_SIG_ENTER) then begin
          ret := ret or NK_EDIT_COMMITED;
        end
        else begin
          nk_textedit_text(edit, #10, 1);
        end;
      end;
    end;
    // cut & copy handler
    begin
      var copy: Int32 := nk_input_is_key_pressed(&in, NK_KEY_COPY);
      var cut: Int32 := nk_input_is_key_pressed(&in, NK_KEY_CUT);
      if (Boolean((Boolean(copy) or Boolean(cut))) and Boolean((&flags and NK_EDIT_CLIPBOARD))) then begin
        var glyph_len: Int32;
        var unicode: nk_rune;
        var text: ^Byte;
        var b: Int32 := (edit)^.select_start;
        var e: Int32 := (edit)^.select_end;
        var &begin: Int32 := (if (b < e) then (b) else (e));
        var &end: Int32 := (if (b < e) then (e) else (b));
        text := nk_str_at_const((@(edit)^.string), &begin, (@unicode), (@glyph_len));
        if (edit)^.clip.copy then begin
          (edit)^.clip.copy((edit)^.clip.userdata, text, (&end - &begin));
        end;
        if (Boolean(cut) and Boolean(not Boolean((&flags and NK_EDIT_READ_ONLY)))) then begin
          nk_textedit_cut(edit);
          cursor_follow := nk_true;
        end;
      end;
    end;
    // paste handler
    begin
      var paste: Int32 := nk_input_is_key_pressed(&in, NK_KEY_PASTE);
      if (Boolean((Boolean(paste) and Boolean((&flags and NK_EDIT_CLIPBOARD)))) and Boolean((edit)^.clip.paste)) then begin
        (edit)^.clip.paste((edit)^.clip.userdata, edit);
        cursor_follow := nk_true;
      end;
    end;
    // tab handler
    begin
      var tab: Int32 := nk_input_is_key_pressed(&in, NK_KEY_TAB);
      if (Boolean(tab) and Boolean((&flags and NK_EDIT_ALLOW_TAB))) then begin
        nk_textedit_text(edit, "    ", 4);
        cursor_follow := nk_true;
      end;
    end;
  end;
  // set widget state
  if (edit)^.active then begin
    (state)^ := NK_WIDGET_STATE_ACTIVE;
  end
  else begin
    if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
      (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
    end
    else begin
      (state)^ := NK_WIDGET_STATE_INACTIVE;
    end;
  end;
  begin
  end;
  if is_hovered then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_HOVERED;
  end;
  // DRAW EDIT
  begin
    var text: ^Byte := nk_str_get_const((@(edit)^.string));
    var len: Int32 := nk_str_len_char((@(edit)^.string));
    begin
      // select background colors/images
      var background: ^__struct_nk_style_item;
      if ((state)^ and NK_WIDGET_STATE_ACTIVED) then begin
        background := (@(style)^.active);
      end
      else begin
        if ((state)^ and NK_WIDGET_STATE_HOVER) then begin
          background := (@(style)^.hover);
        end
        else begin
          background := (@(style)^.normal);
        end;
      end;
      // draw background frame
      if ((background)^.type = NK_STYLE_ITEM_COLOR) then begin
        nk_stroke_rect(&out, bounds, (style)^.rounding, (style)^.border, (style)^.border_color);
        nk_fill_rect(&out, bounds, (style)^.rounding, (background)^.data.color);
      end
      else begin
        nk_draw_image(&out, bounds, (@(background)^.data.image), nk_white);
      end;
    end;
    area.w := (if (0 < (area.w - (style)^.cursor_size)) then ((area.w - (style)^.cursor_size)) else (0));
    if (edit)^.active then begin
      var total_lines: Int32 := 1;
      var text_size: __struct_nk_vec2 := nk_vec2(0, 0);
      // text pointer positions
      var cursor_ptr: ^Byte := 0;
      var select_begin_ptr: ^Byte := 0;
      var select_end_ptr: ^Byte := 0;
      // 2D pixel positions
      var cursor_pos: __struct_nk_vec2 := nk_vec2(0, 0);
      var selection_offset_start: __struct_nk_vec2 := nk_vec2(0, 0);
      var selection_offset_end: __struct_nk_vec2 := nk_vec2(0, 0);
      var selection_begin: Int32 := (if ((edit)^.select_start < (edit)^.select_end) then ((edit)^.select_start) else ((edit)^.select_end));
      var selection_end: Int32 := (if ((edit)^.select_start < (edit)^.select_end) then ((edit)^.select_end) else ((edit)^.select_start));
      // calculate total line count + total space + cursor/selection position
      var line_width: Single := 0.0;
      if (Boolean(text) and Boolean(len)) then begin
        // utf8 encoding
        var glyph_width: Single;
        var glyph_len: Int32 := 0;
        var unicode: nk_rune := 0;
        var text_len: Int32 := 0;
        var glyphs: Int32 := 0;
        var row_begin: Int32 := 0;
        glyph_len := nk_utf_decode(text, (@unicode), len);
        glyph_width := (font)^.width((font)^.userdata, (font)^.height, text, glyph_len);
        line_width := 0;
        // iterate all lines
        while (Boolean((text_len < len)) and Boolean(glyph_len)) do begin
          // set cursor 2D position and line
          if (Boolean(not Boolean(cursor_ptr)) and Boolean((glyphs = (edit)^.cursor))) then begin
            var glyph_offset: Int32;
            var out_offset: __struct_nk_vec2;
            var row_size: __struct_nk_vec2;
            var remaining: ^Byte;
            // calculate 2d position
            cursor_pos.y := (Single((total_lines - 1)) * row_height);
            row_size := nk_text_calculate_text_bounds(font, (text + row_begin), (text_len - row_begin), row_height, (@remaining), (@out_offset), (@glyph_offset), NK_STOP_ON_NEW_LINE);
            cursor_pos.x := row_size.x;
            cursor_ptr := (text + text_len);
          end;
          // set start selection 2D position and line
          if (Boolean((Boolean(not Boolean(select_begin_ptr)) and Boolean(((edit)^.select_start ≠ (edit)^.select_end)))) and Boolean((glyphs = selection_begin))) then begin
            var glyph_offset: Int32;
            var out_offset: __struct_nk_vec2;
            var row_size: __struct_nk_vec2;
            var remaining: ^Byte;
            // calculate 2d position
            selection_offset_start.y := (Single((if ((total_lines - 1) < 0) then (0) else ((total_lines - 1)))) * row_height);
            row_size := nk_text_calculate_text_bounds(font, (text + row_begin), (text_len - row_begin), row_height, (@remaining), (@out_offset), (@glyph_offset), NK_STOP_ON_NEW_LINE);
            selection_offset_start.x := row_size.x;
            select_begin_ptr := (text + text_len);
          end;
          // set end selection 2D position and line
          if (Boolean((Boolean(not Boolean(select_end_ptr)) and Boolean(((edit)^.select_start ≠ (edit)^.select_end)))) and Boolean((glyphs = selection_end))) then begin
            var glyph_offset: Int32;
            var out_offset: __struct_nk_vec2;
            var row_size: __struct_nk_vec2;
            var remaining: ^Byte;
            // calculate 2d position
            selection_offset_end.y := (Single((total_lines - 1)) * row_height);
            row_size := nk_text_calculate_text_bounds(font, (text + row_begin), (text_len - row_begin), row_height, (@remaining), (@out_offset), (@glyph_offset), NK_STOP_ON_NEW_LINE);
            selection_offset_end.x := row_size.x;
            select_end_ptr := (text + text_len);
          end;
          if (unicode = 10) then begin
            text_size.x := (if (text_size.x < line_width) then (line_width) else (text_size.x));
            total_lines := total_lines + 1;
            line_width := 0;
            text_len := text_len + 1;
            glyphs := glyphs + 1;
            row_begin := text_len;
            glyph_len := nk_utf_decode((text + text_len), (@unicode), (len - text_len));
            glyph_width := (font)^.width((font)^.userdata, (font)^.height, (text + text_len), glyph_len);
            continue;
          end;
          glyphs := glyphs + 1;
          text_len := text_len + glyph_len;
          line_width := line_width + Single(glyph_width);
          glyph_len := nk_utf_decode((text + text_len), (@unicode), (len - text_len));
          glyph_width := (font)^.width((font)^.userdata, (font)^.height, (text + text_len), glyph_len);
          continue;
        end;
        text_size.y := (Single(total_lines) * row_height);
        // handle case when cursor is at end of text buffer
        if (Boolean(not Boolean(cursor_ptr)) and Boolean(((edit)^.cursor = (edit)^.string.len))) then begin
          cursor_pos.x := line_width;
          cursor_pos.y := (text_size.y - row_height);
        end;
      end;
      begin
        // scrollbar
        if cursor_follow then begin
          // update scrollbar to follow cursor
          if not Boolean((&flags and NK_EDIT_NO_HORIZONTAL_SCROLL)) then begin
            // horizontal scroll
            var scroll_increment: Single := (area.w * 0.25);
            if (cursor_pos.x < (edit)^.scrollbar.x) then begin
              (edit)^.scrollbar.x := Single(Int32((if (0.0 < (cursor_pos.x - scroll_increment)) then ((cursor_pos.x - scroll_increment)) else (0.0))));
            end;
            if (cursor_pos.x ≥ ((edit)^.scrollbar.x + area.w)) then begin
              (edit)^.scrollbar.x := Single(Int32((if (0.0 < ((edit)^.scrollbar.x + scroll_increment)) then (((edit)^.scrollbar.x + scroll_increment)) else (0.0))));
            end;
          end
          else begin
            (edit)^.scrollbar.x := 0;
          end;
          if (&flags and NK_EDIT_MULTILINE) then begin
            // vertical scroll
            if (cursor_pos.y < (edit)^.scrollbar.y) then begin
              (edit)^.scrollbar.y := (if (0.0 < (cursor_pos.y - row_height)) then ((cursor_pos.y - row_height)) else (0.0));
            end;
            if (cursor_pos.y ≥ ((edit)^.scrollbar.y + area.h)) then begin
              (edit)^.scrollbar.y := ((edit)^.scrollbar.y + row_height);
            end;
          end
          else begin
            (edit)^.scrollbar.y := 0;
          end;
        end;
        // scrollbar widget
        if (&flags and NK_EDIT_MULTILINE) then begin
          var ws: nk_flags;
          var scroll: __struct_nk_rect;
          var scroll_target: Single;
          var scroll_offset: Single;
          var scroll_step: Single;
          var scroll_inc: Single;
          scroll := area;
          scroll.x := (((bounds.x + bounds.w) - (style)^.border) - (style)^.scrollbar_size.x);
          scroll.w := (style)^.scrollbar_size.x;
          scroll_offset := (edit)^.scrollbar.y;
          scroll_step := (scroll.h * 0.100000001490116);
          scroll_inc := (scroll.h * 0.00999999977648258);
          scroll_target := text_size.y;
          (edit)^.scrollbar.y := nk_do_scrollbarv((@ws), &out, scroll, 0, scroll_offset, scroll_target, scroll_step, scroll_inc, (@(style)^.scrollbar), &in, font);
        end;
      end;
      // draw text
      begin
        var background_color: __struct_nk_color;
        var text_color: __struct_nk_color;
        var sel_background_color: __struct_nk_color;
        var sel_text_color: __struct_nk_color;
        var cursor_color: __struct_nk_color;
        var cursor_text_color: __struct_nk_color;
        var background: ^__struct_nk_style_item;
        nk_push_scissor(&out, clip);
        // select correct colors to draw
        if ((state)^ and NK_WIDGET_STATE_ACTIVED) then begin
          background := (@(style)^.active);
          text_color := (style)^.text_active;
          sel_text_color := (style)^.selected_text_hover;
          sel_background_color := (style)^.selected_hover;
          cursor_color := (style)^.cursor_hover;
          cursor_text_color := (style)^.cursor_text_hover;
        end
        else begin
          if ((state)^ and NK_WIDGET_STATE_HOVER) then begin
            background := (@(style)^.hover);
            text_color := (style)^.text_hover;
            sel_text_color := (style)^.selected_text_hover;
            sel_background_color := (style)^.selected_hover;
            cursor_text_color := (style)^.cursor_text_hover;
            cursor_color := (style)^.cursor_hover;
          end
          else begin
            background := (@(style)^.normal);
            text_color := (style)^.text_normal;
            sel_text_color := (style)^.selected_text_normal;
            sel_background_color := (style)^.selected_normal;
            cursor_color := (style)^.cursor_normal;
            cursor_text_color := (style)^.cursor_text_normal;
          end;
        end;
        if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
          background_color := nk_rgba(0, 0, 0, 0);
        end
        else begin
          background_color := (background)^.data.color;
        end;
        if ((edit)^.select_start = (edit)^.select_end) then begin
          // no selection so just draw the complete text
          var &begin: ^Byte := nk_str_get_const((@(edit)^.string));
          var l: Int32 := nk_str_len_char((@(edit)^.string));
          nk_edit_draw_text(&out, style, (area.x - (edit)^.scrollbar.x), (area.y - (edit)^.scrollbar.y), 0, &begin, l, row_height, font, background_color, text_color, nk_false);
        end
        else begin
          // edit has selection so draw 1-3 text chunks
          if (Boolean(((edit)^.select_start ≠ (edit)^.select_end)) and Boolean((selection_begin > 0))) then begin
            // draw unselected text before selection
            var &begin: ^Byte := nk_str_get_const((@(edit)^.string));
            assert(select_begin_ptr);
            nk_edit_draw_text(&out, style, (area.x - (edit)^.scrollbar.x), (area.y - (edit)^.scrollbar.y), 0, &begin, Int32((select_begin_ptr - &begin)), row_height, font, background_color, text_color, nk_false);
          end;
          if ((edit)^.select_start ≠ (edit)^.select_end) then begin
            // draw selected text
            assert(select_begin_ptr);
            if not Boolean(select_end_ptr) then begin
              var &begin: ^Byte := nk_str_get_const((@(edit)^.string));
              select_end_ptr := (&begin + nk_str_len_char((@(edit)^.string)));
            end;
            nk_edit_draw_text(&out, style, (area.x - (edit)^.scrollbar.x), ((area.y + selection_offset_start.y) - (edit)^.scrollbar.y), selection_offset_start.x, select_begin_ptr, Int32((select_end_ptr - select_begin_ptr)), row_height, font, sel_background_color, sel_text_color, nk_true);
          end;
          if (Boolean(((edit)^.select_start ≠ (edit)^.select_end)) and Boolean((selection_end < (edit)^.string.len))) then begin
            // draw unselected text after selected text
            var &begin: ^Byte := select_end_ptr;
            var &end: ^Byte := (nk_str_get_const((@(edit)^.string)) + nk_str_len_char((@(edit)^.string)));
            assert(select_end_ptr);
            nk_edit_draw_text(&out, style, (area.x - (edit)^.scrollbar.x), ((area.y + selection_offset_end.y) - (edit)^.scrollbar.y), selection_offset_end.x, &begin, Int32((&end - &begin)), row_height, font, background_color, text_color, nk_true);
          end;
        end;
        // cursor
        if ((edit)^.select_start = (edit)^.select_end) then begin
          if (Boolean(((edit)^.cursor ≥ nk_str_len((@(edit)^.string)))) or Boolean((Boolean(cursor_ptr) and Boolean(((cursor_ptr)^ = 10))))) then begin
            // draw cursor at end of line
            var cursor: __struct_nk_rect;
            cursor.w := (style)^.cursor_size;
            cursor.h := (font)^.height;
            cursor.x := ((area.x + cursor_pos.x) - (edit)^.scrollbar.x);
            cursor.y := (((area.y + cursor_pos.y) + (row_height / 2.0)) - (cursor.h / 2.0));
            cursor.y := cursor.y - (edit)^.scrollbar.y;
            nk_fill_rect(&out, cursor, 0, cursor_color);
          end
          else begin
            // draw cursor inside text
            var glyph_len: Int32;
            var label: __struct_nk_rect;
            var txt: __struct_nk_text;
            var unicode: nk_rune;
            assert(cursor_ptr);
            glyph_len := nk_utf_decode(cursor_ptr, (@unicode), 4);
            label.x := ((area.x + cursor_pos.x) - (edit)^.scrollbar.x);
            label.y := ((area.y + cursor_pos.y) - (edit)^.scrollbar.y);
            label.w := (font)^.width((font)^.userdata, (font)^.height, cursor_ptr, glyph_len);
            label.h := row_height;
            txt.padding := nk_vec2(0, 0);
            txt.background := cursor_color;
            begin
            end;
            txt.text := cursor_text_color;
            nk_fill_rect(&out, label, 0, cursor_color);
            nk_widget_text(&out, label, cursor_ptr, glyph_len, (@txt), NK_TEXT_LEFT, font);
          end;
        end;
      end;
    end
    else begin
      // not active so just draw text
      var l: Int32 := nk_str_len_char((@(edit)^.string));
      var &begin: ^Byte := nk_str_get_const((@(edit)^.string));
      var background: ^__struct_nk_style_item;
      var background_color: __struct_nk_color;
      var text_color: __struct_nk_color;
      nk_push_scissor(&out, clip);
      if ((state)^ and NK_WIDGET_STATE_ACTIVED) then begin
        background := (@(style)^.active);
        text_color := (style)^.text_active;
      end
      else begin
        if ((state)^ and NK_WIDGET_STATE_HOVER) then begin
          background := (@(style)^.hover);
          text_color := (style)^.text_hover;
        end
        else begin
          background := (@(style)^.normal);
          text_color := (style)^.text_normal;
        end;
      end;
      if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
        background_color := nk_rgba(0, 0, 0, 0);
      end
      else begin
        background_color := (background)^.data.color;
      end;
      nk_edit_draw_text(&out, style, (area.x - (edit)^.scrollbar.x), (area.y - (edit)^.scrollbar.y), 0, &begin, l, row_height, font, background_color, text_color, nk_false);
    end;
    nk_push_scissor(&out, old_clip);
  end;
  exit ret;
end;

method nk_edit_focus(ctx: ^__struct_nk_context; &flags: nk_flags); public;
begin
  var hash: nk_hash;
  var win: ^__struct_nk_window;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  win := (ctx)^.current;
  hash := (win)^.edit.seq;
  (win)^.edit.active := nk_true;
  (win)^.edit.name := hash;
  if (&flags and NK_EDIT_ALWAYS_INSERT_MODE) then begin
    (win)^.edit.mode := NK_TEXT_EDIT_MODE_INSERT;
  end;
end;

method nk_edit_unfocus(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  win := (ctx)^.current;
  (win)^.edit.active := nk_false;
  (win)^.edit.name := 0;
end;

method nk_edit_string(ctx: ^__struct_nk_context; &flags: nk_flags; memory: ^Byte; len: ^Int32; max: Int32; filter: nk_plugin_filter): nk_flags; public;
begin
  var hash: nk_hash;
  var state: nk_flags;
  var edit: ^__struct_nk_text_edit;
  var win: ^__struct_nk_window;
  assert(ctx);
  assert(memory);
  assert(len);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(memory)))) or Boolean(not Boolean(len))) then begin
    exit 0;
  end;
  filter := (if not Boolean(filter) then (nk_filter_default) else (filter));
  win := (ctx)^.current;
  hash := (win)^.edit.seq;
  edit := (@(ctx)^.text_edit);
  nk_textedit_clear_state((@(ctx)^.text_edit), (if (&flags and NK_EDIT_MULTILINE) then (NK_TEXT_EDIT_MULTI_LINE) else (NK_TEXT_EDIT_SINGLE_LINE)), filter);
  if (Boolean((win)^.edit.active) and Boolean((hash = (win)^.edit.name))) then begin
    if (&flags and NK_EDIT_NO_CURSOR) then begin
      (edit)^.cursor := nk_utf_len(memory, (len)^);
    end
    else begin
      (edit)^.cursor := (win)^.edit.cursor;
    end;
    if not Boolean((&flags and NK_EDIT_SELECTABLE)) then begin
      (edit)^.select_start := (win)^.edit.cursor;
      (edit)^.select_end := (win)^.edit.cursor;
    end
    else begin
      (edit)^.select_start := (win)^.edit.sel_start;
      (edit)^.select_end := (win)^.edit.sel_end;
    end;
    (edit)^.mode := (win)^.edit.mode;
    (edit)^.scrollbar.x := Single((win)^.edit.scrollbar.x);
    (edit)^.scrollbar.y := Single((win)^.edit.scrollbar.y);
    (edit)^.active := nk_true;
  end
  else begin
    (edit)^.active := nk_false;
  end;
  max := (if (1 < max) then (max) else (1));
  (len)^ := (if ((len)^ < (max - 1)) then ((len)^) else ((max - 1)));
  nk_str_init_fixed((@(edit)^.string), memory, nk_size(max));
  (edit)^.string.buffer.allocated := nk_size((len)^);
  (edit)^.string.len := nk_utf_len(memory, (len)^);
  state := nk_edit_buffer(ctx, &flags, edit, filter);
  (len)^ := Int32((edit)^.string.buffer.allocated);
  if (edit)^.active then begin
    (win)^.edit.cursor := (edit)^.cursor;
    (win)^.edit.sel_start := (edit)^.select_start;
    (win)^.edit.sel_end := (edit)^.select_end;
    (win)^.edit.mode := (edit)^.mode;
    (win)^.edit.scrollbar.x := nk_uint((edit)^.scrollbar.x);
    (win)^.edit.scrollbar.y := nk_uint((edit)^.scrollbar.y);
  end;
  exit state;
end;

method nk_edit_buffer(ctx: ^__struct_nk_context; &flags: nk_flags; edit: ^__struct_nk_text_edit; filter: nk_plugin_filter): nk_flags; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var state: __enum_nk_widget_layout_states;
  var bounds: __struct_nk_rect;
  var ret_flags: nk_flags := 0;
  var prev_state: Byte;
  var hash: nk_hash;
  // make sure correct values
  assert(ctx);
  assert(edit);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit state;
  end;
  &in := (if (((win)^.layout)^.flags and NK_WINDOW_ROM) then (0) else ((@(ctx)^.input)));
  // check if edit is currently hot item
  hash := (() -> begin
    var _tmp0 := (win)^.edit.seq;
    (win)^.edit.seq := _tmp0 + 1;
    exit _tmp0;
  end)();
  if (Boolean((win)^.edit.active) and Boolean((hash = (win)^.edit.name))) then begin
    if (&flags and NK_EDIT_NO_CURSOR) then begin
      (edit)^.cursor := (edit)^.string.len;
    end;
    if not Boolean((&flags and NK_EDIT_SELECTABLE)) then begin
      (edit)^.select_start := (edit)^.cursor;
      (edit)^.select_end := (edit)^.cursor;
    end;
    if (&flags and NK_EDIT_CLIPBOARD) then begin
      (edit)^.clip := (ctx)^.clip;
    end;
    (edit)^.active := Byte((win)^.edit.active);
  end
  else begin
    (edit)^.active := nk_false;
  end;
  (edit)^.mode := (win)^.edit.mode;
  filter := (if not Boolean(filter) then (nk_filter_default) else (filter));
  prev_state := Byte((edit)^.active);
  &in := (if (&flags and NK_EDIT_READ_ONLY) then (0) else (&in));
  ret_flags := nk_do_edit((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, &flags, filter, edit, (@(style)^.edit), &in, (style)^.font);
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
    (ctx)^.style.cursor_active := (ctx)^.style.cursors[NK_CURSOR_TEXT];
  end;
  if (Boolean((edit)^.active) and Boolean((prev_state ≠ (edit)^.active))) then begin
    // current edit is now hot
    (win)^.edit.active := nk_true;
    (win)^.edit.name := hash;
  end
  else begin
    if (Boolean(prev_state) and Boolean(not Boolean((edit)^.active))) then begin
      // current edit is now cold
      (win)^.edit.active := nk_false;
    end;
  end;
  exit ret_flags;
end;

method nk_edit_string_zero_terminated(ctx: ^__struct_nk_context; &flags: nk_flags; buffer: ^Byte; max: Int32; filter: nk_plugin_filter): nk_flags; public;
begin
  var &result: nk_flags;
  var len: Int32 := nk_strlen(buffer);
  &result := nk_edit_string(ctx, &flags, buffer, (@len), max, filter);
  buffer[(if ((if ((max - 1) < 0) then (0) else ((max - 1))) < len) then ((if ((max - 1) < 0) then (0) else ((max - 1)))) else (len))] := 0;
  exit &result;
end;

// ===============================================================
//  *
//  *                              PROPERTY
//  *
//  * ===============================================================
method nk_drag_behavior(state: ^nk_flags; &in: ^__struct_nk_input; drag: __struct_nk_rect; variant: ^__struct_nk_property_variant; inc_per_pixel: Single); public;
begin
  var left_mouse_down: Int32 := (Boolean(&in) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down));
  var left_mouse_click_in_cursor: Int32 := (Boolean(&in) and Boolean(nk_input_has_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, drag, nk_true)));
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  if nk_input_is_mouse_hovering_rect(&in, drag) then begin
    (state)^ := NK_WIDGET_STATE_HOVERED;
  end;
  if (Boolean(left_mouse_down) and Boolean(left_mouse_click_in_cursor)) then begin
    var delta: Single;
    var pixels: Single;
    pixels := (&in)^.mouse.delta.x;
    delta := (pixels * inc_per_pixel);
    begin
      case (variant)^.kind of
        NK_PROPERTY_INT: begin
            goto switch0_0;
          end;
        NK_PROPERTY_FLOAT: begin
            goto switch0_1;
          end;
        NK_PROPERTY_DOUBLE: begin
            goto switch0_2;
          end;
        else begin
          goto switch0_default;
        end;
      end;
      goto _breaklabelswitch0;
      switch0_default:;
      goto _breaklabelswitch0;
      switch0_0:;
      (variant)^.value.i := ((variant)^.value.i + Int32(delta));
      (variant)^.value.i := (if ((if ((variant)^.value.i < (variant)^.max_value.i) then ((variant)^.value.i) else ((variant)^.max_value.i)) < (variant)^.min_value.i) then ((variant)^.min_value.i) else ((if ((variant)^.value.i < (variant)^.max_value.i) then ((variant)^.value.i) else ((variant)^.max_value.i))));
      goto _breaklabelswitch0;
      switch0_1:;
      (variant)^.value.f := ((variant)^.value.f + Single(delta));
      (variant)^.value.f := (if ((if ((variant)^.value.f < (variant)^.max_value.f) then ((variant)^.value.f) else ((variant)^.max_value.f)) < (variant)^.min_value.f) then ((variant)^.min_value.f) else ((if ((variant)^.value.f < (variant)^.max_value.f) then ((variant)^.value.f) else ((variant)^.max_value.f))));
      goto _breaklabelswitch0;
      switch0_2:;
      (variant)^.value.d := ((variant)^.value.d + Double(delta));
      (variant)^.value.d := (if ((if ((variant)^.value.d < (variant)^.max_value.d) then ((variant)^.value.d) else ((variant)^.max_value.d)) < (variant)^.min_value.d) then ((variant)^.min_value.d) else ((if ((variant)^.value.d < (variant)^.max_value.d) then ((variant)^.value.d) else ((variant)^.max_value.d))));
      goto _breaklabelswitch0;
      _breaklabelswitch0:;
    end;
    (state)^ := NK_WIDGET_STATE_ACTIVE;
  end;
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(&in, drag)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(&in, drag) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
end;

method nk_property_behavior(ws: ^nk_flags; &in: ^__struct_nk_input; &property: __struct_nk_rect; label: __struct_nk_rect; edit: __struct_nk_rect; &empty: __struct_nk_rect; state: ^Int32; variant: ^__struct_nk_property_variant; inc_per_pixel: Single); public;
begin
  if (Boolean(&in) and Boolean(((state)^ = NK_PROPERTY_DEFAULT))) then begin
    if nk_button_behavior(ws, edit, &in, NK_BUTTON_DEFAULT) then begin
      (state)^ := NK_PROPERTY_EDIT;
    end
    else begin
      if nk_input_is_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, label, nk_true) then begin
        (state)^ := NK_PROPERTY_DRAG;
      end
      else begin
        if nk_input_is_mouse_click_down_in_rect(&in, NK_BUTTON_LEFT, &empty, nk_true) then begin
          (state)^ := NK_PROPERTY_DRAG;
        end;
      end;
    end;
  end;
  if ((state)^ = NK_PROPERTY_DRAG) then begin
    nk_drag_behavior(ws, &in, &property, variant, inc_per_pixel);
    if not Boolean(((ws)^ and NK_WIDGET_STATE_ACTIVED)) then begin
      (state)^ := NK_PROPERTY_DEFAULT;
    end;
  end;
end;

method nk_draw_property(&out: ^__struct_nk_command_buffer; style: ^__struct_nk_style_property; bounds: ^__struct_nk_rect; label: ^__struct_nk_rect; state: nk_flags; name: ^Byte; len: Int32; font: ^__struct_nk_user_font); public;
begin
  var text: __struct_nk_text;
  var background: ^__struct_nk_style_item;
  // select correct background and text color
  if (state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.active);
    text.text := (style)^.label_active;
  end
  else begin
    if (state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.hover);
      text.text := (style)^.label_hover;
    end
    else begin
      background := (@(style)^.normal);
      text.text := (style)^.label_normal;
    end;
  end;
  // draw background
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image(&out, (bounds)^, (@(background)^.data.image), nk_white);
    text.background := nk_rgba(0, 0, 0, 0);
  end
  else begin
    text.background := (background)^.data.color;
    nk_fill_rect(&out, (bounds)^, (style)^.rounding, (background)^.data.color);
    nk_stroke_rect(&out, (bounds)^, (style)^.rounding, (style)^.border, (background)^.data.color);
  end;
  // draw label
  text.padding := nk_vec2(0, 0);
  nk_widget_text(&out, (label)^, name, len, (@text), NK_TEXT_CENTERED, font);
end;

method nk_do_property(ws: ^nk_flags; &out: ^__struct_nk_command_buffer; &property: __struct_nk_rect; name: ^Byte; variant: ^__struct_nk_property_variant; inc_per_pixel: Single; buffer: ^Byte; len: ^Int32; state: ^Int32; cursor: ^Int32; select_begin: ^Int32; select_end: ^Int32; style: ^__struct_nk_style_property; filter: __enum_nk_property_filter; &in: ^__struct_nk_input; font: ^__struct_nk_user_font; text_edit: ^__struct_nk_text_edit; behavior: __enum_nk_button_behavior); public;
begin
  var filters: ^nk_plugin_filter := [nk_filter_decimal, nk_filter_float];
  var active: Int32;
  var &old: Int32;
  var num_len: Int32;
  var name_len: Int32;
  var string: array[0..64 - 1] of Byte;
  var size: Single;
  var dst: ^Byte := 0;
  var length: ^Int32;
  var left: __struct_nk_rect;
  var right: __struct_nk_rect;
  var label: __struct_nk_rect;
  var edit: __struct_nk_rect;
  var &empty: __struct_nk_rect;
  // left decrement button
  left.h := ((font)^.height / 2);
  left.w := left.h;
  left.x := ((&property.x + (style)^.border) + (style)^.padding.x);
  left.y := (((&property.y + (style)^.border) + (&property.h / 2.0)) - (left.h / 2));
  // text label
  name_len := nk_strlen(name);
  size := (font)^.width((font)^.userdata, (font)^.height, name, name_len);
  label.x := ((left.x + left.w) + (style)^.padding.x);
  label.w := (Single(size) + (2 * (style)^.padding.x));
  label.y := ((&property.y + (style)^.border) + (style)^.padding.y);
  label.h := (&property.h - ((2 * (style)^.border) + (2 * (style)^.padding.y)));
  // right increment button
  right.y := left.y;
  right.w := left.w;
  right.h := left.h;
  right.x := ((&property.x + &property.w) - (right.w + (style)^.padding.x));
  // edit
  if ((state)^ = NK_PROPERTY_EDIT) then begin
    size := (font)^.width((font)^.userdata, (font)^.height, buffer, (len)^);
    size := size + (style)^.edit.cursor_size;
    length := len;
    dst := buffer;
  end
  else begin
    begin
      case (variant)^.kind of
        NK_PROPERTY_INT: begin
            goto switch1_0;
          end;
        NK_PROPERTY_FLOAT: begin
            goto switch1_1;
          end;
        NK_PROPERTY_DOUBLE: begin
            goto switch1_2;
          end;
        else begin
          goto switch1_default;
        end;
      end;
      goto _breaklabelswitch1;
      switch1_default:;
      goto _breaklabelswitch1;
      switch1_0:;
      nk_itoa(string, (variant)^.value.i);
      num_len := nk_strlen(string);
      goto _breaklabelswitch1;
      switch1_1:;
      nk_dtoa(string, Double((variant)^.value.f));
      num_len := nk_string_float_limit(string, 2);
      goto _breaklabelswitch1;
      switch1_2:;
      nk_dtoa(string, (variant)^.value.d);
      num_len := nk_string_float_limit(string, 2);
      goto _breaklabelswitch1;
      _breaklabelswitch1:;
    end;
    size := (font)^.width((font)^.userdata, (font)^.height, string, num_len);
    dst := string;
    length := (@num_len);
  end;
  edit.w := (Single(size) + (2 * (style)^.padding.x));
  edit.w := (if (edit.w < (right.x - (label.x + label.w))) then (edit.w) else ((right.x - (label.x + label.w))));
  edit.x := (right.x - (edit.w + (style)^.padding.x));
  edit.y := (&property.y + (style)^.border);
  edit.h := (&property.h - (2 * (style)^.border));
  // empty left space activator
  &empty.w := (edit.x - (label.x + label.w));
  &empty.x := (label.x + label.w);
  &empty.y := &property.y;
  &empty.h := &property.h;
  // update property
  &old := ((state)^ = NK_PROPERTY_EDIT);
  nk_property_behavior(ws, &in, &property, label, edit, &empty, state, variant, inc_per_pixel);
  // draw property
  if (style)^.draw_begin then begin
    (style)^.draw_begin(&out, (style)^.userdata);
  end;
  nk_draw_property(&out, style, (@&property), (@label), (ws)^, name, name_len, font);
  if (style)^.draw_end then begin
    (style)^.draw_end(&out, (style)^.userdata);
  end;
  // execute right button
  if nk_do_button_symbol(ws, &out, left, (style)^.sym_left, behavior, (@(style)^.dec_button), &in, font) then begin
    begin
      case (variant)^.kind of
        NK_PROPERTY_INT: begin
            goto switch2_0;
          end;
        NK_PROPERTY_FLOAT: begin
            goto switch2_1;
          end;
        NK_PROPERTY_DOUBLE: begin
            goto switch2_2;
          end;
        else begin
          goto switch2_default;
        end;
      end;
      goto _breaklabelswitch2;
      switch2_default:;
      goto _breaklabelswitch2;
      switch2_0:;
      (variant)^.value.i := (if ((if (((variant)^.value.i - (variant)^.step.i) < (variant)^.max_value.i) then (((variant)^.value.i - (variant)^.step.i)) else ((variant)^.max_value.i)) < (variant)^.min_value.i) then ((variant)^.min_value.i) else ((if (((variant)^.value.i - (variant)^.step.i) < (variant)^.max_value.i) then (((variant)^.value.i - (variant)^.step.i)) else ((variant)^.max_value.i))));
      goto _breaklabelswitch2;
      switch2_1:;
      (variant)^.value.f := (if ((if (((variant)^.value.f - (variant)^.step.f) < (variant)^.max_value.f) then (((variant)^.value.f - (variant)^.step.f)) else ((variant)^.max_value.f)) < (variant)^.min_value.f) then ((variant)^.min_value.f) else ((if (((variant)^.value.f - (variant)^.step.f) < (variant)^.max_value.f) then (((variant)^.value.f - (variant)^.step.f)) else ((variant)^.max_value.f))));
      goto _breaklabelswitch2;
      switch2_2:;
      (variant)^.value.d := (if ((if (((variant)^.value.d - (variant)^.step.d) < (variant)^.max_value.d) then (((variant)^.value.d - (variant)^.step.d)) else ((variant)^.max_value.d)) < (variant)^.min_value.d) then ((variant)^.min_value.d) else ((if (((variant)^.value.d - (variant)^.step.d) < (variant)^.max_value.d) then (((variant)^.value.d - (variant)^.step.d)) else ((variant)^.max_value.d))));
      goto _breaklabelswitch2;
      _breaklabelswitch2:;
    end;
  end;
  // execute left button
  if nk_do_button_symbol(ws, &out, right, (style)^.sym_right, behavior, (@(style)^.inc_button), &in, font) then begin
    begin
      case (variant)^.kind of
        NK_PROPERTY_INT: begin
            goto switch3_0;
          end;
        NK_PROPERTY_FLOAT: begin
            goto switch3_1;
          end;
        NK_PROPERTY_DOUBLE: begin
            goto switch3_2;
          end;
        else begin
          goto switch3_default;
        end;
      end;
      goto _breaklabelswitch3;
      switch3_default:;
      goto _breaklabelswitch3;
      switch3_0:;
      (variant)^.value.i := (if ((if (((variant)^.value.i + (variant)^.step.i) < (variant)^.max_value.i) then (((variant)^.value.i + (variant)^.step.i)) else ((variant)^.max_value.i)) < (variant)^.min_value.i) then ((variant)^.min_value.i) else ((if (((variant)^.value.i + (variant)^.step.i) < (variant)^.max_value.i) then (((variant)^.value.i + (variant)^.step.i)) else ((variant)^.max_value.i))));
      goto _breaklabelswitch3;
      switch3_1:;
      (variant)^.value.f := (if ((if (((variant)^.value.f + (variant)^.step.f) < (variant)^.max_value.f) then (((variant)^.value.f + (variant)^.step.f)) else ((variant)^.max_value.f)) < (variant)^.min_value.f) then ((variant)^.min_value.f) else ((if (((variant)^.value.f + (variant)^.step.f) < (variant)^.max_value.f) then (((variant)^.value.f + (variant)^.step.f)) else ((variant)^.max_value.f))));
      goto _breaklabelswitch3;
      switch3_2:;
      (variant)^.value.d := (if ((if (((variant)^.value.d + (variant)^.step.d) < (variant)^.max_value.d) then (((variant)^.value.d + (variant)^.step.d)) else ((variant)^.max_value.d)) < (variant)^.min_value.d) then ((variant)^.min_value.d) else ((if (((variant)^.value.d + (variant)^.step.d) < (variant)^.max_value.d) then (((variant)^.value.d + (variant)^.step.d)) else ((variant)^.max_value.d))));
      goto _breaklabelswitch3;
      _breaklabelswitch3:;
    end;
  end;
  if (Boolean((&old ≠ NK_PROPERTY_EDIT)) and Boolean(((state)^ = NK_PROPERTY_EDIT))) then begin
    // property has been activated so setup buffer
    memcpy(buffer, dst, nk_size((length)^));
    (cursor)^ := nk_utf_len(buffer, (length)^);
    (len)^ := (length)^;
    length := len;
    dst := buffer;
    active := 0;
  end
  else begin
    active := ((state)^ = NK_PROPERTY_EDIT);
  end;
  // execute and run text edit field
  nk_textedit_clear_state(text_edit, NK_TEXT_EDIT_SINGLE_LINE, filters[filter]);
  (text_edit)^.active := Byte(active);
  (text_edit)^.string.len := (length)^;
  (text_edit)^.cursor := (if ((if ((cursor)^ < (length)^) then ((cursor)^) else ((length)^)) < 0) then (0) else ((if ((cursor)^ < (length)^) then ((cursor)^) else ((length)^))));
  (text_edit)^.select_start := (if ((if ((select_begin)^ < (length)^) then ((select_begin)^) else ((length)^)) < 0) then (0) else ((if ((select_begin)^ < (length)^) then ((select_begin)^) else ((length)^))));
  (text_edit)^.select_end := (if ((if ((select_end)^ < (length)^) then ((select_end)^) else ((length)^)) < 0) then (0) else ((if ((select_end)^ < (length)^) then ((select_end)^) else ((length)^))));
  (text_edit)^.string.buffer.allocated := nk_size((length)^);
  (text_edit)^.string.buffer.memory.size := 64;
  (text_edit)^.string.buffer.memory.ptr := dst;
  (text_edit)^.string.buffer.size := 64;
  (text_edit)^.mode := NK_TEXT_EDIT_MODE_INSERT;
  nk_do_edit(ws, &out, edit, (NK_EDIT_FIELD or NK_EDIT_AUTO_SELECT), filters[filter], text_edit, (@(style)^.edit), (if ((state)^ = NK_PROPERTY_EDIT) then (&in) else (0)), font);
  (length)^ := (text_edit)^.string.len;
  (cursor)^ := (text_edit)^.cursor;
  (select_begin)^ := (text_edit)^.select_start;
  (select_end)^ := (text_edit)^.select_end;
  if (Boolean((text_edit)^.active) and Boolean(nk_input_is_key_pressed(&in, NK_KEY_ENTER))) then begin
    (text_edit)^.active := nk_false;
  end;
  if (Boolean(active) and Boolean(not Boolean((text_edit)^.active))) then begin
    // property is now not active so convert edit text to value
    (state)^ := NK_PROPERTY_DEFAULT;
    buffer[(len)^] := 0;
    begin
      case (variant)^.kind of
        NK_PROPERTY_INT: begin
            goto switch4_0;
          end;
        NK_PROPERTY_FLOAT: begin
            goto switch4_1;
          end;
        NK_PROPERTY_DOUBLE: begin
            goto switch4_2;
          end;
        else begin
          goto switch4_default;
        end;
      end;
      goto _breaklabelswitch4;
      switch4_default:;
      goto _breaklabelswitch4;
      switch4_0:;
      (variant)^.value.i := nk_strtoi(buffer, 0);
      (variant)^.value.i := (if ((if ((variant)^.value.i < (variant)^.max_value.i) then ((variant)^.value.i) else ((variant)^.max_value.i)) < (variant)^.min_value.i) then ((variant)^.min_value.i) else ((if ((variant)^.value.i < (variant)^.max_value.i) then ((variant)^.value.i) else ((variant)^.max_value.i))));
      goto _breaklabelswitch4;
      switch4_1:;
      nk_string_float_limit(buffer, 2);
      (variant)^.value.f := nk_strtof(buffer, 0);
      (variant)^.value.f := (if ((if ((variant)^.value.f < (variant)^.max_value.f) then ((variant)^.value.f) else ((variant)^.max_value.f)) < (variant)^.min_value.f) then ((variant)^.min_value.f) else ((if ((variant)^.value.f < (variant)^.max_value.f) then ((variant)^.value.f) else ((variant)^.max_value.f))));
      goto _breaklabelswitch4;
      switch4_2:;
      nk_string_float_limit(buffer, 2);
      (variant)^.value.d := nk_strtod(buffer, 0);
      (variant)^.value.d := (if ((if ((variant)^.value.d < (variant)^.max_value.d) then ((variant)^.value.d) else ((variant)^.max_value.d)) < (variant)^.min_value.d) then ((variant)^.min_value.d) else ((if ((variant)^.value.d < (variant)^.max_value.d) then ((variant)^.value.d) else ((variant)^.max_value.d))));
      goto _breaklabelswitch4;
      _breaklabelswitch4:;
    end;
  end;
end;

method nk_property_variant_int(value: Int32; min_value: Int32; max_value: Int32; &step: Int32): __struct_nk_property_variant; public;
begin
  var &result: __struct_nk_property_variant;
  &result.kind := NK_PROPERTY_INT;
  &result.value.i := value;
  &result.min_value.i := min_value;
  &result.max_value.i := max_value;
  &result.step.i := &step;
  exit &result;
end;

method nk_property_variant_float(value: Single; min_value: Single; max_value: Single; &step: Single): __struct_nk_property_variant; public;
begin
  var &result: __struct_nk_property_variant;
  &result.kind := NK_PROPERTY_FLOAT;
  &result.value.f := value;
  &result.min_value.f := min_value;
  &result.max_value.f := max_value;
  &result.step.f := &step;
  exit &result;
end;

method nk_property_variant_double(value: Double; min_value: Double; max_value: Double; &step: Double): __struct_nk_property_variant; public;
begin
  var &result: __struct_nk_property_variant;
  &result.kind := NK_PROPERTY_DOUBLE;
  &result.value.d := value;
  &result.min_value.d := min_value;
  &result.max_value.d := max_value;
  &result.step.d := &step;
  exit &result;
end;

method nk_property(ctx: ^__struct_nk_context; name: ^Byte; variant: ^__struct_nk_property_variant; inc_per_pixel: Single; filter: __enum_nk_property_filter); public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var &in: ^__struct_nk_input;
  var style: ^__struct_nk_style;
  var bounds: __struct_nk_rect;
  var s: __enum_nk_widget_layout_states;
  var state: ^Int32 := 0;
  var hash: nk_hash := 0;
  var buffer: ^Byte := 0;
  var len: ^Int32 := 0;
  var cursor: ^Int32 := 0;
  var select_begin: ^Int32 := 0;
  var select_end: ^Int32 := 0;
  var old_state: Int32;
  var dummy_buffer: array[0..64 - 1] of Byte;
  var dummy_state: Int32 := NK_PROPERTY_DEFAULT;
  var dummy_length: Int32 := 0;
  var dummy_cursor: Int32 := 0;
  var dummy_select_begin: Int32 := 0;
  var dummy_select_end: Int32 := 0;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  win := (ctx)^.current;
  layout := (win)^.layout;
  style := (@(ctx)^.style);
  s := nk_widget((@bounds), ctx);
  if not Boolean(s) then begin
    exit;
  end;
  // calculate hash from name
  if (name[0] = 35) then begin
    hash := nk_murmur_hash(name, Int32(nk_strlen(name)), (() -> begin
      var _tmp0 := (win)^.property.seq;
      (win)^.property.seq := _tmp0 + 1;
      exit _tmp0;
    end)());
    name := name + 1;
  end
  else begin
    hash := nk_murmur_hash(name, Int32(nk_strlen(name)), 42);
  end;
  // check if property is currently hot item
  if (Boolean((win)^.property.active) and Boolean((hash = (win)^.property.name))) then begin
    buffer := (win)^.property.buffer;
    len := (@(win)^.property.length);
    cursor := (@(win)^.property.cursor);
    state := (@(win)^.property.state);
    select_begin := (@(win)^.property.select_start);
    select_end := (@(win)^.property.select_end);
  end
  else begin
    buffer := dummy_buffer;
    len := (@dummy_length);
    cursor := (@dummy_cursor);
    state := (@dummy_state);
    select_begin := (@dummy_select_begin);
    select_end := (@dummy_select_end);
  end;
  // execute property widget
  old_state := (state)^;
  (ctx)^.text_edit.clip := (ctx)^.clip;
  &in := (if (Boolean((Boolean((s = NK_WIDGET_ROM)) and Boolean(not Boolean((win)^.property.active)))) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  nk_do_property((@(ctx)^.last_widget_state), (@(win)^.buffer), bounds, name, variant, inc_per_pixel, buffer, len, state, cursor, select_begin, select_end, (@(style)^.property), filter, &in, (style)^.font, (@(ctx)^.text_edit), (ctx)^.button_behavior);
  if (Boolean((Boolean(&in) and Boolean(((state)^ ≠ NK_PROPERTY_DEFAULT)))) and Boolean(not Boolean((win)^.property.active))) then begin
    // current property is now hot
    (win)^.property.active := 1;
    memcpy((win)^.property.buffer, buffer, nk_size((len)^));
    (win)^.property.length := (len)^;
    (win)^.property.cursor := (cursor)^;
    (win)^.property.state := (state)^;
    (win)^.property.name := hash;
    (win)^.property.select_start := (select_begin)^;
    (win)^.property.select_end := (select_end)^;
    if ((state)^ = NK_PROPERTY_DRAG) then begin
      (ctx)^.input.mouse.grab := nk_true;
      (ctx)^.input.mouse.grabbed := nk_true;
    end;
  end;
  // check if previously active property is now inactive
  if (Boolean(((state)^ = NK_PROPERTY_DEFAULT)) and Boolean((old_state ≠ NK_PROPERTY_DEFAULT))) then begin
    if (old_state = NK_PROPERTY_DRAG) then begin
      (ctx)^.input.mouse.grab := nk_false;
      (ctx)^.input.mouse.grabbed := nk_false;
      (ctx)^.input.mouse.ungrab := nk_true;
    end;
    (win)^.property.select_start := 0;
    (win)^.property.select_end := 0;
    (win)^.property.active := 0;
  end;
end;

method nk_property_int(ctx: ^__struct_nk_context; name: ^Byte; min: Int32; val: ^Int32; max: Int32; &step: Int32; inc_per_pixel: Single); public;
begin
  var variant: __struct_nk_property_variant;
  assert(ctx);
  assert(name);
  assert(val);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(name)))) or Boolean(not Boolean(val))) then begin
    exit;
  end;
  variant := nk_property_variant_int((val)^, min, max, &step);
  nk_property(ctx, name, (@variant), inc_per_pixel, NK_FILTER_INT);
  (val)^ := variant.value.i;
end;

method nk_property_float(ctx: ^__struct_nk_context; name: ^Byte; min: Single; val: ^Single; max: Single; &step: Single; inc_per_pixel: Single); public;
begin
  var variant: __struct_nk_property_variant;
  assert(ctx);
  assert(name);
  assert(val);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(name)))) or Boolean(not Boolean(val))) then begin
    exit;
  end;
  variant := nk_property_variant_float((val)^, min, max, &step);
  nk_property(ctx, name, (@variant), inc_per_pixel, NK_FILTER_FLOAT);
  (val)^ := variant.value.f;
end;

method nk_property_double(ctx: ^__struct_nk_context; name: ^Byte; min: Double; val: ^Double; max: Double; &step: Double; inc_per_pixel: Single); public;
begin
  var variant: __struct_nk_property_variant;
  assert(ctx);
  assert(name);
  assert(val);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(name)))) or Boolean(not Boolean(val))) then begin
    exit;
  end;
  variant := nk_property_variant_double((val)^, min, max, &step);
  nk_property(ctx, name, (@variant), inc_per_pixel, NK_FILTER_FLOAT);
  (val)^ := variant.value.d;
end;

method nk_propertyi(ctx: ^__struct_nk_context; name: ^Byte; min: Int32; val: Int32; max: Int32; &step: Int32; inc_per_pixel: Single): Int32; public;
begin
  var variant: __struct_nk_property_variant;
  assert(ctx);
  assert(name);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(name))) then begin
    exit val;
  end;
  variant := nk_property_variant_int(val, min, max, &step);
  nk_property(ctx, name, (@variant), inc_per_pixel, NK_FILTER_INT);
  val := variant.value.i;
  exit val;
end;

method nk_propertyf(ctx: ^__struct_nk_context; name: ^Byte; min: Single; val: Single; max: Single; &step: Single; inc_per_pixel: Single): Single; public;
begin
  var variant: __struct_nk_property_variant;
  assert(ctx);
  assert(name);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(name))) then begin
    exit val;
  end;
  variant := nk_property_variant_float(val, min, max, &step);
  nk_property(ctx, name, (@variant), inc_per_pixel, NK_FILTER_FLOAT);
  val := variant.value.f;
  exit val;
end;

method nk_propertyd(ctx: ^__struct_nk_context; name: ^Byte; min: Double; val: Double; max: Double; &step: Double; inc_per_pixel: Single): Double; public;
begin
  var variant: __struct_nk_property_variant;
  assert(ctx);
  assert(name);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(name))) then begin
    exit val;
  end;
  variant := nk_property_variant_double(val, min, max, &step);
  nk_property(ctx, name, (@variant), inc_per_pixel, NK_FILTER_FLOAT);
  val := variant.value.d;
  exit val;
end;

// ==============================================================
//  *
//  *                          CHART
//  *
//  * ===============================================================
method nk_chart_begin_colored(ctx: ^__struct_nk_context; &type: __enum_nk_chart_type; color: __struct_nk_color; highlight: __struct_nk_color; count: Int32; min_value: Single; max_value: Single): Int32; public;
begin
  var win: ^__struct_nk_window;
  var chart: ^__struct_nk_chart;
  var config: ^__struct_nk_style;
  var style: ^__struct_nk_style_chart;
  var background: ^__struct_nk_style_item;
  var bounds: __struct_nk_rect := [0, 0, 0, 0];
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  if not Boolean(nk_widget((@bounds), ctx)) then begin
    chart := (@(((ctx)^.current)^.layout)^.chart);
    nk_zero(chart, sizeOf((chart)^));
    exit 0;
  end;
  win := (ctx)^.current;
  config := (@(ctx)^.style);
  chart := (@((win)^.layout)^.chart);
  style := (@(config)^.chart);
  // setup basic generic chart
  nk_zero(chart, sizeOf((chart)^));
  (chart)^.x := (bounds.x + (style)^.padding.x);
  (chart)^.y := (bounds.y + (style)^.padding.y);
  (chart)^.w := (bounds.w - (2 * (style)^.padding.x));
  (chart)^.h := (bounds.h - (2 * (style)^.padding.y));
  (chart)^.w := (if ((chart)^.w < (2 * (style)^.padding.x)) then ((2 * (style)^.padding.x)) else ((chart)^.w));
  (chart)^.h := (if ((chart)^.h < (2 * (style)^.padding.y)) then ((2 * (style)^.padding.y)) else ((chart)^.h));
  // add first slot into chart
  begin
    var slot: ^__struct_nk_chart_slot := (@(chart)^.slots[(() -> begin
      var _tmp0 := (chart)^.slot;
      (chart)^.slot := _tmp0 + 1;
      exit _tmp0;
    end)()]);
    (slot)^.type := &type;
    (slot)^.count := count;
    (slot)^.color := color;
    (slot)^.highlight := highlight;
    (slot)^.min := (if (min_value < max_value) then (min_value) else (max_value));
    (slot)^.max := (if (min_value < max_value) then (max_value) else (min_value));
    (slot)^.range := ((slot)^.max - (slot)^.min);
  end;
  // draw chart background
  background := (@(style)^.background);
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image((@(win)^.buffer), bounds, (@(background)^.data.image), nk_white);
  end
  else begin
    nk_fill_rect((@(win)^.buffer), bounds, (style)^.rounding, (style)^.border_color);
    nk_fill_rect((@(win)^.buffer), nk_shrink_rect(bounds, (style)^.border), (style)^.rounding, (style)^.background.data.color);
  end;
  exit 1;
end;

method nk_chart_begin(ctx: ^__struct_nk_context; &type: __enum_nk_chart_type; count: Int32; min_value: Single; max_value: Single): Int32; public;
begin
  exit nk_chart_begin_colored(ctx, &type, (ctx)^.style.chart.color, (ctx)^.style.chart.selected_color, count, min_value, max_value);
end;

method nk_chart_add_slot_colored(ctx: ^__struct_nk_context; &type: __enum_nk_chart_type; color: __struct_nk_color; highlight: __struct_nk_color; count: Int32; min_value: Single; max_value: Single); public;
begin
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  assert(((((ctx)^.current)^.layout)^.chart.slot < 4));
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit;
  end;
  if ((((ctx)^.current)^.layout)^.chart.slot ≥ 4) then begin
    exit;
  end;
  // add another slot into the graph
  begin
    var chart: ^__struct_nk_chart := (@(((ctx)^.current)^.layout)^.chart);
    var slot: ^__struct_nk_chart_slot := (@(chart)^.slots[(() -> begin
      var _tmp0 := (chart)^.slot;
      (chart)^.slot := _tmp0 + 1;
      exit _tmp0;
    end)()]);
    (slot)^.type := &type;
    (slot)^.count := count;
    (slot)^.color := color;
    (slot)^.highlight := highlight;
    (slot)^.min := (if (min_value < max_value) then (min_value) else (max_value));
    (slot)^.max := (if (min_value < max_value) then (max_value) else (min_value));
    (slot)^.range := ((slot)^.max - (slot)^.min);
  end;
end;

method nk_chart_add_slot(ctx: ^__struct_nk_context; &type: __enum_nk_chart_type; count: Int32; min_value: Single; max_value: Single); public;
begin
  nk_chart_add_slot_colored(ctx, &type, (ctx)^.style.chart.color, (ctx)^.style.chart.selected_color, count, min_value, max_value);
end;

method nk_chart_push_line(ctx: ^__struct_nk_context; win: ^__struct_nk_window; g: ^__struct_nk_chart; value: Single; slot: Int32): nk_flags; public;
begin
  var layout: ^__struct_nk_panel := (win)^.layout;
  var i: ^__struct_nk_input := (@(ctx)^.input);
  var &out: ^__struct_nk_command_buffer := (@(win)^.buffer);
  var ret: nk_flags := 0;
  var cur: __struct_nk_vec2;
  var bounds: __struct_nk_rect;
  var color: __struct_nk_color;
  var &step: Single;
  var range: Single;
  var ratio: Single;
  assert((Boolean((slot ≥ 0)) and Boolean((slot < 4))));
  &step := ((g)^.w / Single((g)^.slots[slot].count));
  range := ((g)^.slots[slot].max - (g)^.slots[slot].min);
  ratio := ((value - (g)^.slots[slot].min) / range);
  if ((g)^.slots[slot].index = 0) then begin
    // first data point does not have a connection
    (g)^.slots[slot].last.x := (g)^.x;
    (g)^.slots[slot].last.y := (((g)^.y + (g)^.h) - (ratio * Single((g)^.h)));
    bounds.x := ((g)^.slots[slot].last.x - 2);
    bounds.y := ((g)^.slots[slot].last.y - 2);
    bounds.w := (() -> begin
      var _tmp0 := 4;
      bounds.h := _tmp0;
      exit _tmp0;
    end)();
    color := (g)^.slots[slot].color;
    if (Boolean(not Boolean(((layout)^.flags and NK_WINDOW_ROM))) and Boolean((Boolean((Boolean((((g)^.slots[slot].last.x - 3) ≤ (i)^.mouse.pos.x)) and Boolean(((i)^.mouse.pos.x < (((g)^.slots[slot].last.x - 3) + 6))))) and Boolean((Boolean((((g)^.slots[slot].last.y - 3) ≤ (i)^.mouse.pos.y)) and Boolean(((i)^.mouse.pos.y < (((g)^.slots[slot].last.y - 3) + 6)))))))) then begin
      ret := (if nk_input_is_mouse_hovering_rect(i, bounds) then (NK_CHART_HOVERING) else (0));
      ret := ret or (if (Boolean((i)^.mouse.buttons[NK_BUTTON_LEFT].down) and Boolean((i)^.mouse.buttons[NK_BUTTON_LEFT].clicked)) then (NK_CHART_CLICKED) else (0));
      color := (g)^.slots[slot].highlight;
    end;
    nk_fill_rect(&out, bounds, 0, color);
    (g)^.slots[slot].index := (g)^.slots[slot].index + 1;
    exit ret;
  end;
  // draw a line between the last data point and the new one
  color := (g)^.slots[slot].color;
  cur.x := ((g)^.x + Single((&step * Single((g)^.slots[slot].index))));
  cur.y := (((g)^.y + (g)^.h) - (ratio * Single((g)^.h)));
  nk_stroke_line(&out, (g)^.slots[slot].last.x, (g)^.slots[slot].last.y, cur.x, cur.y, 1.0, color);
  bounds.x := (cur.x - 3);
  bounds.y := (cur.y - 3);
  bounds.w := (() -> begin
    var _tmp3 := 6;
    bounds.h := _tmp3;
    exit _tmp3;
  end)();
  // user selection of current data point
  if not Boolean(((layout)^.flags and NK_WINDOW_ROM)) then begin
    if nk_input_is_mouse_hovering_rect(i, bounds) then begin
      ret := NK_CHART_HOVERING;
      ret := ret or (if (Boolean(not Boolean((i)^.mouse.buttons[NK_BUTTON_LEFT].down)) and Boolean((i)^.mouse.buttons[NK_BUTTON_LEFT].clicked)) then (NK_CHART_CLICKED) else (0));
      color := (g)^.slots[slot].highlight;
    end;
  end;
  nk_fill_rect(&out, nk_rect((cur.x - 2), (cur.y - 2), 4, 4), 0, color);
  // save current data point position
  (g)^.slots[slot].last.x := cur.x;
  (g)^.slots[slot].last.y := cur.y;
  (g)^.slots[slot].index := (g)^.slots[slot].index + 1;
  exit ret;
end;

method nk_chart_push_column(ctx: ^__struct_nk_context; win: ^__struct_nk_window; chart: ^__struct_nk_chart; value: Single; slot: Int32): nk_flags; public;
begin
  var &out: ^__struct_nk_command_buffer := (@(win)^.buffer);
  var &in: ^__struct_nk_input := (@(ctx)^.input);
  var layout: ^__struct_nk_panel := (win)^.layout;
  var ratio: Single;
  var ret: nk_flags := 0;
  var color: __struct_nk_color;
  var item: __struct_nk_rect := [0, 0, 0, 0];
  assert((Boolean((slot ≥ 0)) and Boolean((slot < 4))));
  if ((chart)^.slots[slot].index ≥ (chart)^.slots[slot].count) then begin
    exit nk_false;
  end;
  if (chart)^.slots[slot].count then begin
    var padding: Single := Single(((chart)^.slots[slot].count - 1));
    item.w := (((chart)^.w - padding) / Single((chart)^.slots[slot].count));
  end;
  // calculate bounds of current bar chart entry
  color := (chart)^.slots[slot].color;
  begin
  end;
  item.h := ((chart)^.h * (if ((value / (chart)^.slots[slot].range) < 0) then (-(value / (chart)^.slots[slot].range)) else ((value / (chart)^.slots[slot].range))));
  if (value ≥ 0) then begin
    ratio := ((value + (if ((chart)^.slots[slot].min < 0) then (-(chart)^.slots[slot].min) else ((chart)^.slots[slot].min))) / (if ((chart)^.slots[slot].range < 0) then (-(chart)^.slots[slot].range) else ((chart)^.slots[slot].range)));
    item.y := (((chart)^.y + (chart)^.h) - ((chart)^.h * ratio));
  end
  else begin
    ratio := ((value - (chart)^.slots[slot].max) / (chart)^.slots[slot].range);
    item.y := (((chart)^.y + ((chart)^.h * (if (ratio < 0) then (-ratio) else (ratio)))) - item.h);
  end;
  item.x := ((chart)^.x + (Single((chart)^.slots[slot].index) * item.w));
  item.x := (item.x + Single((chart)^.slots[slot].index));
  // user chart bar selection
  if (Boolean(not Boolean(((layout)^.flags and NK_WINDOW_ROM))) and Boolean((Boolean((Boolean((item.x ≤ (&in)^.mouse.pos.x)) and Boolean(((&in)^.mouse.pos.x < (item.x + item.w))))) and Boolean((Boolean((item.y ≤ (&in)^.mouse.pos.y)) and Boolean(((&in)^.mouse.pos.y < (item.y + item.h)))))))) then begin
    ret := NK_CHART_HOVERING;
    ret := ret or (if (Boolean(not Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].down)) and Boolean((&in)^.mouse.buttons[NK_BUTTON_LEFT].clicked)) then (NK_CHART_CLICKED) else (0));
    color := (chart)^.slots[slot].highlight;
  end;
  nk_fill_rect(&out, item, 0, color);
  (chart)^.slots[slot].index := (chart)^.slots[slot].index + 1;
  exit ret;
end;

method nk_chart_push_slot(ctx: ^__struct_nk_context; value: Single; slot: Int32): nk_flags; public;
begin
  var &flags: nk_flags;
  var win: ^__struct_nk_window;
  assert(ctx);
  assert((ctx)^.current);
  assert((Boolean((slot ≥ 0)) and Boolean((slot < 4))));
  assert((slot < (((ctx)^.current)^.layout)^.chart.slot));
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean((slot ≥ 4))) then begin
    exit nk_false;
  end;
  if (slot ≥ (((ctx)^.current)^.layout)^.chart.slot) then begin
    exit nk_false;
  end;
  win := (ctx)^.current;
  if (((win)^.layout)^.chart.slot < slot) then begin
    exit nk_false;
  end;
  begin
    case ((win)^.layout)^.chart.slots[slot].type of
      NK_CHART_LINES: begin
          goto switch0_0;
        end;
      NK_CHART_COLUMN: begin
          goto switch0_1;
        end;
      NK_CHART_MAX: begin
          goto switch0_2;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    &flags := nk_chart_push_line(ctx, win, (@((win)^.layout)^.chart), value, slot);
    goto _breaklabelswitch0;
    switch0_1:;
    &flags := nk_chart_push_column(ctx, win, (@((win)^.layout)^.chart), value, slot);
    goto _breaklabelswitch0;
    switch0_default:;
    switch0_2:;
    &flags := 0;
    _breaklabelswitch0:;
  end;
  exit &flags;
end;

method nk_chart_push(ctx: ^__struct_nk_context; value: Single): nk_flags; public;
begin
  exit nk_chart_push_slot(ctx, value, 0);
end;

method nk_chart_end(ctx: ^__struct_nk_context); public;
begin
  var win: ^__struct_nk_window;
  var chart: ^__struct_nk_chart;
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  win := (ctx)^.current;
  chart := (@((win)^.layout)^.chart);
  memset(chart, 0, sizeOf((chart)^));
  exit;
end;

method nk_plot(ctx: ^__struct_nk_context; &type: __enum_nk_chart_type; values: ^Single; count: Int32; offset: Int32); public;
begin
  var i: Int32 := 0;
  var min_value: Single;
  var max_value: Single;
  assert(ctx);
  assert(values);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(values)))) or Boolean(not Boolean(count))) then begin
    exit;
  end;
  min_value := values[offset];
  max_value := values[offset];
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      min_value := (if (values[(i + offset)] < min_value) then (values[(i + offset)]) else (min_value));
      max_value := (if (values[(i + offset)] < max_value) then (max_value) else (values[(i + offset)]));
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  if nk_chart_begin(ctx, &type, count, min_value, max_value) then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < count) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      nk_chart_push(ctx, values[(i + offset)]);
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
    nk_chart_end(ctx);
  end;
end;

method nk_plot_function(ctx: ^__struct_nk_context; &type: __enum_nk_chart_type; userdata: ^Void; value_getter: __fnptrtype23; count: Int32; offset: Int32); public;
begin
  var i: Int32 := 0;
  var min_value: Single;
  var max_value: Single;
  assert(ctx);
  assert(value_getter);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(value_getter)))) or Boolean(not Boolean(count))) then begin
    exit;
  end;
  max_value := (() -> begin
    var _tmp0 := value_getter(userdata, offset);
    min_value := _tmp0;
    exit _tmp0;
  end)();
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < count) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    begin
      var value: Single := value_getter(userdata, (i + offset));
      min_value := (if (value < min_value) then (value) else (min_value));
      max_value := (if (value < max_value) then (max_value) else (value));
    end;
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  if nk_chart_begin(ctx, &type, count, min_value, max_value) then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel2:;
      if (i < count) then begin
      end
      else begin
        goto _breaklabel2;
      end;
      // for loop: body
      nk_chart_push(ctx, value_getter(userdata, (i + offset)));
      _continuelabel2:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel2;
      // for loop: break
      _breaklabel2:;
    end;
    nk_chart_end(ctx);
  end;
end;

// ==============================================================
//  *
//  *                          COLOR PICKER
//  *
//  * ===============================================================
method nk_color_picker_behavior(state: ^nk_flags; bounds: ^__struct_nk_rect; matrix: ^__struct_nk_rect; hue_bar: ^__struct_nk_rect; alpha_bar: ^__struct_nk_rect; color: ^__struct_nk_colorf; &in: ^__struct_nk_input): Int32; public;
begin
  var hsva: array[0..4 - 1] of Single;
  var value_changed: Int32 := 0;
  var hsv_changed: Int32 := 0;
  assert(state);
  assert(matrix);
  assert(hue_bar);
  assert(color);
  // color matrix
  nk_colorf_hsva_fv(hsva, (color)^);
  if nk_button_behavior(state, (matrix)^, &in, NK_BUTTON_REPEATER) then begin
    hsva[1] := (if (0 < (if (1.0 < (((&in)^.mouse.pos.x - (matrix)^.x) / ((matrix)^.w - 1))) then (1.0) else ((((&in)^.mouse.pos.x - (matrix)^.x) / ((matrix)^.w - 1))))) then ((if (1.0 < (((&in)^.mouse.pos.x - (matrix)^.x) / ((matrix)^.w - 1))) then (1.0) else ((((&in)^.mouse.pos.x - (matrix)^.x) / ((matrix)^.w - 1))))) else (0));
    hsva[2] := (1.0 - (if (0 < (if (1.0 < (((&in)^.mouse.pos.y - (matrix)^.y) / ((matrix)^.h - 1))) then (1.0) else ((((&in)^.mouse.pos.y - (matrix)^.y) / ((matrix)^.h - 1))))) then ((if (1.0 < (((&in)^.mouse.pos.y - (matrix)^.y) / ((matrix)^.h - 1))) then (1.0) else ((((&in)^.mouse.pos.y - (matrix)^.y) / ((matrix)^.h - 1))))) else (0)));
    value_changed := (() -> begin
      var _tmp0 := 1;
      hsv_changed := _tmp0;
      exit _tmp0;
    end)();
  end;
  // hue bar
  if nk_button_behavior(state, (hue_bar)^, &in, NK_BUTTON_REPEATER) then begin
    hsva[0] := (if (0 < (if (1.0 < (((&in)^.mouse.pos.y - (hue_bar)^.y) / ((hue_bar)^.h - 1))) then (1.0) else ((((&in)^.mouse.pos.y - (hue_bar)^.y) / ((hue_bar)^.h - 1))))) then ((if (1.0 < (((&in)^.mouse.pos.y - (hue_bar)^.y) / ((hue_bar)^.h - 1))) then (1.0) else ((((&in)^.mouse.pos.y - (hue_bar)^.y) / ((hue_bar)^.h - 1))))) else (0));
    value_changed := (() -> begin
      var _tmp1 := 1;
      hsv_changed := _tmp1;
      exit _tmp1;
    end)();
  end;
  // alpha bar
  if alpha_bar then begin
    if nk_button_behavior(state, (alpha_bar)^, &in, NK_BUTTON_REPEATER) then begin
      hsva[3] := (1.0 - (if (0 < (if (1.0 < (((&in)^.mouse.pos.y - (alpha_bar)^.y) / ((alpha_bar)^.h - 1))) then (1.0) else ((((&in)^.mouse.pos.y - (alpha_bar)^.y) / ((alpha_bar)^.h - 1))))) then ((if (1.0 < (((&in)^.mouse.pos.y - (alpha_bar)^.y) / ((alpha_bar)^.h - 1))) then (1.0) else ((((&in)^.mouse.pos.y - (alpha_bar)^.y) / ((alpha_bar)^.h - 1))))) else (0)));
      value_changed := 1;
    end;
  end;
  if ((state)^ and NK_WIDGET_STATE_MODIFIED) then begin
    (state)^ := (NK_WIDGET_STATE_INACTIVE or NK_WIDGET_STATE_MODIFIED);
  end
  else begin
    (state)^ := NK_WIDGET_STATE_INACTIVE;
  end;
  begin
  end;
  if hsv_changed then begin
    (color)^ := nk_hsva_colorfv(hsva);
    (state)^ := NK_WIDGET_STATE_ACTIVE;
  end;
  if value_changed then begin
    (color)^.a := hsva[3];
    (state)^ := NK_WIDGET_STATE_ACTIVE;
  end;
  // set color picker widget state
  if nk_input_is_mouse_hovering_rect(&in, (bounds)^) then begin
    (state)^ := NK_WIDGET_STATE_HOVERED;
  end;
  if (Boolean(((state)^ and NK_WIDGET_STATE_HOVER)) and Boolean(not Boolean(nk_input_is_mouse_prev_hovering_rect(&in, (bounds)^)))) then begin
    (state)^ := (state)^ or NK_WIDGET_STATE_ENTERED;
  end
  else begin
    if nk_input_is_mouse_prev_hovering_rect(&in, (bounds)^) then begin
      (state)^ := (state)^ or NK_WIDGET_STATE_LEFT;
    end;
  end;
  exit value_changed;
end;

method nk_draw_color_picker(o: ^__struct_nk_command_buffer; matrix: ^__struct_nk_rect; hue_bar: ^__struct_nk_rect; alpha_bar: ^__struct_nk_rect; col: __struct_nk_colorf); public;
begin
  var black: __struct_nk_color := [0, 0, 0, 255];
  var white: __struct_nk_color := [255, 255, 255, 255];
  var black_trans: __struct_nk_color := [0, 0, 0, 0];
  var crosshair_size: Single := 7.0;
  var temp: __struct_nk_color;
  var hsva: array[0..4 - 1] of Single;
  var line_y: Single;
  var i: Int32;
  assert(o);
  assert(matrix);
  assert(hue_bar);
  // draw hue bar
  nk_colorf_hsva_fv(hsva, col);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < 6) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var hue_colors: ^__struct_nk_color := [[255, 0, 0, 255], [255, 255, 0, 255], [0, 255, 0, 255], [0, 255, 255, 255], [0, 0, 255, 255], [255, 0, 255, 255], [255, 0, 0, 255]];
      nk_fill_rect_multi_color(o, nk_rect((hue_bar)^.x, (((hue_bar)^.y + (Single(i) * ((hue_bar)^.h / 6.0))) + 0.5), (hue_bar)^.w, (((hue_bar)^.h / 6.0) + 0.5)), hue_colors[i], hue_colors[i], hue_colors[(i + 1)], hue_colors[(i + 1)]);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  line_y := Single(Int32((((hue_bar)^.y + (hsva[0] * (matrix)^.h)) + 0.5)));
  nk_stroke_line(o, ((hue_bar)^.x - 1), line_y, (((hue_bar)^.x + (hue_bar)^.w) + 2), line_y, 1, nk_rgb(255, 255, 255));
  // draw alpha bar
  if alpha_bar then begin
    var alpha: Single := (if (0 < (if (1.0 < col.a) then (1.0) else (col.a))) then ((if (1.0 < col.a) then (1.0) else (col.a))) else (0));
    line_y := Single(Int32((((alpha_bar)^.y + ((1.0 - alpha) * (matrix)^.h)) + 0.5)));
    nk_fill_rect_multi_color(o, (alpha_bar)^, white, white, black, black);
    nk_stroke_line(o, ((alpha_bar)^.x - 1), line_y, (((alpha_bar)^.x + (alpha_bar)^.w) + 2), line_y, 1, nk_rgb(255, 255, 255));
  end;
  // draw color matrix
  temp := nk_hsv_f(hsva[0], 1.0, 1.0);
  nk_fill_rect_multi_color(o, (matrix)^, white, temp, temp, white);
  nk_fill_rect_multi_color(o, (matrix)^, black_trans, black_trans, black, black);
  // draw cross-hair
  begin
    var p: __struct_nk_vec2;
    var S: Single := hsva[1];
    var V: Single := hsva[2];
    p.x := Single(Int32(((matrix)^.x + (S * (matrix)^.w))));
    p.y := Single(Int32(((matrix)^.y + ((1.0 - V) * (matrix)^.h))));
    nk_stroke_line(o, (p.x - crosshair_size), p.y, (p.x - 2), p.y, 1.0, white);
    nk_stroke_line(o, ((p.x + crosshair_size) + 1), p.y, (p.x + 3), p.y, 1.0, white);
    nk_stroke_line(o, p.x, ((p.y + crosshair_size) + 1), p.x, (p.y + 3), 1.0, white);
    nk_stroke_line(o, p.x, (p.y - crosshair_size), p.x, (p.y - 2), 1.0, white);
  end;
end;

method nk_do_color_picker(state: ^nk_flags; &out: ^__struct_nk_command_buffer; col: ^__struct_nk_colorf; fmt: __enum_nk_color_format; bounds: __struct_nk_rect; padding: __struct_nk_vec2; &in: ^__struct_nk_input; font: ^__struct_nk_user_font): Int32; public;
begin
  var ret: Int32 := 0;
  var matrix: __struct_nk_rect;
  var hue_bar: __struct_nk_rect;
  var alpha_bar: __struct_nk_rect;
  var bar_w: Single;
  assert(&out);
  assert(col);
  assert(state);
  assert(font);
  if (Boolean((Boolean((Boolean(not Boolean(&out)) or Boolean(not Boolean(col)))) or Boolean(not Boolean(state)))) or Boolean(not Boolean(font))) then begin
    exit ret;
  end;
  bar_w := (font)^.height;
  bounds.x := bounds.x + padding.x;
  bounds.y := bounds.y + padding.x;
  bounds.w := bounds.w - (2 * padding.x);
  bounds.h := bounds.h - (2 * padding.y);
  matrix.x := bounds.x;
  matrix.y := bounds.y;
  matrix.h := bounds.h;
  matrix.w := (bounds.w - ((3 * padding.x) + (2 * bar_w)));
  hue_bar.w := bar_w;
  hue_bar.y := bounds.y;
  hue_bar.h := matrix.h;
  hue_bar.x := ((matrix.x + matrix.w) + padding.x);
  alpha_bar.x := ((hue_bar.x + hue_bar.w) + padding.x);
  alpha_bar.y := bounds.y;
  alpha_bar.w := bar_w;
  alpha_bar.h := matrix.h;
  ret := nk_color_picker_behavior(state, (@bounds), (@matrix), (@hue_bar), (if (fmt = NK_RGBA) then ((@alpha_bar)) else (0)), col, &in);
  nk_draw_color_picker(&out, (@matrix), (@hue_bar), (if (fmt = NK_RGBA) then ((@alpha_bar)) else (0)), (col)^);
  exit ret;
end;

method nk_color_pick(ctx: ^__struct_nk_context; color: ^__struct_nk_colorf; fmt: __enum_nk_color_format): Int32; public;
begin
  var win: ^__struct_nk_window;
  var layout: ^__struct_nk_panel;
  var config: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var state: __enum_nk_widget_layout_states;
  var bounds: __struct_nk_rect;
  assert(ctx);
  assert(color);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(color))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  config := (@(ctx)^.style);
  layout := (win)^.layout;
  state := nk_widget((@bounds), ctx);
  if not Boolean(state) then begin
    exit 0;
  end;
  &in := (if (Boolean((state = NK_WIDGET_ROM)) or Boolean(((layout)^.flags and NK_WINDOW_ROM))) then (0) else ((@(ctx)^.input)));
  exit nk_do_color_picker((@(ctx)^.last_widget_state), (@(win)^.buffer), color, fmt, bounds, nk_vec2(0, 0), &in, (config)^.font);
end;

method nk_color_picker(ctx: ^__struct_nk_context; color: __struct_nk_colorf; fmt: __enum_nk_color_format): __struct_nk_colorf; public;
begin
  nk_color_pick(ctx, (@color), fmt);
  exit color;
end;

// ==============================================================
//  *
//  *                          COMBO
//  *
//  * ===============================================================
method nk_combo_begin(ctx: ^__struct_nk_context; win: ^__struct_nk_window; size: __struct_nk_vec2; is_clicked: Int32; header: __struct_nk_rect): Int32; public;
begin
  var popup: ^__struct_nk_window;
  var is_open: Int32 := 0;
  var is_active: Int32 := 0;
  var body: __struct_nk_rect;
  var hash: nk_hash;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  popup := (win)^.popup.win;
  body.x := header.x;
  body.w := size.x;
  body.y := ((header.y + header.h) - (ctx)^.style.window.combo_border);
  body.h := size.y;
  hash := (() -> begin
    var _tmp0 := (win)^.popup.combo_count;
    (win)^.popup.combo_count := _tmp0 + 1;
    exit _tmp0;
  end)();
  is_open := (if popup then (nk_true) else (nk_false));
  is_active := (Boolean((Boolean(popup) and Boolean(((win)^.popup.name = hash)))) and Boolean(((win)^.popup.type = NK_PANEL_COMBO)));
  if (Boolean((Boolean((Boolean((Boolean(is_clicked) and Boolean(is_open))) and Boolean(not Boolean(is_active)))) or Boolean((Boolean(is_open) and Boolean(not Boolean(is_active)))))) or Boolean((Boolean((Boolean(not Boolean(is_open)) and Boolean(not Boolean(is_active)))) and Boolean(not Boolean(is_clicked))))) then begin
    exit 0;
  end;
  if not Boolean(nk_nonblock_begin(ctx, 0, body, (if (Boolean(is_clicked) and Boolean(is_open)) then (nk_rect(0, 0, 0, 0)) else (header)), NK_PANEL_COMBO)) then begin
    exit 0;
  end;
  (win)^.popup.type := NK_PANEL_COMBO;
  (win)^.popup.name := hash;
  exit 1;
end;

method nk_combo_begin_text(ctx: ^__struct_nk_context; selected: ^Byte; len: Int32; size: __struct_nk_vec2): Int32; public;
begin
  var &in: ^__struct_nk_input;
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var s: __enum_nk_widget_layout_states;
  var is_clicked: Int32 := nk_false;
  var header: __struct_nk_rect;
  var background: ^__struct_nk_style_item;
  var text: __struct_nk_text;
  assert(ctx);
  assert(selected);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(selected))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  s := nk_widget((@header), ctx);
  if (s = NK_WIDGET_INVALID) then begin
    exit 0;
  end;
  &in := (if (Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM)) or Boolean((s = NK_WIDGET_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_button_behavior((@(ctx)^.last_widget_state), header, &in, NK_BUTTON_DEFAULT) then begin
    is_clicked := nk_true;
  end;
  // draw combo box header background and border
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.combo.active);
    text.text := (style)^.combo.label_active;
  end
  else begin
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.combo.hover);
      text.text := (style)^.combo.label_hover;
    end
    else begin
      background := (@(style)^.combo.normal);
      text.text := (style)^.combo.label_normal;
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    text.background := nk_rgba(0, 0, 0, 0);
    nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
  end
  else begin
    text.background := (background)^.data.color;
    nk_fill_rect((@(win)^.buffer), header, (style)^.combo.rounding, (background)^.data.color);
    nk_stroke_rect((@(win)^.buffer), header, (style)^.combo.rounding, (style)^.combo.border, (style)^.combo.border_color);
  end;
  begin
    // print currently selected text item
    var label: __struct_nk_rect;
    var button: __struct_nk_rect;
    var content: __struct_nk_rect;
    var sym: __enum_nk_symbol_type;
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      sym := (style)^.combo.sym_hover;
    end
    else begin
      if is_clicked then begin
        sym := (style)^.combo.sym_active;
      end
      else begin
        sym := (style)^.combo.sym_normal;
      end;
    end;
    // calculate button
    button.w := (header.h - (2 * (style)^.combo.button_padding.y));
    button.x := (((header.x + header.w) - header.h) - (style)^.combo.button_padding.x);
    button.y := (header.y + (style)^.combo.button_padding.y);
    button.h := button.w;
    content.x := (button.x + (style)^.combo.button.padding.x);
    content.y := (button.y + (style)^.combo.button.padding.y);
    content.w := (button.w - (2 * (style)^.combo.button.padding.x));
    content.h := (button.h - (2 * (style)^.combo.button.padding.y));
    // draw selected label
    text.padding := nk_vec2(0, 0);
    label.x := (header.x + (style)^.combo.content_padding.x);
    label.y := (header.y + (style)^.combo.content_padding.y);
    label.w := ((button.x - ((style)^.combo.content_padding.x + (style)^.combo.spacing.x)) - label.x);
    begin
    end;
    label.h := (header.h - (2 * (style)^.combo.content_padding.y));
    nk_widget_text((@(win)^.buffer), label, selected, len, (@text), NK_TEXT_LEFT, (ctx)^.style.font);
    // draw open/close button
    nk_draw_button_symbol((@(win)^.buffer), (@button), (@content), (ctx)^.last_widget_state, (@(ctx)^.style.combo.button), sym, (style)^.font);
  end;
  exit nk_combo_begin(ctx, win, size, is_clicked, header);
end;

method nk_combo_begin_label(ctx: ^__struct_nk_context; selected: ^Byte; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_combo_begin_text(ctx, selected, nk_strlen(selected), size);
end;

method nk_combo_begin_color(ctx: ^__struct_nk_context; color: __struct_nk_color; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var s: __enum_nk_widget_layout_states;
  var background: ^__struct_nk_style_item;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  s := nk_widget((@header), ctx);
  if (s = NK_WIDGET_INVALID) then begin
    exit 0;
  end;
  &in := (if (Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM)) or Boolean((s = NK_WIDGET_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_button_behavior((@(ctx)^.last_widget_state), header, &in, NK_BUTTON_DEFAULT) then begin
    is_clicked := nk_true;
  end;
  // draw combo box header background and border
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.combo.active);
  end
  else begin
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.combo.hover);
    end
    else begin
      background := (@(style)^.combo.normal);
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
  end
  else begin
    nk_fill_rect((@(win)^.buffer), header, (style)^.combo.rounding, (background)^.data.color);
    nk_stroke_rect((@(win)^.buffer), header, (style)^.combo.rounding, (style)^.combo.border, (style)^.combo.border_color);
  end;
  begin
    var content: __struct_nk_rect;
    var button: __struct_nk_rect;
    var bounds: __struct_nk_rect;
    var sym: __enum_nk_symbol_type;
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      sym := (style)^.combo.sym_hover;
    end
    else begin
      if is_clicked then begin
        sym := (style)^.combo.sym_active;
      end
      else begin
        sym := (style)^.combo.sym_normal;
      end;
    end;
    // calculate button
    button.w := (header.h - (2 * (style)^.combo.button_padding.y));
    button.x := (((header.x + header.w) - header.h) - (style)^.combo.button_padding.x);
    button.y := (header.y + (style)^.combo.button_padding.y);
    button.h := button.w;
    content.x := (button.x + (style)^.combo.button.padding.x);
    content.y := (button.y + (style)^.combo.button.padding.y);
    content.w := (button.w - (2 * (style)^.combo.button.padding.x));
    content.h := (button.h - (2 * (style)^.combo.button.padding.y));
    // draw color
    bounds.h := (header.h - (4 * (style)^.combo.content_padding.y));
    bounds.y := (header.y + (2 * (style)^.combo.content_padding.y));
    bounds.x := (header.x + (2 * (style)^.combo.content_padding.x));
    bounds.w := ((button.x - ((style)^.combo.content_padding.x + (style)^.combo.spacing.x)) - bounds.x);
    nk_fill_rect((@(win)^.buffer), bounds, 0, color);
    // draw open/close button
    nk_draw_button_symbol((@(win)^.buffer), (@button), (@content), (ctx)^.last_widget_state, (@(ctx)^.style.combo.button), sym, (style)^.font);
  end;
  exit nk_combo_begin(ctx, win, size, is_clicked, header);
end;

method nk_combo_begin_symbol(ctx: ^__struct_nk_context; symbol: __enum_nk_symbol_type; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var s: __enum_nk_widget_layout_states;
  var background: ^__struct_nk_style_item;
  var sym_background: __struct_nk_color;
  var symbol_color: __struct_nk_color;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  s := nk_widget((@header), ctx);
  if (s = NK_WIDGET_INVALID) then begin
    exit 0;
  end;
  &in := (if (Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM)) or Boolean((s = NK_WIDGET_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_button_behavior((@(ctx)^.last_widget_state), header, &in, NK_BUTTON_DEFAULT) then begin
    is_clicked := nk_true;
  end;
  // draw combo box header background and border
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.combo.active);
    symbol_color := (style)^.combo.symbol_active;
  end
  else begin
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.combo.hover);
      symbol_color := (style)^.combo.symbol_hover;
    end
    else begin
      background := (@(style)^.combo.normal);
      symbol_color := (style)^.combo.symbol_hover;
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    sym_background := nk_rgba(0, 0, 0, 0);
    nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
  end
  else begin
    sym_background := (background)^.data.color;
    nk_fill_rect((@(win)^.buffer), header, (style)^.combo.rounding, (background)^.data.color);
    nk_stroke_rect((@(win)^.buffer), header, (style)^.combo.rounding, (style)^.combo.border, (style)^.combo.border_color);
  end;
  begin
    var bounds: __struct_nk_rect := [0, 0, 0, 0];
    var content: __struct_nk_rect;
    var button: __struct_nk_rect;
    var sym: __enum_nk_symbol_type;
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      sym := (style)^.combo.sym_hover;
    end
    else begin
      if is_clicked then begin
        sym := (style)^.combo.sym_active;
      end
      else begin
        sym := (style)^.combo.sym_normal;
      end;
    end;
    // calculate button
    button.w := (header.h - (2 * (style)^.combo.button_padding.y));
    button.x := (((header.x + header.w) - header.h) - (style)^.combo.button_padding.y);
    button.y := (header.y + (style)^.combo.button_padding.y);
    button.h := button.w;
    content.x := (button.x + (style)^.combo.button.padding.x);
    content.y := (button.y + (style)^.combo.button.padding.y);
    content.w := (button.w - (2 * (style)^.combo.button.padding.x));
    content.h := (button.h - (2 * (style)^.combo.button.padding.y));
    // draw symbol
    bounds.h := (header.h - (2 * (style)^.combo.content_padding.y));
    bounds.y := (header.y + (style)^.combo.content_padding.y);
    bounds.x := (header.x + (style)^.combo.content_padding.x);
    bounds.w := ((button.x - (style)^.combo.content_padding.y) - bounds.x);
    nk_draw_symbol((@(win)^.buffer), symbol, bounds, sym_background, symbol_color, 1.0, (style)^.font);
    // draw open/close button
    nk_draw_button_symbol((@(win)^.buffer), (@bounds), (@content), (ctx)^.last_widget_state, (@(ctx)^.style.combo.button), sym, (style)^.font);
  end;
  exit nk_combo_begin(ctx, win, size, is_clicked, header);
end;

method nk_combo_begin_symbol_text(ctx: ^__struct_nk_context; selected: ^Byte; len: Int32; symbol: __enum_nk_symbol_type; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var s: __enum_nk_widget_layout_states;
  var background: ^__struct_nk_style_item;
  var symbol_color: __struct_nk_color;
  var text: __struct_nk_text;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  s := nk_widget((@header), ctx);
  if not Boolean(s) then begin
    exit 0;
  end;
  &in := (if (Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM)) or Boolean((s = NK_WIDGET_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_button_behavior((@(ctx)^.last_widget_state), header, &in, NK_BUTTON_DEFAULT) then begin
    is_clicked := nk_true;
  end;
  // draw combo box header background and border
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.combo.active);
    symbol_color := (style)^.combo.symbol_active;
    text.text := (style)^.combo.label_active;
  end
  else begin
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.combo.hover);
      symbol_color := (style)^.combo.symbol_hover;
      text.text := (style)^.combo.label_hover;
    end
    else begin
      background := (@(style)^.combo.normal);
      symbol_color := (style)^.combo.symbol_normal;
      text.text := (style)^.combo.label_normal;
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    text.background := nk_rgba(0, 0, 0, 0);
    nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
  end
  else begin
    text.background := (background)^.data.color;
    nk_fill_rect((@(win)^.buffer), header, (style)^.combo.rounding, (background)^.data.color);
    nk_stroke_rect((@(win)^.buffer), header, (style)^.combo.rounding, (style)^.combo.border, (style)^.combo.border_color);
  end;
  begin
    var content: __struct_nk_rect;
    var button: __struct_nk_rect;
    var label: __struct_nk_rect;
    var image: __struct_nk_rect;
    var sym: __enum_nk_symbol_type;
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      sym := (style)^.combo.sym_hover;
    end
    else begin
      if is_clicked then begin
        sym := (style)^.combo.sym_active;
      end
      else begin
        sym := (style)^.combo.sym_normal;
      end;
    end;
    // calculate button
    button.w := (header.h - (2 * (style)^.combo.button_padding.y));
    button.x := (((header.x + header.w) - header.h) - (style)^.combo.button_padding.x);
    button.y := (header.y + (style)^.combo.button_padding.y);
    button.h := button.w;
    content.x := (button.x + (style)^.combo.button.padding.x);
    content.y := (button.y + (style)^.combo.button.padding.y);
    content.w := (button.w - (2 * (style)^.combo.button.padding.x));
    content.h := (button.h - (2 * (style)^.combo.button.padding.y));
    nk_draw_button_symbol((@(win)^.buffer), (@button), (@content), (ctx)^.last_widget_state, (@(ctx)^.style.combo.button), sym, (style)^.font);
    // draw symbol
    image.x := (header.x + (style)^.combo.content_padding.x);
    image.y := (header.y + (style)^.combo.content_padding.y);
    image.h := (header.h - (2 * (style)^.combo.content_padding.y));
    image.w := image.h;
    nk_draw_symbol((@(win)^.buffer), symbol, image, text.background, symbol_color, 1.0, (style)^.font);
    // draw label
    text.padding := nk_vec2(0, 0);
    label.x := (((image.x + image.w) + (style)^.combo.spacing.x) + (style)^.combo.content_padding.x);
    label.y := (header.y + (style)^.combo.content_padding.y);
    label.w := ((button.x - (style)^.combo.content_padding.x) - label.x);
    label.h := (header.h - (2 * (style)^.combo.content_padding.y));
    nk_widget_text((@(win)^.buffer), label, selected, len, (@text), NK_TEXT_LEFT, (style)^.font);
  end;
  exit nk_combo_begin(ctx, win, size, is_clicked, header);
end;

method nk_combo_begin_image(ctx: ^__struct_nk_context; img: __struct_nk_image; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var s: __enum_nk_widget_layout_states;
  var background: ^__struct_nk_style_item;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  s := nk_widget((@header), ctx);
  if (s = NK_WIDGET_INVALID) then begin
    exit 0;
  end;
  &in := (if (Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM)) or Boolean((s = NK_WIDGET_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_button_behavior((@(ctx)^.last_widget_state), header, &in, NK_BUTTON_DEFAULT) then begin
    is_clicked := nk_true;
  end;
  // draw combo box header background and border
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.combo.active);
  end
  else begin
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.combo.hover);
    end
    else begin
      background := (@(style)^.combo.normal);
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
  end
  else begin
    nk_fill_rect((@(win)^.buffer), header, (style)^.combo.rounding, (background)^.data.color);
    nk_stroke_rect((@(win)^.buffer), header, (style)^.combo.rounding, (style)^.combo.border, (style)^.combo.border_color);
  end;
  begin
    var bounds: __struct_nk_rect := [0, 0, 0, 0];
    var content: __struct_nk_rect;
    var button: __struct_nk_rect;
    var sym: __enum_nk_symbol_type;
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      sym := (style)^.combo.sym_hover;
    end
    else begin
      if is_clicked then begin
        sym := (style)^.combo.sym_active;
      end
      else begin
        sym := (style)^.combo.sym_normal;
      end;
    end;
    // calculate button
    button.w := (header.h - (2 * (style)^.combo.button_padding.y));
    button.x := (((header.x + header.w) - header.h) - (style)^.combo.button_padding.y);
    button.y := (header.y + (style)^.combo.button_padding.y);
    button.h := button.w;
    content.x := (button.x + (style)^.combo.button.padding.x);
    content.y := (button.y + (style)^.combo.button.padding.y);
    content.w := (button.w - (2 * (style)^.combo.button.padding.x));
    content.h := (button.h - (2 * (style)^.combo.button.padding.y));
    // draw image
    bounds.h := (header.h - (2 * (style)^.combo.content_padding.y));
    bounds.y := (header.y + (style)^.combo.content_padding.y);
    bounds.x := (header.x + (style)^.combo.content_padding.x);
    bounds.w := ((button.x - (style)^.combo.content_padding.y) - bounds.x);
    nk_draw_image((@(win)^.buffer), bounds, (@img), nk_white);
    // draw open/close button
    nk_draw_button_symbol((@(win)^.buffer), (@bounds), (@content), (ctx)^.last_widget_state, (@(ctx)^.style.combo.button), sym, (style)^.font);
  end;
  exit nk_combo_begin(ctx, win, size, is_clicked, header);
end;

method nk_combo_begin_image_text(ctx: ^__struct_nk_context; selected: ^Byte; len: Int32; img: __struct_nk_image; size: __struct_nk_vec2): Int32; public;
begin
  var win: ^__struct_nk_window;
  var style: ^__struct_nk_style;
  var &in: ^__struct_nk_input;
  var header: __struct_nk_rect;
  var is_clicked: Int32 := nk_false;
  var s: __enum_nk_widget_layout_states;
  var background: ^__struct_nk_style_item;
  var text: __struct_nk_text;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  win := (ctx)^.current;
  style := (@(ctx)^.style);
  s := nk_widget((@header), ctx);
  if not Boolean(s) then begin
    exit 0;
  end;
  &in := (if (Boolean((((win)^.layout)^.flags and NK_WINDOW_ROM)) or Boolean((s = NK_WIDGET_ROM))) then (0) else ((@(ctx)^.input)));
  if nk_button_behavior((@(ctx)^.last_widget_state), header, &in, NK_BUTTON_DEFAULT) then begin
    is_clicked := nk_true;
  end;
  // draw combo box header background and border
  if ((ctx)^.last_widget_state and NK_WIDGET_STATE_ACTIVED) then begin
    background := (@(style)^.combo.active);
    text.text := (style)^.combo.label_active;
  end
  else begin
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      background := (@(style)^.combo.hover);
      text.text := (style)^.combo.label_hover;
    end
    else begin
      background := (@(style)^.combo.normal);
      text.text := (style)^.combo.label_normal;
    end;
  end;
  if ((background)^.type = NK_STYLE_ITEM_IMAGE) then begin
    text.background := nk_rgba(0, 0, 0, 0);
    nk_draw_image((@(win)^.buffer), header, (@(background)^.data.image), nk_white);
  end
  else begin
    text.background := (background)^.data.color;
    nk_fill_rect((@(win)^.buffer), header, (style)^.combo.rounding, (background)^.data.color);
    nk_stroke_rect((@(win)^.buffer), header, (style)^.combo.rounding, (style)^.combo.border, (style)^.combo.border_color);
  end;
  begin
    var content: __struct_nk_rect;
    var button: __struct_nk_rect;
    var label: __struct_nk_rect;
    var image: __struct_nk_rect;
    var sym: __enum_nk_symbol_type;
    if ((ctx)^.last_widget_state and NK_WIDGET_STATE_HOVER) then begin
      sym := (style)^.combo.sym_hover;
    end
    else begin
      if is_clicked then begin
        sym := (style)^.combo.sym_active;
      end
      else begin
        sym := (style)^.combo.sym_normal;
      end;
    end;
    // calculate button
    button.w := (header.h - (2 * (style)^.combo.button_padding.y));
    button.x := (((header.x + header.w) - header.h) - (style)^.combo.button_padding.x);
    button.y := (header.y + (style)^.combo.button_padding.y);
    button.h := button.w;
    content.x := (button.x + (style)^.combo.button.padding.x);
    content.y := (button.y + (style)^.combo.button.padding.y);
    content.w := (button.w - (2 * (style)^.combo.button.padding.x));
    content.h := (button.h - (2 * (style)^.combo.button.padding.y));
    nk_draw_button_symbol((@(win)^.buffer), (@button), (@content), (ctx)^.last_widget_state, (@(ctx)^.style.combo.button), sym, (style)^.font);
    // draw image
    image.x := (header.x + (style)^.combo.content_padding.x);
    image.y := (header.y + (style)^.combo.content_padding.y);
    image.h := (header.h - (2 * (style)^.combo.content_padding.y));
    image.w := image.h;
    nk_draw_image((@(win)^.buffer), image, (@img), nk_white);
    // draw label
    text.padding := nk_vec2(0, 0);
    label.x := (((image.x + image.w) + (style)^.combo.spacing.x) + (style)^.combo.content_padding.x);
    label.y := (header.y + (style)^.combo.content_padding.y);
    label.w := ((button.x - (style)^.combo.content_padding.x) - label.x);
    label.h := (header.h - (2 * (style)^.combo.content_padding.y));
    nk_widget_text((@(win)^.buffer), label, selected, len, (@text), NK_TEXT_LEFT, (style)^.font);
  end;
  exit nk_combo_begin(ctx, win, size, is_clicked, header);
end;

method nk_combo_begin_symbol_label(ctx: ^__struct_nk_context; selected: ^Byte; &type: __enum_nk_symbol_type; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_combo_begin_symbol_text(ctx, selected, nk_strlen(selected), &type, size);
end;

method nk_combo_begin_image_label(ctx: ^__struct_nk_context; selected: ^Byte; img: __struct_nk_image; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_combo_begin_image_text(ctx, selected, nk_strlen(selected), img, size);
end;

method nk_combo_item_text(ctx: ^__struct_nk_context; text: ^Byte; len: Int32; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_text(ctx, text, len, align);
end;

method nk_combo_item_label(ctx: ^__struct_nk_context; label: ^Byte; align: nk_flags): Int32; public;
begin
  exit nk_contextual_item_label(ctx, label, align);
end;

method nk_combo_item_image_text(ctx: ^__struct_nk_context; img: __struct_nk_image; text: ^Byte; len: Int32; alignment: nk_flags): Int32; public;
begin
  exit nk_contextual_item_image_text(ctx, img, text, len, alignment);
end;

method nk_combo_item_image_label(ctx: ^__struct_nk_context; img: __struct_nk_image; text: ^Byte; alignment: nk_flags): Int32; public;
begin
  exit nk_contextual_item_image_label(ctx, img, text, alignment);
end;

method nk_combo_item_symbol_text(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; text: ^Byte; len: Int32; alignment: nk_flags): Int32; public;
begin
  exit nk_contextual_item_symbol_text(ctx, sym, text, len, alignment);
end;

method nk_combo_item_symbol_label(ctx: ^__struct_nk_context; sym: __enum_nk_symbol_type; label: ^Byte; alignment: nk_flags): Int32; public;
begin
  exit nk_contextual_item_symbol_label(ctx, sym, label, alignment);
end;

method nk_combo_end(ctx: ^__struct_nk_context); public;
begin
  nk_contextual_end(ctx);
end;

method nk_combo_close(ctx: ^__struct_nk_context); public;
begin
  nk_contextual_close(ctx);
end;

method nk_combo(ctx: ^__struct_nk_context; items: ^^Byte; count: Int32; selected: Int32; item_height: Int32; size: __struct_nk_vec2): Int32; public;
begin
  var i: Int32 := 0;
  var max_height: Int32;
  var item_spacing: __struct_nk_vec2;
  var window_padding: __struct_nk_vec2;
  assert(ctx);
  assert(items);
  assert((ctx)^.current);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean(items)))) or Boolean(not Boolean(count))) then begin
    exit selected;
  end;
  item_spacing := (ctx)^.style.window.spacing;
  window_padding := nk_panel_get_padding((@(ctx)^.style), (((ctx)^.current)^.layout)^.type);
  max_height := ((count * item_height) + (count * Int32(item_spacing.y)));
  max_height := max_height + ((Int32(item_spacing.y) * 2) + (Int32(window_padding.y) * 2));
  size.y := (if (size.y < Single(max_height)) then (size.y) else (Single(max_height)));
  if nk_combo_begin_label(ctx, items[selected], size) then begin
    nk_layout_row_dynamic(ctx, Single(item_height), 1);
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < count) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      begin
        if nk_combo_item_label(ctx, items[i], NK_TEXT_LEFT) then begin
          selected := i;
        end;
      end;
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
    nk_combo_end(ctx);
  end;
  exit selected;
end;

method nk_combo_separator(ctx: ^__struct_nk_context; items_separated_by_separator: ^Byte; separator: Int32; selected: Int32; count: Int32; item_height: Int32; size: __struct_nk_vec2): Int32; public;
begin
  var i: Int32;
  var max_height: Int32;
  var item_spacing: __struct_nk_vec2;
  var window_padding: __struct_nk_vec2;
  var current_item: ^Byte;
  var iter: ^Byte;
  var length: Int32 := 0;
  assert(ctx);
  assert(items_separated_by_separator);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(items_separated_by_separator))) then begin
    exit selected;
  end;
  // calculate popup window
  item_spacing := (ctx)^.style.window.spacing;
  window_padding := nk_panel_get_padding((@(ctx)^.style), (((ctx)^.current)^.layout)^.type);
  max_height := ((count * item_height) + (count * Int32(item_spacing.y)));
  max_height := max_height + ((Int32(item_spacing.y) * 2) + (Int32(window_padding.y) * 2));
  size.y := (if (size.y < Single(max_height)) then (size.y) else (Single(max_height)));
  // find selected item
  current_item := items_separated_by_separator;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < count) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    begin
      iter := current_item;
      while (Boolean((iter)^) and Boolean(((iter)^ ≠ separator))) do
        iter := iter + 1;
      length := Int32((iter - current_item));
      if (i = selected) then begin
        goto _breaklabel1;
      end;
      current_item := (iter + 1);
    end;
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  if nk_combo_begin_text(ctx, current_item, length, size) then begin
    current_item := items_separated_by_separator;
    nk_layout_row_dynamic(ctx, Single(item_height), 1);
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel2:;
      if (i < count) then begin
      end
      else begin
        goto _breaklabel2;
      end;
      // for loop: body
      begin
        iter := current_item;
        while (Boolean((iter)^) and Boolean(((iter)^ ≠ separator))) do
          iter := iter + 1;
        length := Int32((iter - current_item));
        if nk_combo_item_text(ctx, current_item, length, NK_TEXT_LEFT) then begin
          selected := i;
        end;
        current_item := ((current_item + length) + 1);
      end;
      _continuelabel2:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel2;
      // for loop: break
      _breaklabel2:;
    end;
    nk_combo_end(ctx);
  end;
  exit selected;
end;

method nk_combo_string(ctx: ^__struct_nk_context; items_separated_by_zeros: ^Byte; selected: Int32; count: Int32; item_height: Int32; size: __struct_nk_vec2): Int32; public;
begin
  exit nk_combo_separator(ctx, items_separated_by_zeros, 0, selected, count, item_height, size);
end;

method nk_combo_callback(ctx: ^__struct_nk_context; item_getter: __fnptrtype24; userdata: ^Void; selected: Int32; count: Int32; item_height: Int32; size: __struct_nk_vec2): Int32; public;
begin
  var i: Int32;
  var max_height: Int32;
  var item_spacing: __struct_nk_vec2;
  var window_padding: __struct_nk_vec2;
  var item: ^Byte;
  assert(ctx);
  assert(item_getter);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean(item_getter))) then begin
    exit selected;
  end;
  // calculate popup window
  item_spacing := (ctx)^.style.window.spacing;
  window_padding := nk_panel_get_padding((@(ctx)^.style), (((ctx)^.current)^.layout)^.type);
  max_height := ((count * item_height) + (count * Int32(item_spacing.y)));
  max_height := max_height + ((Int32(item_spacing.y) * 2) + (Int32(window_padding.y) * 2));
  size.y := (if (size.y < Single(max_height)) then (size.y) else (Single(max_height)));
  item_getter(userdata, selected, (@item));
  if nk_combo_begin_label(ctx, item, size) then begin
    nk_layout_row_dynamic(ctx, Single(item_height), 1);
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel1:;
      if (i < count) then begin
      end
      else begin
        goto _breaklabel1;
      end;
      // for loop: body
      begin
        item_getter(userdata, i, (@item));
        if nk_combo_item_label(ctx, item, NK_TEXT_LEFT) then begin
          selected := i;
        end;
      end;
      _continuelabel1:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel1;
      // for loop: break
      _breaklabel1:;
    end;
    nk_combo_end(ctx);
  end;
  exit selected;
end;

method nk_combobox(ctx: ^__struct_nk_context; items: ^^Byte; count: Int32; selected: ^Int32; item_height: Int32; size: __struct_nk_vec2); public;
begin
  (selected)^ := nk_combo(ctx, items, count, (selected)^, item_height, size);
end;

method nk_combobox_string(ctx: ^__struct_nk_context; items_separated_by_zeros: ^Byte; selected: ^Int32; count: Int32; item_height: Int32; size: __struct_nk_vec2); public;
begin
  (selected)^ := nk_combo_string(ctx, items_separated_by_zeros, (selected)^, count, item_height, size);
end;

method nk_combobox_separator(ctx: ^__struct_nk_context; items_separated_by_separator: ^Byte; separator: Int32; selected: ^Int32; count: Int32; item_height: Int32; size: __struct_nk_vec2); public;
begin
  (selected)^ := nk_combo_separator(ctx, items_separated_by_separator, separator, (selected)^, count, item_height, size);
end;

method nk_combobox_callback(ctx: ^__struct_nk_context; item_getter: __fnptrtype25; userdata: ^Void; selected: ^Int32; count: Int32; item_height: Int32; size: __struct_nk_vec2); public;
begin
  (selected)^ := nk_combo_callback(ctx, item_getter, userdata, (selected)^, count, item_height, size);
end;

// ===============================================================
//  *
//  *                              TOOLTIP
//  *
//  * ===============================================================
method nk_tooltip_begin(ctx: ^__struct_nk_context; width: Single): Int32; public;
begin
  var x: Int32;
  var y: Int32;
  var w: Int32;
  var h: Int32;
  var win: ^__struct_nk_window;
  var &in: ^__struct_nk_input;
  var bounds: __struct_nk_rect;
  var ret: Int32;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  if (Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout))) then begin
    exit 0;
  end;
  // make sure that no nonblocking popup is currently active
  win := (ctx)^.current;
  &in := (@(ctx)^.input);
  if (Boolean((win)^.popup.win) and Boolean(((win)^.popup.type and NK_PANEL_SET_NONBLOCK))) then begin
    exit 0;
  end;
  w := nk_iceilf(width);
  h := nk_iceilf(nk_null_rect.h);
  x := (nk_ifloorf(((&in)^.mouse.pos.x + 1)) - Int32(((win)^.layout)^.clip.x));
  y := (nk_ifloorf(((&in)^.mouse.pos.y + 1)) - Int32(((win)^.layout)^.clip.y));
  bounds.x := Single(x);
  bounds.y := Single(y);
  bounds.w := Single(w);
  bounds.h := Single(h);
  ret := nk_popup_begin(ctx, NK_POPUP_DYNAMIC, "__##Tooltip##__", (NK_WINDOW_NO_SCROLLBAR or NK_WINDOW_BORDER), bounds);
  if ret then begin
    ((win)^.layout)^.flags := ((win)^.layout)^.flags and not nk_flags(NK_WINDOW_ROM);
  end;
  (win)^.popup.type := NK_PANEL_TOOLTIP;
  (((ctx)^.current)^.layout)^.type := NK_PANEL_TOOLTIP;
  exit ret;
end;

method nk_tooltip_end(ctx: ^__struct_nk_context); public;
begin
  assert(ctx);
  assert((ctx)^.current);
  if (Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current))) then begin
    exit;
  end;
  ((ctx)^.current)^.seq := ((ctx)^.current)^.seq - 1;
  nk_popup_close(ctx);
  nk_popup_end(ctx);
end;

method nk_tooltip(ctx: ^__struct_nk_context; text: ^Byte); public;
begin
  var style: ^__struct_nk_style;
  var padding: __struct_nk_vec2;
  var text_len: Int32;
  var text_width: Single;
  var text_height: Single;
  assert(ctx);
  assert((ctx)^.current);
  assert(((ctx)^.current)^.layout);
  assert(text);
  if (Boolean((Boolean((Boolean(not Boolean(ctx)) or Boolean(not Boolean((ctx)^.current)))) or Boolean(not Boolean(((ctx)^.current)^.layout)))) or Boolean(not Boolean(text))) then begin
    exit;
  end;
  // fetch configuration data
  style := (@(ctx)^.style);
  padding := (style)^.window.padding;
  // calculate size of the text and tooltip
  text_len := nk_strlen(text);
  text_width := ((style)^.font)^.width(((style)^.font)^.userdata, ((style)^.font)^.height, text, text_len);
  text_width := text_width + (4 * padding.x);
  text_height := (((style)^.font)^.height + (2 * padding.y));
  // execute tooltip and fill with text
  if nk_tooltip_begin(ctx, Single(text_width)) then begin
    nk_layout_row_dynamic(ctx, Single(text_height), 1);
    nk_text(ctx, text, text_len, NK_TEXT_LEFT);
    nk_tooltip_end(ctx);
  end;
end;

type
  // /// # Nuklear
  // /// ![](https://cloud.githubusercontent.com/assets/8057201/11761525/ae06f0ca-a0c6-11e5-819d-5610b25f6ef4.gif)
  // ///
  // /// ## Contents
  // /// 1. About section
  // /// 2. Highlights section
  // /// 3. Features section
  // /// 4. Usage section
  // ///     1. Flags section
  // ///     2. Constants section
  // ///     3. Dependencies section
  // /// 5. Example section
  // /// 6. API section
  // ///     1. Context section
  // ///     2. Input section
  // ///     3. Drawing section
  // ///     4. Window section
  // ///     5. Layouting section
  // ///     6. Groups section
  // ///     7. Tree section
  // ///     8. Properties section
  // /// 7. License section
  // /// 8. Changelog section
  // /// 9. Gallery section
  // /// 10. Credits section
  // ///
  // /// ## About
  // /// This is a minimal state immediate mode graphical user interface toolkit
  // /// written in ANSI C and licensed under public domain. It was designed as a simple
  // /// embeddable user interface for application and does not have any dependencies,
  // /// a default renderbackend or OS window and input handling but instead provides a very modular
  // /// library approach by using simple input state for input and draw
  // /// commands describing primitive shapes as output. So instead of providing a
  // /// layered library that tries to abstract over a number of platform and
  // /// render backends it only focuses on the actual UI.
  // ///
  // /// ## Highlights
  // /// - Graphical user interface toolkit
  // /// - Single header library
  // /// - Written in C89 (a.k.a. ANSI C or ISO C90)
  // /// - Small codebase (~18kLOC)
  // /// - Focus on portability, efficiency and simplicity
  // /// - No dependencies (not even the standard library if not wanted)
  // /// - Fully skinnable and customizable
  // /// - Low memory footprint with total memory control if needed or wanted
  // /// - UTF-8 support
  // /// - No global or hidden state
  // /// - Customizable library modules (you can compile and use only what you need)
  // /// - Optional font baker and vertex buffer output
  // ///
  // /// ## Features
  // /// - Absolutely no platform dependent code
  // /// - Memory management control ranging from/to
  // ///     - Ease of use by allocating everything from standard library
  // ///     - Control every byte of memory inside the library
  // /// - Font handling control ranging from/to
  // ///     - Use your own font implementation for everything
  // ///     - Use this libraries internal font baking and handling API
  // /// - Drawing output control ranging from/to
  // ///     - Simple shapes for more high level APIs which already have drawing capabilities
  // ///     - Hardware accessible anti-aliased vertex buffer output
  // /// - Customizable colors and properties ranging from/to
  // ///     - Simple changes to color by filling a simple color table
  // ///     - Complete control with ability to use skinning to decorate widgets
  // /// - Bendable UI library with widget ranging from/to
  // ///     - Basic widgets like buttons, checkboxes, slider, ...
  // ///     - Advanced widget like abstract comboboxes, contextual menus,...
  // /// - Compile time configuration to only compile what you need
  // ///     - Subset which can be used if you do not want to link or use the standard library
  // /// - Can be easily modified to only update on user input instead of frame updates
  // ///
  // /// ## Usage
  // /// This library is self contained in one single header file and can be used either
  // /// in header only mode or in implementation mode. The header only mode is used
  // /// by default when included and allows including this header in other headers
  // /// and does not contain the actual implementation. <br /><br />
  // ///
  // /// The implementation mode requires to define  the preprocessor macro
  // /// NK_IMPLEMENTATION in *one* .c/.cpp file before #includeing this file, e.g.:
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~C
  // ///     #define NK_IMPLEMENTATION
  // ///     #include "nuklear.h"
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// Also optionally define the symbols listed in the section "OPTIONAL DEFINES"
  // /// below in header and implementation mode if you want to use additional functionality
  // /// or need more control over the library.
  // ///
  // /// !!! WARNING
  // ///     Every time nuklear is included define the same compiler flags. This very important not doing so could lead to compiler errors or even worse stack corruptions.
  // ///
  // /// ### Flags
  // /// Flag                            | Description
  // /// --------------------------------|------------------------------------------
  // /// NK_PRIVATE                      | If defined declares all functions as static, so they can only be accessed inside the file that contains the implementation
  // /// NK_INCLUDE_FIXED_TYPES          | If defined it will include header `<stdint.h>` for fixed sized types otherwise nuklear tries to select the correct type. If that fails it will throw a compiler error and you have to select the correct types yourself.
  // /// NK_INCLUDE_DEFAULT_ALLOCATOR    | If defined it will include header `<stdlib.h>` and provide additional functions to use this library without caring for memory allocation control and therefore ease memory management.
  // /// NK_INCLUDE_STANDARD_IO          | If defined it will include header `<stdio.h>` and provide additional functions depending on file loading.
  // /// NK_INCLUDE_STANDARD_VARARGS     | If defined it will include header <stdio.h> and provide additional functions depending on file loading.
  // /// NK_INCLUDE_VERTEX_BUFFER_OUTPUT | Defining this adds a vertex draw command list backend to this library, which allows you to convert queue commands into vertex draw commands. This is mainly if you need a hardware accessible format for OpenGL, DirectX, Vulkan, Metal,...
  // /// NK_INCLUDE_FONT_BAKING          | Defining this adds `stb_truetype` and `stb_rect_pack` implementation to this library and provides font baking and rendering. If you already have font handling or do not want to use this font handler you don't have to define it.
  // /// NK_INCLUDE_DEFAULT_FONT         | Defining this adds the default font: ProggyClean.ttf into this library which can be loaded into a font atlas and allows using this library without having a truetype font
  // /// NK_INCLUDE_COMMAND_USERDATA     | Defining this adds a userdata pointer into each command. Can be useful for example if you want to provide custom shaders depending on the used widget. Can be combined with the style structures.
  // /// NK_BUTTON_TRIGGER_ON_RELEASE    | Different platforms require button clicks occurring either on buttons being pressed (up to down) or released (down to up). By default this library will react on buttons being pressed, but if you define this it will only trigger if a button is released.
  // /// NK_ZERO_COMMAND_MEMORY          | Defining this will zero out memory for each drawing command added to a drawing queue (inside nk_command_buffer_push). Zeroing command memory is very useful for fast checking (using memcmp) if command buffers are equal and avoid drawing frames when nothing on screen has changed since previous frame.
  // /// NK_UINT_DRAW_INDEX              | Defining this will set the size of vertex index elements when using NK_VERTEX_BUFFER_OUTPUT to 32bit instead of the default of 16bit
  // /// NK_KEYSTATE_BASED_INPUT         | Define this if your backend uses key state for each frame rather than key press/release events
  // ///
  // /// !!! WARNING
  // ///     The following flags will pull in the standard C library:
  // ///     - NK_INCLUDE_DEFAULT_ALLOCATOR
  // ///     - NK_INCLUDE_STANDARD_IO
  // ///     - NK_INCLUDE_STANDARD_VARARGS
  // ///
  // /// !!! WARNING
  // ///     The following flags if defined need to be defined for both header and implementation:
  // ///     - NK_INCLUDE_FIXED_TYPES
  // ///     - NK_INCLUDE_DEFAULT_ALLOCATOR
  // ///     - NK_INCLUDE_STANDARD_VARARGS
  // ///     - NK_INCLUDE_VERTEX_BUFFER_OUTPUT
  // ///     - NK_INCLUDE_FONT_BAKING
  // ///     - NK_INCLUDE_DEFAULT_FONT
  // ///     - NK_INCLUDE_STANDARD_VARARGS
  // ///     - NK_INCLUDE_COMMAND_USERDATA
  // ///     - NK_UINT_DRAW_INDEX
  // ///
  // /// ### Constants
  // /// Define                          | Description
  // /// --------------------------------|---------------------------------------
  // /// NK_BUFFER_DEFAULT_INITIAL_SIZE  | Initial buffer size allocated by all buffers while using the default allocator functions included by defining NK_INCLUDE_DEFAULT_ALLOCATOR. If you don't want to allocate the default 4k memory then redefine it.
  // /// NK_MAX_NUMBER_BUFFER            | Maximum buffer size for the conversion buffer between float and string Under normal circumstances this should be more than sufficient.
  // /// NK_INPUT_MAX                    | Defines the max number of bytes which can be added as text input in one frame. Under normal circumstances this should be more than sufficient.
  // ///
  // /// !!! WARNING
  // ///     The following constants if defined need to be defined for both header and implementation:
  // ///     - NK_MAX_NUMBER_BUFFER
  // ///     - NK_BUFFER_DEFAULT_INITIAL_SIZE
  // ///     - NK_INPUT_MAX
  // ///
  // /// ### Dependencies
  // /// Function    | Description
  // /// ------------|---------------------------------------------------------------
  // /// NK_ASSERT   | If you don't define this, nuklear will use <assert.h> with assert().
  // /// NK_MEMSET   | You can define this to 'memset' or your own memset implementation replacement. If not nuklear will use its own version.
  // /// NK_MEMCPY   | You can define this to 'memcpy' or your own memcpy implementation replacement. If not nuklear will use its own version.
  // /// NK_SQRT     | You can define this to 'sqrt' or your own sqrt implementation replacement. If not nuklear will use its own slow and not highly accurate version.
  // /// NK_SIN      | You can define this to 'sinf' or your own sine implementation replacement. If not nuklear will use its own approximation implementation.
  // /// NK_COS      | You can define this to 'cosf' or your own cosine implementation replacement. If not nuklear will use its own approximation implementation.
  // /// NK_STRTOD   | You can define this to `strtod` or your own string to double conversion implementation replacement. If not defined nuklear will use its own imprecise and possibly unsafe version (does not handle nan or infinity!).
  // /// NK_DTOA     | You can define this to `dtoa` or your own double to string conversion implementation replacement. If not defined nuklear will use its own imprecise and possibly unsafe version (does not handle nan or infinity!).
  // /// NK_VSNPRINTF| If you define `NK_INCLUDE_STANDARD_VARARGS` as well as `NK_INCLUDE_STANDARD_IO` and want to be safe define this to `vsnprintf` on compilers supporting later versions of C or C++. By default nuklear will check for your stdlib version in C as well as compiler version in C++. if `vsnprintf` is available it will define it to `vsnprintf` directly. If not defined and if you have older versions of C or C++ it will be defined to `vsprintf` which is unsafe.
  // ///
  // /// !!! WARNING
  // ///     The following dependencies will pull in the standard C library if not redefined:
  // ///     - NK_ASSERT
  // ///
  // /// !!! WARNING
  // ///     The following dependencies if defined need to be defined for both header and implementation:
  // ///     - NK_ASSERT
  // ///
  // /// !!! WARNING
  // ///     The following dependencies if defined need to be defined only for the implementation part:
  // ///     - NK_MEMSET
  // ///     - NK_MEMCPY
  // ///     - NK_SQRT
  // ///     - NK_SIN
  // ///     - NK_COS
  // ///     - NK_STRTOD
  // ///     - NK_DTOA
  // ///     - NK_VSNPRINTF
  // ///
  // /// ## Example
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// // init gui state
  // /// enum {EASY, HARD};
  // /// static int op = EASY;
  // /// static float value = 0.6f;
  // /// static int i =  20;
  // /// struct nk_context ctx;
  // ///
  // /// nk_init_fixed(&ctx, calloc(1, MAX_MEMORY), MAX_MEMORY, &font);
  // /// if (nk_begin(&ctx, "Show", nk_rect(50, 50, 220, 220),
  // ///     NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_CLOSABLE)) {
  // ///     // fixed widget pixel width
  // ///     nk_layout_row_static(&ctx, 30, 80, 1);
  // ///     if (nk_button_label(&ctx, "button")) {
  // ///         // event handling
  // ///     }
  // ///
  // ///     // fixed widget window ratio width
  // ///     nk_layout_row_dynamic(&ctx, 30, 2);
  // ///     if (nk_option_label(&ctx, "easy", op == EASY)) op = EASY;
  // ///     if (nk_option_label(&ctx, "hard", op == HARD)) op = HARD;
  // ///
  // ///     // custom widget pixel width
  // ///     nk_layout_row_begin(&ctx, NK_STATIC, 30, 2);
  // ///     {
  // ///         nk_layout_row_push(&ctx, 50);
  // ///         nk_label(&ctx, "Volume:", NK_TEXT_LEFT);
  // ///         nk_layout_row_push(&ctx, 110);
  // ///         nk_slider_float(&ctx, 0, &value, 1.0f, 0.1f);
  // ///     }
  // ///     nk_layout_row_end(&ctx);
  // /// }
  // /// nk_end(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// ![](https://cloud.githubusercontent.com/assets/8057201/10187981/584ecd68-675c-11e5-897c-822ef534a876.png)
  // ///
  // /// ## API
  // ///
  //  defined: NK_SINGLE_FILE ()
  //  defined: NK_NUKLEAR_H_ ()
  //  * ==============================================================
  //  *
  //  *                          CONSTANTS
  //  *
  //  * ===============================================================
  //  
  //  defined: NK_UNDEFINED ()  (-1.0f)
  //  defined: NK_UTF_INVALID ()  0xFFFD /* internal invalid utf8 rune */
  //  defined: NK_UTF_SIZE ()  4 /* describes the number of bytes a glyph consists of*/
  //  defined: NK_INPUT_MAX ()  16
  //  defined: NK_MAX_NUMBER_BUFFER ()  64
  //  defined: NK_SCROLLBAR_HIDING_TIMEOUT ()  4.0f
  //  * ==============================================================
  //  *
  //  *                          HELPER
  //  *
  //  * ===============================================================
  //  
  //  defined: NK_LIB ()  static
  //  defined: NK_INTERN ()  static
  //  defined: NK_STORAGE ()  static
  //  defined: NK_GLOBAL ()  static
  //  defined: NK_FLAG (x) (1 << (x))
  //  defined: NK_STRINGIFY (x) #x
  //  defined: NK_MACRO_STRINGIFY (x) NK_STRINGIFY(x)
  //  defined: NK_STRING_JOIN_IMMEDIATE (arg1,arg2) arg1 ## arg2
  //  defined: NK_STRING_JOIN_DELAY (arg1,arg2) NK_STRING_JOIN_IMMEDIATE(arg1, arg2)
  //  defined: NK_STRING_JOIN (arg1,arg2) NK_STRING_JOIN_DELAY(arg1, arg2)
  //  defined: NK_UNIQUE_NAME (name) NK_STRING_JOIN(name,__LINE__)
  //  defined: NK_STATIC_ASSERT (exp) typedef char NK_UNIQUE_NAME(_dummy_array)[(exp)?1:-1]
  //  defined: NK_FILE_LINE ()  __FILE__ ":" NK_MACRO_STRINGIFY(__LINE__)
  //  defined: NK_MIN (a,b) ((a) < (b) ? (a) : (b))
  //  defined: NK_MAX (a,b) ((a) < (b) ? (b) : (a))
  //  defined: NK_CLAMP (i,v,x) (NK_MAX(NK_MIN(v,x), i))
  //  * ===============================================================
  //  *
  //  *                          BASIC
  //  *
  //  * ===============================================================
  //  
  //  defined: NK_INT8 ()  int8_t
  //  defined: NK_UINT8 ()  uint8_t
  //  defined: NK_INT16 ()  int16_t
  //  defined: NK_UINT16 ()  uint16_t
  //  defined: NK_INT32 ()  int32_t
  //  defined: NK_UINT32 ()  uint32_t
  //  defined: NK_SIZE_TYPE ()  uintptr_t
  //  defined: NK_POINTER_TYPE ()  uintptr_t
  nk_char = public int8_t;

  nk_uchar = public uint8_t;

  nk_byte = public uint8_t;

  nk_short = public int16_t;

  nk_ushort = public uint16_t;

  nk_int = public int32_t;

  nk_uint = public uint32_t;

  nk_size = public UIntPtr;

  nk_ptr = public UIntPtr;

  nk_hash = public nk_uint;

  nk_flags = public nk_uint;

  nk_rune = public nk_uint;

  // Make sure correct type size:
  //  * This will fire with a negative subscript error if the type sizes
  //  * are set incorrectly by the compiler, and compile out if not
  _dummy_array415 = public array[0..(if (sizeOf(nk_short) = 2) then (1) else (-1)) - 1] of Byte;

  _dummy_array416 = public array[0..(if (sizeOf(nk_ushort) = 2) then (1) else (-1)) - 1] of Byte;

  _dummy_array417 = public array[0..(if (sizeOf(nk_uint) = 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array418 = public array[0..(if (sizeOf(nk_int) = 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array419 = public array[0..(if (sizeOf(nk_byte) = 1) then (1) else (-1)) - 1] of Byte;

  _dummy_array420 = public array[0..(if (sizeOf(nk_flags) ≥ 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array421 = public array[0..(if (sizeOf(nk_rune) ≥ 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array422 = public array[0..(if (sizeOf(nk_size) ≥ sizeOf(^Void)) then (1) else (-1)) - 1] of Byte;

  _dummy_array423 = public array[0..(if (sizeOf(nk_ptr) ≥ sizeOf(^Void)) then (1) else (-1)) - 1] of Byte;

  ___anon0 = public enum (nk_false, nk_true);

  __struct_nk_color = public record
  private

    var r: nk_byte; public;
    var g: nk_byte; public;
    var b: nk_byte; public;
    var a: nk_byte; public;

  end;

  __struct_nk_colorf = public record
  private

    var r: Single; public;
    var g: Single; public;
    var b: Single; public;
    var a: Single; public;

  end;

  __struct_nk_vec2 = public record
  private

    var x: Single; public;
    var y: Single; public;

  end;

  __struct_nk_vec2i = public record
  private

    var x: Int16; public;
    var y: Int16; public;

  end;

  __struct_nk_rect = public record
  private

    var x: Single; public;
    var y: Single; public;
    var w: Single; public;
    var h: Single; public;

  end;

  __struct_nk_recti = public record
  private

    var x: Int16; public;
    var y: Int16; public;
    var w: Int16; public;
    var h: Int16; public;

  end;

  nk_glyph = public array[0..4 - 1] of Byte;

  [&Union]
  nk_handle = public record
  private

    var ptr: ^Void; public;
    var id: Int32; public;

  end;

  __struct_nk_image = public record
  private

    var handle: nk_handle; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var region: array[0..4 - 1] of UInt16; public;

  end;

  __struct_nk_cursor = public record
  private

    var img: __struct_nk_image; public;
    var size: __struct_nk_vec2; public;
    var offset: __struct_nk_vec2; public;

  end;

  __struct_nk_scroll = public record
  private

    var x: nk_uint; public;
    var y: nk_uint; public;

  end;

  __enum_nk_heading = public enum (NK_UP, NK_RIGHT, NK_DOWN, NK_LEFT);

  __enum_nk_button_behavior = public enum (NK_BUTTON_DEFAULT, NK_BUTTON_REPEATER);

  __enum_nk_modify = public enum (NK_FIXED = nk_false, NK_MODIFIABLE = nk_true);

  __enum_nk_orientation = public enum (NK_VERTICAL, NK_HORIZONTAL);

  __enum_nk_collapse_states = public enum (NK_MINIMIZED = nk_false, NK_MAXIMIZED = nk_true);

  __enum_nk_show_states = public enum (NK_HIDDEN = nk_false, NK_SHOWN = nk_true);

  __enum_nk_chart_type = public enum (NK_CHART_LINES, NK_CHART_COLUMN, NK_CHART_MAX);

  __enum_nk_chart_event = public enum (NK_CHART_HOVERING = 1, NK_CHART_CLICKED = 2);

  __enum_nk_color_format = public enum (NK_RGB, NK_RGBA);

  __enum_nk_popup_type = public enum (NK_POPUP_STATIC, NK_POPUP_DYNAMIC);

  __enum_nk_layout_format = public enum (NK_DYNAMIC, NK_STATIC);

  __enum_nk_tree_type = public enum (NK_TREE_NODE, NK_TREE_TAB);

  __fnptrtype0 = public method(arg0: nk_handle; &old: ^Void; arg2: nk_size): ^Void;

  nk_plugin_alloc = public __fnptrtype0;

  __fnptrtype1 = public method(arg0: nk_handle; &old: ^Void);

  nk_plugin_free = public __fnptrtype1;

  __fnptrtype2 = public method(arg0: ^__struct_nk_text_edit; unicode: nk_rune): Int32;

  nk_plugin_filter = public __fnptrtype2;

  __fnptrtype3 = public method(arg0: nk_handle; arg1: ^__struct_nk_text_edit);

  nk_plugin_paste = public __fnptrtype3;

  __fnptrtype4 = public method(arg0: nk_handle; arg1: ^Byte; len: Int32);

  nk_plugin_copy = public __fnptrtype4;

  __struct_nk_allocator = public record
  private

    var userdata: nk_handle; public;
    var alloc: nk_plugin_alloc; public;
    var free: nk_plugin_free; public;

  end;

  __enum_nk_symbol_type = public enum (NK_SYMBOL_NONE, NK_SYMBOL_X, NK_SYMBOL_UNDERSCORE, NK_SYMBOL_CIRCLE_SOLID, NK_SYMBOL_CIRCLE_OUTLINE, NK_SYMBOL_RECT_SOLID, NK_SYMBOL_RECT_OUTLINE, NK_SYMBOL_TRIANGLE_UP, NK_SYMBOL_TRIANGLE_DOWN, NK_SYMBOL_TRIANGLE_LEFT, NK_SYMBOL_TRIANGLE_RIGHT, NK_SYMBOL_PLUS, NK_SYMBOL_MINUS, NK_SYMBOL_MAX);

  // =============================================================================
  //  *
  //  *                                  INPUT
  //  *
  //  * =============================================================================
  // /// ### Input
  // /// The input API is responsible for holding the current input state composed of
  // /// mouse, key and text input states.
  // /// It is worth noting that no direct OS or window handling is done in nuklear.
  // /// Instead all input state has to be provided by platform specific code. This on one hand
  // /// expects more work from the user and complicates usage but on the other hand
  // /// provides simple abstraction over a big number of platforms, libraries and other
  // /// already provided functionality.
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// nk_input_begin(&ctx);
  // /// while (GetEvent(&evt)) {
  // ///     if (evt.type == MOUSE_MOVE)
  // ///         nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  // ///     else if (evt.type == [...]) {
  // ///         // [...]
  // ///     }
  // /// } nk_input_end(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// #### Usage
  // /// Input state needs to be provided to nuklear by first calling `nk_input_begin`
  // /// which resets internal state like delta mouse position and button transistions.
  // /// After `nk_input_begin` all current input state needs to be provided. This includes
  // /// mouse motion, button and key pressed and released, text input and scrolling.
  // /// Both event- or state-based input handling are supported by this API
  // /// and should work without problems. Finally after all input state has been
  // /// mirrored `nk_input_end` needs to be called to finish input process.
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// struct nk_context ctx;
  // /// nk_init_xxx(&ctx, ...);
  // /// while (1) {
  // ///     Event evt;
  // ///     nk_input_begin(&ctx);
  // ///     while (GetEvent(&evt)) {
  // ///         if (evt.type == MOUSE_MOVE)
  // ///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  // ///         else if (evt.type == [...]) {
  // ///             // [...]
  // ///         }
  // ///     }
  // ///     nk_input_end(&ctx);
  // ///     // [...]
  // ///     nk_clear(&ctx);
  // /// } nk_free(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// #### Reference
  // /// Function            | Description
  // /// --------------------|-------------------------------------------------------
  // /// __nk_input_begin__  | Begins the input mirroring process. Needs to be called before all other `nk_input_xxx` calls
  // /// __nk_input_motion__ | Mirrors mouse cursor position
  // /// __nk_input_key__    | Mirrors key state with either pressed or released
  // /// __nk_input_button__ | Mirrors mouse button state with either pressed or released
  // /// __nk_input_scroll__ | Mirrors mouse scroll values
  // /// __nk_input_char__   | Adds a single ASCII text character into an internal text buffer
  // /// __nk_input_glyph__  | Adds a single multi-byte UTF-8 character into an internal text buffer
  // /// __nk_input_unicode__| Adds a single unicode rune into an internal text buffer
  // /// __nk_input_end__    | Ends the input mirroring process by calculating state changes. Don't call any `nk_input_xxx` function referenced above after this call
  __enum_nk_keys = public enum (NK_KEY_NONE, NK_KEY_SHIFT, NK_KEY_CTRL, NK_KEY_DEL, NK_KEY_ENTER, NK_KEY_TAB, NK_KEY_BACKSPACE, NK_KEY_COPY, NK_KEY_CUT, NK_KEY_PASTE, NK_KEY_UP, NK_KEY_DOWN, NK_KEY_LEFT, NK_KEY_RIGHT, NK_KEY_TEXT_INSERT_MODE, NK_KEY_TEXT_REPLACE_MODE, NK_KEY_TEXT_RESET_MODE, NK_KEY_TEXT_LINE_START, NK_KEY_TEXT_LINE_END, NK_KEY_TEXT_START, NK_KEY_TEXT_END, NK_KEY_TEXT_UNDO, NK_KEY_TEXT_REDO, NK_KEY_TEXT_SELECT_ALL, NK_KEY_TEXT_WORD_LEFT, NK_KEY_TEXT_WORD_RIGHT, NK_KEY_SCROLL_START, NK_KEY_SCROLL_END, NK_KEY_SCROLL_DOWN, NK_KEY_SCROLL_UP, NK_KEY_MAX);

  __enum_nk_buttons = public enum (NK_BUTTON_LEFT, NK_BUTTON_MIDDLE, NK_BUTTON_RIGHT, NK_BUTTON_DOUBLE, NK_BUTTON_MAX);

  // =============================================================================
  //  *
  //  *                                  DRAWING
  //  *
  //  * =============================================================================
  // /// ### Drawing
  // /// This library was designed to be render backend agnostic so it does
  // /// not draw anything to screen directly. Instead all drawn shapes, widgets
  // /// are made of, are buffered into memory and make up a command queue.
  // /// Each frame therefore fills the command buffer with draw commands
  // /// that then need to be executed by the user and his own render backend.
  // /// After that the command buffer needs to be cleared and a new frame can be
  // /// started. It is probably important to note that the command buffer is the main
  // /// drawing API and the optional vertex buffer API only takes this format and
  // /// converts it into a hardware accessible format.
  // ///
  // /// #### Usage
  // /// To draw all draw commands accumulated over a frame you need your own render
  // /// backend able to draw a number of 2D primitives. This includes at least
  // /// filled and stroked rectangles, circles, text, lines, triangles and scissors.
  // /// As soon as this criterion is met you can iterate over each draw command
  // /// and execute each draw command in a interpreter like fashion:
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// const struct nk_command *cmd = 0;
  // /// nk_foreach(cmd, &ctx) {
  // ///     switch (cmd->type) {
  // ///     case NK_COMMAND_LINE:
  // ///         your_draw_line_function(...)
  // ///         break;
  // ///     case NK_COMMAND_RECT
  // ///         your_draw_rect_function(...)
  // ///         break;
  // ///     case //...:
  // ///         //[...]
  // ///     }
  // /// }
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// In program flow context draw commands need to be executed after input has been
  // /// gathered and the complete UI with windows and their contained widgets have
  // /// been executed and before calling `nk_clear` which frees all previously
  // /// allocated draw commands.
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// struct nk_context ctx;
  // /// nk_init_xxx(&ctx, ...);
  // /// while (1) {
  // ///     Event evt;
  // ///     nk_input_begin(&ctx);
  // ///     while (GetEvent(&evt)) {
  // ///         if (evt.type == MOUSE_MOVE)
  // ///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  // ///         else if (evt.type == [...]) {
  // ///             [...]
  // ///         }
  // ///     }
  // ///     nk_input_end(&ctx);
  // ///     //
  // ///     // [...]
  // ///     //
  // ///     const struct nk_command *cmd = 0;
  // ///     nk_foreach(cmd, &ctx) {
  // ///     switch (cmd->type) {
  // ///     case NK_COMMAND_LINE:
  // ///         your_draw_line_function(...)
  // ///         break;
  // ///     case NK_COMMAND_RECT
  // ///         your_draw_rect_function(...)
  // ///         break;
  // ///     case ...:
  // ///         // [...]
  // ///     }
  // ///     nk_clear(&ctx);
  // /// }
  // /// nk_free(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// You probably noticed that you have to draw all of the UI each frame which is
  // /// quite wasteful. While the actual UI updating loop is quite fast rendering
  // /// without actually needing it is not. So there are multiple things you could do.
  // ///
  // /// First is only update on input. This of course is only an option if your
  // /// application only depends on the UI and does not require any outside calculations.
  // /// If you actually only update on input make sure to update the UI two times each
  // /// frame and call `nk_clear` directly after the first pass and only draw in
  // /// the second pass. In addition it is recommended to also add additional timers
  // /// to make sure the UI is not drawn more than a fixed number of frames per second.
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// struct nk_context ctx;
  // /// nk_init_xxx(&ctx, ...);
  // /// while (1) {
  // ///     // [...wait for input ]
  // ///     // [...do two UI passes ...]
  // ///     do_ui(...)
  // ///     nk_clear(&ctx);
  // ///     do_ui(...)
  // ///     //
  // ///     // draw
  // ///     const struct nk_command *cmd = 0;
  // ///     nk_foreach(cmd, &ctx) {
  // ///     switch (cmd->type) {
  // ///     case NK_COMMAND_LINE:
  // ///         your_draw_line_function(...)
  // ///         break;
  // ///     case NK_COMMAND_RECT
  // ///         your_draw_rect_function(...)
  // ///         break;
  // ///     case ...:
  // ///         //[...]
  // ///     }
  // ///     nk_clear(&ctx);
  // /// }
  // /// nk_free(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// The second probably more applicable trick is to only draw if anything changed.
  // /// It is not really useful for applications with continuous draw loop but
  // /// quite useful for desktop applications. To actually get nuklear to only
  // /// draw on changes you first have to define `NK_ZERO_COMMAND_MEMORY` and
  // /// allocate a memory buffer that will store each unique drawing output.
  // /// After each frame you compare the draw command memory inside the library
  // /// with your allocated buffer by memcmp. If memcmp detects differences
  // /// you have to copy the command buffer into the allocated buffer
  // /// and then draw like usual (this example uses fixed memory but you could
  // /// use dynamically allocated memory).
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// //[... other defines ...]
  // /// #define NK_ZERO_COMMAND_MEMORY
  // /// #include "nuklear.h"
  // /// //
  // /// // setup context
  // /// struct nk_context ctx;
  // /// void *last = calloc(1,64*1024);
  // /// void *buf = calloc(1,64*1024);
  // /// nk_init_fixed(&ctx, buf, 64*1024);
  // /// //
  // /// // loop
  // /// while (1) {
  // ///     // [...input...]
  // ///     // [...ui...]
  // ///     void *cmds = nk_buffer_memory(&ctx.memory);
  // ///     if (memcmp(cmds, last, ctx.memory.allocated)) {
  // ///         memcpy(last,cmds,ctx.memory.allocated);
  // ///         const struct nk_command *cmd = 0;
  // ///         nk_foreach(cmd, &ctx) {
  // ///             switch (cmd->type) {
  // ///             case NK_COMMAND_LINE:
  // ///                 your_draw_line_function(...)
  // ///                 break;
  // ///             case NK_COMMAND_RECT
  // ///                 your_draw_rect_function(...)
  // ///                 break;
  // ///             case ...:
  // ///                 // [...]
  // ///             }
  // ///         }
  // ///     }
  // ///     nk_clear(&ctx);
  // /// }
  // /// nk_free(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// Finally while using draw commands makes sense for higher abstracted platforms like
  // /// X11 and Win32 or drawing libraries it is often desirable to use graphics
  // /// hardware directly. Therefore it is possible to just define
  // /// `NK_INCLUDE_VERTEX_BUFFER_OUTPUT` which includes optional vertex output.
  // /// To access the vertex output you first have to convert all draw commands into
  // /// vertexes by calling `nk_convert` which takes in your preferred vertex format.
  // /// After successfully converting all draw commands just iterate over and execute all
  // /// vertex draw commands:
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// // fill configuration
  // /// struct your_vertex
  // /// {
  // ///     float pos[2]; // important to keep it to 2 floats
  // ///     float uv[2];
  // ///     unsigned char col[4];
  // /// };
  // /// struct nk_convert_config cfg = {};
  // /// static const struct nk_draw_vertex_layout_element vertex_layout[] = {
  // ///     {NK_VERTEX_POSITION, NK_FORMAT_FLOAT, NK_OFFSETOF(struct your_vertex, pos)},
  // ///     {NK_VERTEX_TEXCOORD, NK_FORMAT_FLOAT, NK_OFFSETOF(struct your_vertex, uv)},
  // ///     {NK_VERTEX_COLOR, NK_FORMAT_R8G8B8A8, NK_OFFSETOF(struct your_vertex, col)},
  // ///     {NK_VERTEX_LAYOUT_END}
  // /// };
  // /// cfg.shape_AA = NK_ANTI_ALIASING_ON;
  // /// cfg.line_AA = NK_ANTI_ALIASING_ON;
  // /// cfg.vertex_layout = vertex_layout;
  // /// cfg.vertex_size = sizeof(struct your_vertex);
  // /// cfg.vertex_alignment = NK_ALIGNOF(struct your_vertex);
  // /// cfg.circle_segment_count = 22;
  // /// cfg.curve_segment_count = 22;
  // /// cfg.arc_segment_count = 22;
  // /// cfg.global_alpha = 1.0f;
  // /// cfg.null = dev->null;
  // /// //
  // /// // setup buffers and convert
  // /// struct nk_buffer cmds, verts, idx;
  // /// nk_buffer_init_default(&cmds);
  // /// nk_buffer_init_default(&verts);
  // /// nk_buffer_init_default(&idx);
  // /// nk_convert(&ctx, &cmds, &verts, &idx, &cfg);
  // /// //
  // /// // draw
  // /// nk_draw_foreach(cmd, &ctx, &cmds) {
  // /// if (!cmd->elem_count) continue;
  // ///     //[...]
  // /// }
  // /// nk_buffer_free(&cms);
  // /// nk_buffer_free(&verts);
  // /// nk_buffer_free(&idx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// #### Reference
  // /// Function            | Description
  // /// --------------------|-------------------------------------------------------
  // /// __nk__begin__       | Returns the first draw command in the context draw command list to be drawn
  // /// __nk__next__        | Increments the draw command iterator to the next command inside the context draw command list
  // /// __nk_foreach__      | Iterates over each draw command inside the context draw command list
  // /// __nk_convert__      | Converts from the abstract draw commands list into a hardware accessible vertex format
  // /// __nk_draw_begin__   | Returns the first vertex command in the context vertex draw list to be executed
  // /// __nk__draw_next__   | Increments the vertex command iterator to the next command inside the context vertex command list
  // /// __nk__draw_end__    | Returns the end of the vertex draw list
  // /// __nk_draw_foreach__ | Iterates over each vertex draw command inside the vertex draw list
  __enum_nk_anti_aliasing = public enum (NK_ANTI_ALIASING_OFF, NK_ANTI_ALIASING_ON);

  __enum_nk_convert_result = public enum (NK_CONVERT_SUCCESS = 0, NK_CONVERT_INVALID_PARAM = 1, NK_CONVERT_COMMAND_BUFFER_FULL = (1 shl 1), NK_CONVERT_VERTEX_BUFFER_FULL = (1 shl 2), NK_CONVERT_ELEMENT_BUFFER_FULL = (1 shl 3));

  __struct_nk_draw_null_texture = public record
  private

    var texture: nk_handle; public;
    // texture handle to a texture with a white pixel
    var uv: __struct_nk_vec2; public;

  end;

  __struct_nk_convert_config = public record
  private

    var global_alpha: Single; public;
    // global alpha value
    var line_AA: __enum_nk_anti_aliasing; public;
    // line anti-aliasing flag can be turned off if you are tight on memory
    var shape_AA: __enum_nk_anti_aliasing; public;
    // shape anti-aliasing flag can be turned off if you are tight on memory
    var circle_segment_count: UInt32; public;
    // number of segments used for circles: default to 22
    var arc_segment_count: UInt32; public;
    // number of segments used for arcs: default to 22
    var curve_segment_count: UInt32; public;
    // number of segments used for curves: default to 22
    var null: __struct_nk_draw_null_texture; public;
    // handle to texture with a white pixel for shape drawing
    var vertex_layout: ^__struct_nk_draw_vertex_layout_element; public;
    // describes the vertex output format and packing
    var vertex_size: nk_size; public;
    // sizeof one vertex for vertex packing
    var vertex_alignment: nk_size; public;

  end;

  // /// #### nk_foreach
  // /// Iterates over each draw command inside the context draw command list
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// #define nk_foreach(c, ctx)
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// Parameter   | Description
  // /// ------------|-----------------------------------------------------------
  // /// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  // /// __cmd__     | Command pointer initialized to NULL
  // ///
  // /// Iterates over each draw command inside the context draw command list
  //  defined: nk_foreach (c,ctx) for((c) = nk__begin(ctx); (c) != 0; (c) = nk__next(ctx,c))
  //  =============================================================================
  //  *
  //  *                                  WINDOW
  //  *
  //  * =============================================================================
  // /// ### Window
  // /// Windows are the main persistent state used inside nuklear and are life time
  // /// controlled by simply "retouching" (i.e. calling) each window each frame.
  // /// All widgets inside nuklear can only be added inside the function pair `nk_begin_xxx`
  // /// and `nk_end`. Calling any widgets outside these two functions will result in an
  // /// assert in debug or no state change in release mode.<br /><br />
  // ///
  // /// Each window holds frame persistent state like position, size, flags, state tables,
  // /// and some garbage collected internal persistent widget state. Each window
  // /// is linked into a window stack list which determines the drawing and overlapping
  // /// order. The topmost window thereby is the currently active window.<br /><br />
  // ///
  // /// To change window position inside the stack occurs either automatically by
  // /// user input by being clicked on or programmatically by calling `nk_window_focus`.
  // /// Windows by default are visible unless explicitly being defined with flag
  // /// `NK_WINDOW_HIDDEN`, the user clicked the close button on windows with flag
  // /// `NK_WINDOW_CLOSABLE` or if a window was explicitly hidden by calling
  // /// `nk_window_show`. To explicitly close and destroy a window call `nk_window_close`.<br /><br />
  // ///
  // /// #### Usage
  // /// To create and keep a window you have to call one of the two `nk_begin_xxx`
  // /// functions to start window declarations and `nk_end` at the end. Furthermore it
  // /// is recommended to check the return value of `nk_begin_xxx` and only process
  // /// widgets inside the window if the value is not 0. Either way you have to call
  // /// `nk_end` at the end of window declarations. Furthermore, do not attempt to
  // /// nest `nk_begin_xxx` calls which will hopefully result in an assert or if not
  // /// in a segmentation fault.
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// if (nk_begin_xxx(...) {
  // ///     // [... widgets ...]
  // /// }
  // /// nk_end(ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// In the grand concept window and widget declarations need to occur after input
  // /// handling and before drawing to screen. Not doing so can result in higher
  // /// latency or at worst invalid behavior. Furthermore make sure that `nk_clear`
  // /// is called at the end of the frame. While nuklear's default platform backends
  // /// already call `nk_clear` for you if you write your own backend not calling
  // /// `nk_clear` can cause asserts or even worse undefined behavior.
  // ///
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  // /// struct nk_context ctx;
  // /// nk_init_xxx(&ctx, ...);
  // /// while (1) {
  // ///     Event evt;
  // ///     nk_input_begin(&ctx);
  // ///     while (GetEvent(&evt)) {
  // ///         if (evt.type == MOUSE_MOVE)
  // ///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  // ///         else if (evt.type == [...]) {
  // ///             nk_input_xxx(...);
  // ///         }
  // ///     }
  // ///     nk_input_end(&ctx);
  // ///
  // ///     if (nk_begin_xxx(...) {
  // ///         //[...]
  // ///     }
  // ///     nk_end(ctx);
  // ///
  // ///     const struct nk_command *cmd = 0;
  // ///     nk_foreach(cmd, &ctx) {
  // ///     case NK_COMMAND_LINE:
  // ///         your_draw_line_function(...)
  // ///         break;
  // ///     case NK_COMMAND_RECT
  // ///         your_draw_rect_function(...)
  // ///         break;
  // ///     case //...:
  // ///         //[...]
  // ///     }
  // ///     nk_clear(&ctx);
  // /// }
  // /// nk_free(&ctx);
  // /// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // ///
  // /// #### Reference
  // /// Function                            | Description
  // /// ------------------------------------|----------------------------------------
  // /// nk_begin                            | Starts a new window; needs to be called every frame for every window (unless hidden) or otherwise the window gets removed
  // /// nk_begin_titled                     | Extended window start with separated title and identifier to allow multiple windows with same name but not title
  // /// nk_end                              | Needs to be called at the end of the window building process to process scaling, scrollbars and general cleanup
  // //
  // /// nk_window_find                      | Finds and returns the window with give name
  // /// nk_window_get_bounds                | Returns a rectangle with screen position and size of the currently processed window.
  // /// nk_window_get_position              | Returns the position of the currently processed window
  // /// nk_window_get_size                  | Returns the size with width and height of the currently processed window
  // /// nk_window_get_width                 | Returns the width of the currently processed window
  // /// nk_window_get_height                | Returns the height of the currently processed window
  // /// nk_window_get_panel                 | Returns the underlying panel which contains all processing state of the current window
  // /// nk_window_get_content_region        | Returns the position and size of the currently visible and non-clipped space inside the currently processed window
  // /// nk_window_get_content_region_min    | Returns the upper rectangle position of the currently visible and non-clipped space inside the currently processed window
  // /// nk_window_get_content_region_max    | Returns the upper rectangle position of the currently visible and non-clipped space inside the currently processed window
  // /// nk_window_get_content_region_size   | Returns the size of the currently visible and non-clipped space inside the currently processed window
  // /// nk_window_get_canvas                | Returns the draw command buffer. Can be used to draw custom widgets
  // /// nk_window_has_focus                 | Returns if the currently processed window is currently active
  // /// nk_window_is_collapsed              | Returns if the window with given name is currently minimized/collapsed
  // /// nk_window_is_closed                 | Returns if the currently processed window was closed
  // /// nk_window_is_hidden                 | Returns if the currently processed window was hidden
  // /// nk_window_is_active                 | Same as nk_window_has_focus for some reason
  // /// nk_window_is_hovered                | Returns if the currently processed window is currently being hovered by mouse
  // /// nk_window_is_any_hovered            | Return if any window currently hovered
  // /// nk_item_is_any_active               | Returns if any window or widgets is currently hovered or active
  // //
  // /// nk_window_set_bounds                | Updates position and size of the currently processed window
  // /// nk_window_set_position              | Updates position of the currently process window
  // /// nk_window_set_size                  | Updates the size of the currently processed window
  // /// nk_window_set_focus                 | Set the currently processed window as active window
  // //
  // /// nk_window_close                     | Closes the window with given window name which deletes the window at the end of the frame
  // /// nk_window_collapse                  | Collapses the window with given window name
  // /// nk_window_collapse_if               | Collapses the window with given window name if the given condition was met
  // /// nk_window_show                      | Hides a visible or reshows a hidden window
  // /// nk_window_show_if                   | Hides/shows a window depending on condition
  // /// #### nk_panel_flags
  // /// Flag                        | Description
  // /// ----------------------------|----------------------------------------
  // /// NK_WINDOW_BORDER            | Draws a border around the window to visually separate window from the background
  // /// NK_WINDOW_MOVABLE           | The movable flag indicates that a window can be moved by user input or by dragging the window header
  // /// NK_WINDOW_SCALABLE          | The scalable flag indicates that a window can be scaled by user input by dragging a scaler icon at the button of the window
  // /// NK_WINDOW_CLOSABLE          | Adds a closable icon into the header
  // /// NK_WINDOW_MINIMIZABLE       | Adds a minimize icon into the header
  // /// NK_WINDOW_NO_SCROLLBAR      | Removes the scrollbar from the window
  // /// NK_WINDOW_TITLE             | Forces a header at the top at the window showing the title
  // /// NK_WINDOW_SCROLL_AUTO_HIDE  | Automatically hides the window scrollbar if no user interaction: also requires delta time in `nk_context` to be set each frame
  // /// NK_WINDOW_BACKGROUND        | Always keep window in the background
  // /// NK_WINDOW_SCALE_LEFT        | Puts window scaler in the left-bottom corner instead right-bottom
  // /// NK_WINDOW_NO_INPUT          | Prevents window of scaling, moving or getting focus
  // ///
  // /// #### nk_collapse_states
  // /// State           | Description
  // /// ----------------|-----------------------------------------------------------
  // /// __NK_MINIMIZED__| UI section is collased and not visibile until maximized
  // /// __NK_MAXIMIZED__| UI section is extended and visibile until minimized
  // /// <br /><br />
  __enum_nk_panel_flags = public enum (NK_WINDOW_BORDER = (1 shl 0), NK_WINDOW_MOVABLE = (1 shl 1), NK_WINDOW_SCALABLE = (1 shl 2), NK_WINDOW_CLOSABLE = (1 shl 3), NK_WINDOW_MINIMIZABLE = (1 shl 4), NK_WINDOW_NO_SCROLLBAR = (1 shl 5), NK_WINDOW_TITLE = (1 shl 6), NK_WINDOW_SCROLL_AUTO_HIDE = (1 shl 7), NK_WINDOW_BACKGROUND = (1 shl 8), NK_WINDOW_SCALE_LEFT = (1 shl 9), NK_WINDOW_NO_INPUT = (1 shl 10));

  // =============================================================================
  //  *
  //  *                                  LIST VIEW
  //  *
  //  * =============================================================================
  __struct_nk_list_view = public record
  private

    // public:
    var &begin: Int32; public;
    // public:
    var &end: Int32; public;
    // public:
    var count: Int32; public;
    // private:
    var total_height: Int32; public;
    var ctx: ^__struct_nk_context; public;
    var scroll_pointer: ^nk_uint; public;
    var scroll_value: nk_uint; public;

  end;

  // =============================================================================
  //  *
  //  *                                  WIDGET
  //  *
  //  * =============================================================================
  __enum_nk_widget_layout_states = public enum (NK_WIDGET_INVALID, NK_WIDGET_VALID, NK_WIDGET_ROM);

  __enum_nk_widget_states = public enum (NK_WIDGET_STATE_MODIFIED = (1 shl 1), NK_WIDGET_STATE_INACTIVE = (1 shl 2), NK_WIDGET_STATE_ENTERED = (1 shl 3), NK_WIDGET_STATE_HOVER = (1 shl 4), NK_WIDGET_STATE_ACTIVED = (1 shl 5), NK_WIDGET_STATE_LEFT = (1 shl 6), NK_WIDGET_STATE_HOVERED = (NK_WIDGET_STATE_HOVER or NK_WIDGET_STATE_MODIFIED), NK_WIDGET_STATE_ACTIVE = (NK_WIDGET_STATE_ACTIVED or NK_WIDGET_STATE_MODIFIED));

  // =============================================================================
  //  *
  //  *                                  TEXT
  //  *
  //  * =============================================================================
  __enum_nk_text_align = public enum (NK_TEXT_ALIGN_LEFT = 1, NK_TEXT_ALIGN_CENTERED = 2, NK_TEXT_ALIGN_RIGHT = 4, NK_TEXT_ALIGN_TOP = 8, NK_TEXT_ALIGN_MIDDLE = 16, NK_TEXT_ALIGN_BOTTOM = 32);

  __enum_nk_text_alignment = public enum (NK_TEXT_LEFT = (NK_TEXT_ALIGN_MIDDLE or NK_TEXT_ALIGN_LEFT), NK_TEXT_CENTERED = (NK_TEXT_ALIGN_MIDDLE or NK_TEXT_ALIGN_CENTERED), NK_TEXT_RIGHT = (NK_TEXT_ALIGN_MIDDLE or NK_TEXT_ALIGN_RIGHT));

  // =============================================================================
  //  *
  //  *                                  TEXT EDIT
  //  *
  //  * =============================================================================
  __enum_nk_edit_flags = public enum (NK_EDIT_DEFAULT = 0, NK_EDIT_READ_ONLY = (1 shl 0), NK_EDIT_AUTO_SELECT = (1 shl 1), NK_EDIT_SIG_ENTER = (1 shl 2), NK_EDIT_ALLOW_TAB = (1 shl 3), NK_EDIT_NO_CURSOR = (1 shl 4), NK_EDIT_SELECTABLE = (1 shl 5), NK_EDIT_CLIPBOARD = (1 shl 6), NK_EDIT_CTRL_ENTER_NEWLINE = (1 shl 7), NK_EDIT_NO_HORIZONTAL_SCROLL = (1 shl 8), NK_EDIT_ALWAYS_INSERT_MODE = (1 shl 9), NK_EDIT_MULTILINE = (1 shl 10), NK_EDIT_GOTO_END_ON_ACTIVATE = (1 shl 11));

  __enum_nk_edit_types = public enum (NK_EDIT_SIMPLE = NK_EDIT_ALWAYS_INSERT_MODE, NK_EDIT_FIELD = ((NK_EDIT_SIMPLE or NK_EDIT_SELECTABLE) or NK_EDIT_CLIPBOARD), NK_EDIT_BOX = ((((NK_EDIT_ALWAYS_INSERT_MODE or NK_EDIT_SELECTABLE) or NK_EDIT_MULTILINE) or NK_EDIT_ALLOW_TAB) or NK_EDIT_CLIPBOARD), NK_EDIT_EDITOR = (((NK_EDIT_SELECTABLE or NK_EDIT_MULTILINE) or NK_EDIT_ALLOW_TAB) or NK_EDIT_CLIPBOARD));

  __enum_nk_edit_events = public enum (NK_EDIT_ACTIVE = (1 shl 0), NK_EDIT_INACTIVE = (1 shl 1), NK_EDIT_ACTIVATED = (1 shl 2), NK_EDIT_DEACTIVATED = (1 shl 3), NK_EDIT_COMMITED = (1 shl 4));

  // =============================================================================
  //  *
  //  *                                  STYLE
  //  *
  //  * =============================================================================
  __enum_nk_style_colors = public enum (NK_COLOR_TEXT, NK_COLOR_WINDOW, NK_COLOR_HEADER, NK_COLOR_BORDER, NK_COLOR_BUTTON, NK_COLOR_BUTTON_HOVER, NK_COLOR_BUTTON_ACTIVE, NK_COLOR_TOGGLE, NK_COLOR_TOGGLE_HOVER, NK_COLOR_TOGGLE_CURSOR, NK_COLOR_SELECT, NK_COLOR_SELECT_ACTIVE, NK_COLOR_SLIDER, NK_COLOR_SLIDER_CURSOR, NK_COLOR_SLIDER_CURSOR_HOVER, NK_COLOR_SLIDER_CURSOR_ACTIVE, NK_COLOR_PROPERTY, NK_COLOR_EDIT, NK_COLOR_EDIT_CURSOR, NK_COLOR_COMBO, NK_COLOR_CHART, NK_COLOR_CHART_COLOR, NK_COLOR_CHART_COLOR_HIGHLIGHT, NK_COLOR_SCROLLBAR, NK_COLOR_SCROLLBAR_CURSOR, NK_COLOR_SCROLLBAR_CURSOR_HOVER, NK_COLOR_SCROLLBAR_CURSOR_ACTIVE, NK_COLOR_TAB_HEADER, NK_COLOR_COUNT);

  __enum_nk_style_cursor = public enum (NK_CURSOR_ARROW, NK_CURSOR_TEXT, NK_CURSOR_MOVE, NK_CURSOR_RESIZE_VERTICAL, NK_CURSOR_RESIZE_HORIZONTAL, NK_CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT, NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT, NK_CURSOR_COUNT);

  __fnptrtype5 = public method(arg0: nk_handle; h: Single; arg2: ^Byte; len: Int32): Single;

  nk_text_width_f = public __fnptrtype5;

  __fnptrtype6 = public method(handle: nk_handle; font_height: Single; glyph: ^__struct_nk_user_font_glyph; codepoint: nk_rune; next_codepoint: nk_rune);

  nk_query_font_glyph_f = public __fnptrtype6;

  __struct_nk_user_font = public record
  private

    var userdata: nk_handle; public;
    // user provided font handle
    var height: Single; public;
    // max height of the font
    var width: nk_text_width_f; public;

  end;

  __enum_nk_font_coord_type = public enum (NK_COORD_UV, NK_COORD_PIXEL);

  __struct_nk_baked_font = public record
  private

    var height: Single; public;
    // height of the font
    var ascent: Single; public;
    // height of the font
    var descent: Single; public;
    // font glyphs ascent and descent
    var glyph_offset: nk_rune; public;
    // glyph array offset inside the font glyph baking output array
    var glyph_count: nk_rune; public;
    // number of glyphs of this font inside the glyph baking array output
    var ranges: ^nk_rune; public;

  end;

  __struct_nk_font_config = public record
  private

    var next: ^__struct_nk_font_config; public;
    // NOTE: only used internally
    var ttf_blob: ^Void; public;
    // pointer to loaded TTF file memory block.
    //      * NOTE: not needed for nk_font_atlas_add_from_memory and nk_font_atlas_add_from_file.
    var ttf_size: nk_size; public;
    // size of the loaded TTF file memory block
    //      * NOTE: not needed for nk_font_atlas_add_from_memory and nk_font_atlas_add_from_file.
    var ttf_data_owned_by_atlas: Byte; public;
    // used inside font atlas: default to: 0
    var merge_mode: Byte; public;
    // merges this font into the last font
    var pixel_snap: Byte; public;
    // align every character to pixel boundary (if true set oversample (1,1))
    var oversample_v: Byte; public;
    // align every character to pixel boundary (if true set oversample (1,1))
    var oversample_h: Byte; public;
    // rasterize at hight quality for sub-pixel position
    var padding: array[0..3 - 1] of Byte; public;
    var size: Single; public;
    // baked pixel height of the font
    var coord_type: __enum_nk_font_coord_type; public;
    // texture coordinate format with either pixel or UV coordinates
    var spacing: __struct_nk_vec2; public;
    // extra pixel spacing between glyphs
    var range: ^nk_rune; public;
    // list of unicode ranges (2 values per range, zero terminated)
    var font: ^__struct_nk_baked_font; public;
    // font to setup in the baking process: NOTE: not needed for font atlas
    var fallback_glyph: nk_rune; public;
    // fallback glyph to use if a given rune is not found
    var n: ^__struct_nk_font_config; public;
    var p: ^__struct_nk_font_config; public;

  end;

  __struct_nk_font_glyph = public record
  private

    var codepoint: nk_rune; public;
    var xadvance: Single; public;
    var x0: Single; public;
    var y0: Single; public;
    var x1: Single; public;
    var y1: Single; public;
    var w: Single; public;
    var h: Single; public;
    var u0: Single; public;
    var v0: Single; public;
    var u1: Single; public;
    var v1: Single; public;

  end;

  __struct_nk_font = public record
  private

    var next: ^__struct_nk_font; public;
    var handle: __struct_nk_user_font; public;
    var info: __struct_nk_baked_font; public;
    var scale: Single; public;
    var glyphs: ^__struct_nk_font_glyph; public;
    var fallback: ^__struct_nk_font_glyph; public;
    var fallback_codepoint: nk_rune; public;
    var texture: nk_handle; public;
    var config: ^__struct_nk_font_config; public;

  end;

  __enum_nk_font_atlas_format = public enum (NK_FONT_ATLAS_ALPHA8, NK_FONT_ATLAS_RGBA32);

  __struct_nk_font_atlas = public record
  private

    var pixel: ^Void; public;
    var tex_width: Int32; public;
    var tex_height: Int32; public;
    var permanent: __struct_nk_allocator; public;
    var temporary: __struct_nk_allocator; public;
    var custom: __struct_nk_recti; public;
    var cursors: array[0..NK_CURSOR_COUNT - 1] of __struct_nk_cursor; public;
    var glyph_count: Int32; public;
    var glyphs: ^__struct_nk_font_glyph; public;
    var default_font: ^__struct_nk_font; public;
    var fonts: ^__struct_nk_font; public;
    var config: ^__struct_nk_font_config; public;
    var font_num: Int32; public;

  end;

  // ==============================================================
  //  *
  //  *                          MEMORY BUFFER
  //  *
  //  * ===============================================================
  //   A basic (double)-buffer with linear allocation and resetting as only
  //     freeing policy. The buffer's main purpose is to control all memory management
  //     inside the GUI toolkit and still leave memory control as much as possible in
  //     the hand of the user while also making sure the library is easy to use if
  //     not as much control is needed.
  //     In general all memory inside this library can be provided from the user in
  //     three different ways.
  //     The first way and the one providing most control is by just passing a fixed
  //     size memory block. In this case all control lies in the hand of the user
  //     since he can exactly control where the memory comes from and how much memory
  //     the library should consume. Of course using the fixed size API removes the
  //     ability to automatically resize a buffer if not enough memory is provided so
  //     you have to take over the resizing. While being a fixed sized buffer sounds
  //     quite limiting, it is very effective in this library since the actual memory
  //     consumption is quite stable and has a fixed upper bound for a lot of cases.
  //     If you don't want to think about how much memory the library should allocate
  //     at all time or have a very dynamic UI with unpredictable memory consumption
  //     habits but still want control over memory allocation you can use the dynamic
  //     allocator based API. The allocator consists of two callbacks for allocating
  //     and freeing memory and optional userdata so you can plugin your own allocator.
  //     The final and easiest way can be used by defining
  //     NK_INCLUDE_DEFAULT_ALLOCATOR which uses the standard library memory
  //     allocation functions malloc and free and takes over complete control over
  //     memory in this library.
  __struct_nk_memory_status = public record
  private

    var memory: ^Void; public;
    var &type: UInt32; public;
    var size: nk_size; public;
    var allocated: nk_size; public;
    var needed: nk_size; public;
    var calls: nk_size; public;

  end;

  __enum_nk_allocation_type = public enum (NK_BUFFER_FIXED, NK_BUFFER_DYNAMIC);

  __enum_nk_buffer_allocation_type = public enum (NK_BUFFER_FRONT, NK_BUFFER_BACK, NK_BUFFER_MAX);

  __struct_nk_buffer_marker = public record
  private

    var active: Int32; public;
    var offset: nk_size; public;

  end;

  __struct_nk_memory = public record
  private

    var ptr: ^Void; public;
    var size: nk_size; public;

  end;

  __struct_nk_buffer = public record
  private

    var marker: array[0..NK_BUFFER_MAX - 1] of __struct_nk_buffer_marker; public;
    // buffer marker to free a buffer to a certain offset
    var pool: __struct_nk_allocator; public;
    // allocator callback for dynamic buffers
    var &type: __enum_nk_allocation_type; public;
    // memory management type
    var memory: __struct_nk_memory; public;
    // memory and size of the current memory block
    var grow_factor: Single; public;
    // growing factor for dynamic memory management
    var allocated: nk_size; public;
    // total amount of memory allocated
    var needed: nk_size; public;
    // totally consumed memory given that enough memory is present
    var calls: nk_size; public;
    // number of allocation calls
    var size: nk_size; public;

  end;

  // ==============================================================
  //  *
  //  *                          STRING
  //  *
  //  * ===============================================================
  //   Basic string buffer which is only used in context with the text editor
  //  *  to manage and manipulate dynamic or fixed size string content. This is _NOT_
  //  *  the default string handling method. The only instance you should have any contact
  //  *  with this API is if you interact with an `nk_text_edit` object inside one of the
  //  *  copy and paste functions and even there only for more advanced cases.
  __struct_nk_str = public record
  private

    var buffer: __struct_nk_buffer; public;
    var len: Int32; public;

  end;

  __struct_nk_clipboard = public record
  private

    var userdata: nk_handle; public;
    var paste: nk_plugin_paste; public;
    var copy: nk_plugin_copy; public;

  end;

  __struct_nk_text_undo_record = public record
  private

    var &where: Int32; public;
    var insert_length: Int16; public;
    var delete_length: Int16; public;
    var char_storage: Int16; public;

  end;

  __struct_nk_text_undo_state = public record
  private

    var undo_rec: array[0..99 - 1] of __struct_nk_text_undo_record; public;
    var undo_char: array[0..999 - 1] of nk_rune; public;
    var undo_point: Int16; public;
    var redo_point: Int16; public;
    var undo_char_point: Int16; public;
    var redo_char_point: Int16; public;

  end;

  __enum_nk_text_edit_type = public enum (NK_TEXT_EDIT_SINGLE_LINE, NK_TEXT_EDIT_MULTI_LINE);

  __enum_nk_text_edit_mode = public enum (NK_TEXT_EDIT_MODE_VIEW, NK_TEXT_EDIT_MODE_INSERT, NK_TEXT_EDIT_MODE_REPLACE);

  __struct_nk_text_edit = public record
  private

    var clip: __struct_nk_clipboard; public;
    var string: __struct_nk_str; public;
    var filter: nk_plugin_filter; public;
    var scrollbar: __struct_nk_vec2; public;
    var cursor: Int32; public;
    var select_start: Int32; public;
    var select_end: Int32; public;
    var mode: Byte; public;
    var cursor_at_end_of_line: Byte; public;
    var initialized: Byte; public;
    var has_preferred_x: Byte; public;
    var single_line: Byte; public;
    var active: Byte; public;
    var padding1: Byte; public;
    var preferred_x: Single; public;
    var undo: __struct_nk_text_undo_state; public;

  end;

  // ===============================================================
  //  *
  //  *                          DRAWING
  //  *
  //  * ===============================================================
  //   This library was designed to be render backend agnostic so it does
  //     not draw anything to screen. Instead all drawn shapes, widgets
  //     are made of, are buffered into memory and make up a command queue.
  //     Each frame therefore fills the command buffer with draw commands
  //     that then need to be executed by the user and his own render backend.
  //     After that the command buffer needs to be cleared and a new frame can be
  //     started. It is probably important to note that the command buffer is the main
  //     drawing API and the optional vertex buffer API only takes this format and
  //     converts it into a hardware accessible format.
  //     To use the command queue to draw your own widgets you can access the
  //     command buffer of each window by calling `nk_window_get_canvas` after
  //     previously having called `nk_begin`:
  //         void draw_red_rectangle_widget(struct nk_context *ctx)
  //         {
  //             struct nk_command_buffer *canvas;
  //             struct nk_input *input = &ctx->input;
  //             canvas = nk_window_get_canvas(ctx);
  //             struct nk_rect space;
  //             enum nk_widget_layout_states state;
  //             state = nk_widget(&space, ctx);
  //             if (!state) return;
  //             if (state != NK_WIDGET_ROM)
  //                 update_your_widget_by_user_input(...);
  //             nk_fill_rect(canvas, space, 0, nk_rgb(255,0,0));
  //         }
  //         if (nk_begin(...)) {
  //             nk_layout_row_dynamic(ctx, 25, 1);
  //             draw_red_rectangle_widget(ctx);
  //         }
  //         nk_end(..)
  //     Important to know if you want to create your own widgets is the `nk_widget`
  //     call. It allocates space on the panel reserved for this widget to be used,
  //     but also returns the state of the widget space. If your widget is not seen and does
  //     not have to be updated it is '0' and you can just return. If it only has
  //     to be drawn the state will be `NK_WIDGET_ROM` otherwise you can do both
  //     update and draw your widget. The reason for separating is to only draw and
  //     update what is actually necessary which is crucial for performance.
  __enum_nk_command_type = public enum (NK_COMMAND_NOP, NK_COMMAND_SCISSOR, NK_COMMAND_LINE, NK_COMMAND_CURVE, NK_COMMAND_RECT, NK_COMMAND_RECT_FILLED, NK_COMMAND_RECT_MULTI_COLOR, NK_COMMAND_CIRCLE, NK_COMMAND_CIRCLE_FILLED, NK_COMMAND_ARC, NK_COMMAND_ARC_FILLED, NK_COMMAND_TRIANGLE, NK_COMMAND_TRIANGLE_FILLED, NK_COMMAND_POLYGON, NK_COMMAND_POLYGON_FILLED, NK_COMMAND_POLYLINE, NK_COMMAND_TEXT, NK_COMMAND_IMAGE, NK_COMMAND_CUSTOM);

  // command base and header of every command inside the buffer
  __struct_nk_command = public record
  private

    var &type: __enum_nk_command_type; public;
    var next: nk_size; public;

  end;

  __struct_nk_command_scissor = public record
  private

    var header: __struct_nk_command; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;

  end;

  __struct_nk_command_line = public record
  private

    var header: __struct_nk_command; public;
    var line_thickness: UInt16; public;
    var &begin: __struct_nk_vec2i; public;
    var &end: __struct_nk_vec2i; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_curve = public record
  private

    var header: __struct_nk_command; public;
    var line_thickness: UInt16; public;
    var &begin: __struct_nk_vec2i; public;
    var &end: __struct_nk_vec2i; public;
    var ctrl: array[0..2 - 1] of __struct_nk_vec2i; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_rect = public record
  private

    var header: __struct_nk_command; public;
    var rounding: UInt16; public;
    var line_thickness: UInt16; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_rect_filled = public record
  private

    var header: __struct_nk_command; public;
    var rounding: UInt16; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_rect_multi_color = public record
  private

    var header: __struct_nk_command; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var left: __struct_nk_color; public;
    var top: __struct_nk_color; public;
    var bottom: __struct_nk_color; public;
    var right: __struct_nk_color; public;

  end;

  __struct_nk_command_triangle = public record
  private

    var header: __struct_nk_command; public;
    var line_thickness: UInt16; public;
    var a: __struct_nk_vec2i; public;
    var b: __struct_nk_vec2i; public;
    var c: __struct_nk_vec2i; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_triangle_filled = public record
  private

    var header: __struct_nk_command; public;
    var a: __struct_nk_vec2i; public;
    var b: __struct_nk_vec2i; public;
    var c: __struct_nk_vec2i; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_circle = public record
  private

    var header: __struct_nk_command; public;
    var x: Int16; public;
    var y: Int16; public;
    var line_thickness: UInt16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_circle_filled = public record
  private

    var header: __struct_nk_command; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_arc = public record
  private

    var header: __struct_nk_command; public;
    var cx: Int16; public;
    var cy: Int16; public;
    var r: UInt16; public;
    var line_thickness: UInt16; public;
    var a: array[0..2 - 1] of Single; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_arc_filled = public record
  private

    var header: __struct_nk_command; public;
    var cx: Int16; public;
    var cy: Int16; public;
    var r: UInt16; public;
    var a: array[0..2 - 1] of Single; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_command_polygon = public record
  private

    var header: __struct_nk_command; public;
    var color: __struct_nk_color; public;
    var line_thickness: UInt16; public;
    var point_count: UInt16; public;
    var points: array[0..1 - 1] of __struct_nk_vec2i; public;

  end;

  __struct_nk_command_polygon_filled = public record
  private

    var header: __struct_nk_command; public;
    var color: __struct_nk_color; public;
    var point_count: UInt16; public;
    var points: array[0..1 - 1] of __struct_nk_vec2i; public;

  end;

  __struct_nk_command_polyline = public record
  private

    var header: __struct_nk_command; public;
    var color: __struct_nk_color; public;
    var line_thickness: UInt16; public;
    var point_count: UInt16; public;
    var points: array[0..1 - 1] of __struct_nk_vec2i; public;

  end;

  __struct_nk_command_image = public record
  private

    var header: __struct_nk_command; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var img: __struct_nk_image; public;
    var col: __struct_nk_color; public;

  end;

  __fnptrtype7 = public method(canvas: ^Void; x: Int16; y: Int16; w: UInt16; h: UInt16; callback_data: nk_handle);

  nk_command_custom_callback = public __fnptrtype7;

  __struct_nk_command_custom = public record
  private

    var header: __struct_nk_command; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var callback_data: nk_handle; public;
    var callback: nk_command_custom_callback; public;

  end;

  __struct_nk_command_text = public record
  private

    var header: __struct_nk_command; public;
    var font: ^__struct_nk_user_font; public;
    var background: __struct_nk_color; public;
    var foreground: __struct_nk_color; public;
    var x: Int16; public;
    var y: Int16; public;
    var w: UInt16; public;
    var h: UInt16; public;
    var height: Single; public;
    var length: Int32; public;
    var string: array[0..1 - 1] of Byte; public;

  end;

  __enum_nk_command_clipping = public enum (NK_CLIPPING_OFF = nk_false, NK_CLIPPING_ON = nk_true);

  __struct_nk_command_buffer = public record
  private

    var base: ^__struct_nk_buffer; public;
    var clip: __struct_nk_rect; public;
    var use_clipping: Int32; public;
    var userdata: nk_handle; public;
    var &begin: nk_size; public;
    var &end: nk_size; public;
    var last: nk_size; public;

  end;

  // ===============================================================
  //  *
  //  *                          INPUT
  //  *
  //  * ===============================================================
  __struct_nk_mouse_button = public record
  private

    var down: Int32; public;
    var clicked: UInt32; public;
    var clicked_pos: __struct_nk_vec2; public;

  end;

  __struct_nk_mouse = public record
  private

    var buttons: array[0..NK_BUTTON_MAX - 1] of __struct_nk_mouse_button; public;
    var pos: __struct_nk_vec2; public;
    var prev: __struct_nk_vec2; public;
    var delta: __struct_nk_vec2; public;
    var scroll_delta: __struct_nk_vec2; public;
    var grab: Byte; public;
    var grabbed: Byte; public;
    var ungrab: Byte; public;

  end;

  __struct_nk_key = public record
  private

    var down: Int32; public;
    var clicked: UInt32; public;

  end;

  __struct_nk_keyboard = public record
  private

    var keys: array[0..NK_KEY_MAX - 1] of __struct_nk_key; public;
    var text: array[0..16 - 1] of Byte; public;
    var text_len: Int32; public;

  end;

  __struct_nk_input = public record
  private

    var keyboard: __struct_nk_keyboard; public;
    var mouse: __struct_nk_mouse; public;

  end;

  // ===============================================================
  //  *
  //  *                          DRAW LIST
  //  *
  //  * ===============================================================
  //  ===============================================================
  //  *
  //  *                          GUI
  //  *
  //  * ===============================================================
  __enum_nk_style_item_type = public enum (NK_STYLE_ITEM_COLOR, NK_STYLE_ITEM_IMAGE);

  [&Union]
  __struct_nk_style_item_data = public record
  private

    var image: __struct_nk_image; public;
    var color: __struct_nk_color; public;

  end;

  __struct_nk_style_item = public record
  private

    var &type: __enum_nk_style_item_type; public;
    var data: __struct_nk_style_item_data; public;

  end;

  __struct_nk_style_text = public record
  private

    var color: __struct_nk_color; public;
    var padding: __struct_nk_vec2; public;

  end;

  __struct_nk_style_button = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // text
    var text_background: __struct_nk_color; public;
    var text_normal: __struct_nk_color; public;
    var text_hover: __struct_nk_color; public;
    var text_active: __struct_nk_color; public;
    var text_alignment: nk_flags; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var padding: __struct_nk_vec2; public;
    var image_padding: __struct_nk_vec2; public;
    var touch_padding: __struct_nk_vec2; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype8; public;
    var draw_end: __fnptrtype9; public;

  end;

  __fnptrtype8 = public method(arg0: ^__struct_nk_command_buffer; userdata: nk_handle);

  __fnptrtype9 = public method(arg0: ^__struct_nk_command_buffer; userdata: nk_handle);

  __struct_nk_style_toggle = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // cursor
    var cursor_normal: __struct_nk_style_item; public;
    var cursor_hover: __struct_nk_style_item; public;
    // text
    var text_normal: __struct_nk_color; public;
    var text_hover: __struct_nk_color; public;
    var text_active: __struct_nk_color; public;
    var text_background: __struct_nk_color; public;
    var text_alignment: nk_flags; public;
    // properties
    var padding: __struct_nk_vec2; public;
    var touch_padding: __struct_nk_vec2; public;
    var spacing: Single; public;
    var border: Single; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype10; public;
    var draw_end: __fnptrtype11; public;

  end;

  __fnptrtype10 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __fnptrtype11 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __struct_nk_style_selectable = public record
  private

    // background (inactive)
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var pressed: __struct_nk_style_item; public;
    // background (active)
    var normal_active: __struct_nk_style_item; public;
    var hover_active: __struct_nk_style_item; public;
    var pressed_active: __struct_nk_style_item; public;
    // text color (inactive)
    var text_normal: __struct_nk_color; public;
    var text_hover: __struct_nk_color; public;
    var text_pressed: __struct_nk_color; public;
    // text color (active)
    var text_normal_active: __struct_nk_color; public;
    var text_hover_active: __struct_nk_color; public;
    var text_pressed_active: __struct_nk_color; public;
    var text_background: __struct_nk_color; public;
    var text_alignment: nk_flags; public;
    // properties
    var rounding: Single; public;
    var padding: __struct_nk_vec2; public;
    var touch_padding: __struct_nk_vec2; public;
    var image_padding: __struct_nk_vec2; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype12; public;
    var draw_end: __fnptrtype13; public;

  end;

  __fnptrtype12 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __fnptrtype13 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __struct_nk_style_slider = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // background bar
    var bar_normal: __struct_nk_color; public;
    var bar_hover: __struct_nk_color; public;
    var bar_active: __struct_nk_color; public;
    var bar_filled: __struct_nk_color; public;
    // cursor
    var cursor_normal: __struct_nk_style_item; public;
    var cursor_hover: __struct_nk_style_item; public;
    var cursor_active: __struct_nk_style_item; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var bar_height: Single; public;
    var padding: __struct_nk_vec2; public;
    var spacing: __struct_nk_vec2; public;
    var cursor_size: __struct_nk_vec2; public;
    // optional buttons
    var show_buttons: Int32; public;
    var inc_button: __struct_nk_style_button; public;
    var dec_button: __struct_nk_style_button; public;
    var inc_symbol: __enum_nk_symbol_type; public;
    var dec_symbol: __enum_nk_symbol_type; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype14; public;
    var draw_end: __fnptrtype15; public;

  end;

  __fnptrtype14 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __fnptrtype15 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __struct_nk_style_progress = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // cursor
    var cursor_normal: __struct_nk_style_item; public;
    var cursor_hover: __struct_nk_style_item; public;
    var cursor_active: __struct_nk_style_item; public;
    var cursor_border_color: __struct_nk_color; public;
    // properties
    var rounding: Single; public;
    var border: Single; public;
    var cursor_border: Single; public;
    var cursor_rounding: Single; public;
    var padding: __struct_nk_vec2; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype16; public;
    var draw_end: __fnptrtype17; public;

  end;

  __fnptrtype16 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __fnptrtype17 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __struct_nk_style_scrollbar = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // cursor
    var cursor_normal: __struct_nk_style_item; public;
    var cursor_hover: __struct_nk_style_item; public;
    var cursor_active: __struct_nk_style_item; public;
    var cursor_border_color: __struct_nk_color; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var border_cursor: Single; public;
    var rounding_cursor: Single; public;
    var padding: __struct_nk_vec2; public;
    // optional buttons
    var show_buttons: Int32; public;
    var inc_button: __struct_nk_style_button; public;
    var dec_button: __struct_nk_style_button; public;
    var inc_symbol: __enum_nk_symbol_type; public;
    var dec_symbol: __enum_nk_symbol_type; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype18; public;
    var draw_end: __fnptrtype19; public;

  end;

  __fnptrtype18 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __fnptrtype19 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __struct_nk_style_edit = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    var scrollbar: __struct_nk_style_scrollbar; public;
    // cursor
    var cursor_normal: __struct_nk_color; public;
    var cursor_hover: __struct_nk_color; public;
    var cursor_text_normal: __struct_nk_color; public;
    var cursor_text_hover: __struct_nk_color; public;
    // text (unselected)
    var text_normal: __struct_nk_color; public;
    var text_hover: __struct_nk_color; public;
    var text_active: __struct_nk_color; public;
    // text (selected)
    var selected_normal: __struct_nk_color; public;
    var selected_hover: __struct_nk_color; public;
    var selected_text_normal: __struct_nk_color; public;
    var selected_text_hover: __struct_nk_color; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var cursor_size: Single; public;
    var scrollbar_size: __struct_nk_vec2; public;
    var padding: __struct_nk_vec2; public;
    var row_padding: Single; public;

  end;

  __struct_nk_style_property = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // text
    var label_normal: __struct_nk_color; public;
    var label_hover: __struct_nk_color; public;
    var label_active: __struct_nk_color; public;
    // symbols
    var sym_left: __enum_nk_symbol_type; public;
    var sym_right: __enum_nk_symbol_type; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var padding: __struct_nk_vec2; public;
    var edit: __struct_nk_style_edit; public;
    var inc_button: __struct_nk_style_button; public;
    var dec_button: __struct_nk_style_button; public;
    // optional user callbacks
    var userdata: nk_handle; public;
    var draw_begin: __fnptrtype20; public;
    var draw_end: __fnptrtype21; public;

  end;

  __fnptrtype20 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __fnptrtype21 = public method(arg0: ^__struct_nk_command_buffer; arg1: nk_handle);

  __struct_nk_style_chart = public record
  private

    // colors
    var background: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    var selected_color: __struct_nk_color; public;
    var color: __struct_nk_color; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var padding: __struct_nk_vec2; public;

  end;

  __struct_nk_style_combo = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    // label
    var label_normal: __struct_nk_color; public;
    var label_hover: __struct_nk_color; public;
    var label_active: __struct_nk_color; public;
    // symbol
    var symbol_normal: __struct_nk_color; public;
    var symbol_hover: __struct_nk_color; public;
    var symbol_active: __struct_nk_color; public;
    // button
    var button: __struct_nk_style_button; public;
    var sym_normal: __enum_nk_symbol_type; public;
    var sym_hover: __enum_nk_symbol_type; public;
    var sym_active: __enum_nk_symbol_type; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var content_padding: __struct_nk_vec2; public;
    var button_padding: __struct_nk_vec2; public;
    var spacing: __struct_nk_vec2; public;

  end;

  __struct_nk_style_tab = public record
  private

    // background
    var background: __struct_nk_style_item; public;
    var border_color: __struct_nk_color; public;
    var text: __struct_nk_color; public;
    // button
    var tab_maximize_button: __struct_nk_style_button; public;
    var tab_minimize_button: __struct_nk_style_button; public;
    var node_maximize_button: __struct_nk_style_button; public;
    var node_minimize_button: __struct_nk_style_button; public;
    var sym_minimize: __enum_nk_symbol_type; public;
    var sym_maximize: __enum_nk_symbol_type; public;
    // properties
    var border: Single; public;
    var rounding: Single; public;
    var indent: Single; public;
    var padding: __struct_nk_vec2; public;
    var spacing: __struct_nk_vec2; public;

  end;

  __enum_nk_style_header_align = public enum (NK_HEADER_LEFT, NK_HEADER_RIGHT);

  __struct_nk_style_window_header = public record
  private

    // background
    var normal: __struct_nk_style_item; public;
    var hover: __struct_nk_style_item; public;
    var active: __struct_nk_style_item; public;
    // button
    var close_button: __struct_nk_style_button; public;
    var minimize_button: __struct_nk_style_button; public;
    var close_symbol: __enum_nk_symbol_type; public;
    var minimize_symbol: __enum_nk_symbol_type; public;
    var maximize_symbol: __enum_nk_symbol_type; public;
    // title
    var label_normal: __struct_nk_color; public;
    var label_hover: __struct_nk_color; public;
    var label_active: __struct_nk_color; public;
    // properties
    var align: __enum_nk_style_header_align; public;
    var padding: __struct_nk_vec2; public;
    var label_padding: __struct_nk_vec2; public;
    var spacing: __struct_nk_vec2; public;

  end;

  __struct_nk_style_window = public record
  private

    var header: __struct_nk_style_window_header; public;
    var fixed_background: __struct_nk_style_item; public;
    var background: __struct_nk_color; public;
    var border_color: __struct_nk_color; public;
    var popup_border_color: __struct_nk_color; public;
    var combo_border_color: __struct_nk_color; public;
    var contextual_border_color: __struct_nk_color; public;
    var menu_border_color: __struct_nk_color; public;
    var group_border_color: __struct_nk_color; public;
    var tooltip_border_color: __struct_nk_color; public;
    var scaler: __struct_nk_style_item; public;
    var border: Single; public;
    var combo_border: Single; public;
    var contextual_border: Single; public;
    var menu_border: Single; public;
    var group_border: Single; public;
    var tooltip_border: Single; public;
    var popup_border: Single; public;
    var min_row_height_padding: Single; public;
    var rounding: Single; public;
    var spacing: __struct_nk_vec2; public;
    var scrollbar_size: __struct_nk_vec2; public;
    var min_size: __struct_nk_vec2; public;
    var padding: __struct_nk_vec2; public;
    var group_padding: __struct_nk_vec2; public;
    var popup_padding: __struct_nk_vec2; public;
    var combo_padding: __struct_nk_vec2; public;
    var contextual_padding: __struct_nk_vec2; public;
    var menu_padding: __struct_nk_vec2; public;
    var tooltip_padding: __struct_nk_vec2; public;

  end;

  __struct_nk_style = public record
  private

    var font: ^__struct_nk_user_font; public;
    var cursors: array[0..NK_CURSOR_COUNT - 1] of ^__struct_nk_cursor; public;
    var cursor_active: ^__struct_nk_cursor; public;
    var cursor_last: ^__struct_nk_cursor; public;
    var cursor_visible: Int32; public;
    var text: __struct_nk_style_text; public;
    var button: __struct_nk_style_button; public;
    var contextual_button: __struct_nk_style_button; public;
    var menu_button: __struct_nk_style_button; public;
    var option: __struct_nk_style_toggle; public;
    var checkbox: __struct_nk_style_toggle; public;
    var selectable: __struct_nk_style_selectable; public;
    var slider: __struct_nk_style_slider; public;
    var progress: __struct_nk_style_progress; public;
    var &property: __struct_nk_style_property; public;
    var edit: __struct_nk_style_edit; public;
    var chart: __struct_nk_style_chart; public;
    var scrollh: __struct_nk_style_scrollbar; public;
    var scrollv: __struct_nk_style_scrollbar; public;
    var tab: __struct_nk_style_tab; public;
    var combo: __struct_nk_style_combo; public;
    var window: __struct_nk_style_window; public;

  end;

  // ==============================================================
  //  *                          PANEL
  //  * =============================================================
  //  defined: NK_MAX_LAYOUT_ROW_TEMPLATE_COLUMNS ()  16
  //  defined: NK_CHART_MAX_SLOT ()  4
  __enum_nk_panel_type = public enum (NK_PANEL_NONE = 0, NK_PANEL_WINDOW = (1 shl 0), NK_PANEL_GROUP = (1 shl 1), NK_PANEL_POPUP = (1 shl 2), NK_PANEL_CONTEXTUAL = (1 shl 4), NK_PANEL_COMBO = (1 shl 5), NK_PANEL_MENU = (1 shl 6), NK_PANEL_TOOLTIP = (1 shl 7));

  __enum_nk_panel_set = public enum (NK_PANEL_SET_NONBLOCK = (((NK_PANEL_CONTEXTUAL or NK_PANEL_COMBO) or NK_PANEL_MENU) or NK_PANEL_TOOLTIP), NK_PANEL_SET_POPUP = (NK_PANEL_SET_NONBLOCK or NK_PANEL_POPUP), NK_PANEL_SET_SUB = (NK_PANEL_SET_POPUP or NK_PANEL_GROUP));

  __struct_nk_chart_slot = public record
  private

    var &type: __enum_nk_chart_type; public;
    var color: __struct_nk_color; public;
    var highlight: __struct_nk_color; public;
    var min: Single; public;
    var max: Single; public;
    var range: Single; public;
    var count: Int32; public;
    var last: __struct_nk_vec2; public;
    var &index: Int32; public;

  end;

  __struct_nk_chart = public record
  private

    var slot: Int32; public;
    var x: Single; public;
    var y: Single; public;
    var w: Single; public;
    var h: Single; public;
    var slots: array[0..4 - 1] of __struct_nk_chart_slot; public;

  end;

  __enum_nk_panel_row_layout_type = public enum (NK_LAYOUT_DYNAMIC_FIXED = 0, NK_LAYOUT_DYNAMIC_ROW, NK_LAYOUT_DYNAMIC_FREE, NK_LAYOUT_DYNAMIC, NK_LAYOUT_STATIC_FIXED, NK_LAYOUT_STATIC_ROW, NK_LAYOUT_STATIC_FREE, NK_LAYOUT_STATIC, NK_LAYOUT_TEMPLATE, NK_LAYOUT_COUNT);

  __struct_nk_row_layout = public record
  private

    var &type: __enum_nk_panel_row_layout_type; public;
    var &index: Int32; public;
    var height: Single; public;
    var min_height: Single; public;
    var columns: Int32; public;
    var ratio: ^Single; public;
    var item_width: Single; public;
    var item_height: Single; public;
    var item_offset: Single; public;
    var filled: Single; public;
    var item: __struct_nk_rect; public;
    var tree_depth: Int32; public;
    var templates: array[0..16 - 1] of Single; public;

  end;

  __struct_nk_popup_buffer = public record
  private

    var &begin: nk_size; public;
    var parent: nk_size; public;
    var last: nk_size; public;
    var &end: nk_size; public;
    var active: Int32; public;

  end;

  __struct_nk_menu_state = public record
  private

    var x: Single; public;
    var y: Single; public;
    var w: Single; public;
    var h: Single; public;
    var offset: __struct_nk_scroll; public;

  end;

  __struct_nk_panel = public record
  private

    var &type: __enum_nk_panel_type; public;
    var &flags: nk_flags; public;
    var bounds: __struct_nk_rect; public;
    var offset_x: ^nk_uint; public;
    var offset_y: ^nk_uint; public;
    var at_x: Single; public;
    var at_y: Single; public;
    var max_x: Single; public;
    var footer_height: Single; public;
    var header_height: Single; public;
    var border: Single; public;
    var has_scrolling: UInt32; public;
    var clip: __struct_nk_rect; public;
    var menu: __struct_nk_menu_state; public;
    var row: __struct_nk_row_layout; public;
    var chart: __struct_nk_chart; public;
    var buffer: ^__struct_nk_command_buffer; public;
    var parent: ^__struct_nk_panel; public;

  end;

  __enum_nk_window_flags = public enum (NK_WINDOW_PRIVATE = (1 shl 11), NK_WINDOW_DYNAMIC = NK_WINDOW_PRIVATE, NK_WINDOW_ROM = (1 shl 12), NK_WINDOW_NOT_INTERACTIVE = (NK_WINDOW_ROM or NK_WINDOW_NO_INPUT), NK_WINDOW_HIDDEN = (1 shl 13), NK_WINDOW_CLOSED = (1 shl 14), NK_WINDOW_MINIMIZED = (1 shl 15), NK_WINDOW_REMOVE_ROM = (1 shl 16));

  __struct_nk_popup_state = public record
  private

    var win: ^__struct_nk_window; public;
    var &type: __enum_nk_panel_type; public;
    var buf: __struct_nk_popup_buffer; public;
    var name: nk_hash; public;
    var active: Int32; public;
    var combo_count: UInt32; public;
    var con_count: UInt32; public;
    var con_old: UInt32; public;
    var active_con: UInt32; public;
    var header: __struct_nk_rect; public;

  end;

  __struct_nk_edit_state = public record
  private

    var name: nk_hash; public;
    var seq: UInt32; public;
    var &old: UInt32; public;
    var active: Int32; public;
    var prev: Int32; public;
    var cursor: Int32; public;
    var sel_start: Int32; public;
    var sel_end: Int32; public;
    var scrollbar: __struct_nk_scroll; public;
    var mode: Byte; public;
    var single_line: Byte; public;

  end;

  __struct_nk_property_state = public record
  private

    var active: Int32; public;
    var prev: Int32; public;
    var buffer: array[0..64 - 1] of Byte; public;
    var length: Int32; public;
    var cursor: Int32; public;
    var select_start: Int32; public;
    var select_end: Int32; public;
    var name: nk_hash; public;
    var seq: UInt32; public;
    var &old: UInt32; public;
    var state: Int32; public;

  end;

  __struct_nk_window = public record
  private

    var seq: UInt32; public;
    var name: nk_hash; public;
    var name_string: array[0..64 - 1] of Byte; public;
    var &flags: nk_flags; public;
    var bounds: __struct_nk_rect; public;
    var scrollbar: __struct_nk_scroll; public;
    var buffer: __struct_nk_command_buffer; public;
    var layout: ^__struct_nk_panel; public;
    var scrollbar_hiding_timer: Single; public;
    // persistent widget state
    var &property: __struct_nk_property_state; public;
    var popup: __struct_nk_popup_state; public;
    var edit: __struct_nk_edit_state; public;
    var scrolled: UInt32; public;
    var tables: ^__struct_nk_table; public;
    var table_count: UInt32; public;
    // window list hooks
    var next: ^__struct_nk_window; public;
    var prev: ^__struct_nk_window; public;
    var parent: ^__struct_nk_window; public;

  end;

  // ==============================================================
  //  *                          STACK
  //  * =============================================================
  //  The style modifier stack can be used to temporarily change a
  //  * property inside `nk_style`. For example if you want a special
  //  * red button you can temporarily push the old button color onto a stack
  //  * draw the button with a red color and then you just pop the old color
  //  * back from the stack:
  //  *
  //  *      nk_style_push_style_item(ctx, &ctx->style.button.normal, nk_style_item_color(nk_rgb(255,0,0)));
  //  *      nk_style_push_style_item(ctx, &ctx->style.button.hover, nk_style_item_color(nk_rgb(255,0,0)));
  //  *      nk_style_push_style_item(ctx, &ctx->style.button.active, nk_style_item_color(nk_rgb(255,0,0)));
  //  *      nk_style_push_vec2(ctx, &cx->style.button.padding, nk_vec2(2,2));
  //  *
  //  *      nk_button(...);
  //  *
  //  *      nk_style_pop_style_item(ctx);
  //  *      nk_style_pop_style_item(ctx);
  //  *      nk_style_pop_style_item(ctx);
  //  *      nk_style_pop_vec2(ctx);
  //  *
  //  * Nuklear has a stack for style_items, float properties, vector properties,
  //  * flags, colors, fonts and for button_behavior. Each has it's own fixed size stack
  //  * which can be changed at compile time.
  //  
  //  defined: NK_BUTTON_BEHAVIOR_STACK_SIZE ()  8
  //  defined: NK_FONT_STACK_SIZE ()  8
  //  defined: NK_STYLE_ITEM_STACK_SIZE ()  16
  //  defined: NK_FLOAT_STACK_SIZE ()  32
  //  defined: NK_VECTOR_STACK_SIZE ()  16
  //  defined: NK_FLAGS_STACK_SIZE ()  32
  //  defined: NK_COLOR_STACK_SIZE ()  32
  //  defined: NK_CONFIGURATION_STACK_TYPE (prefix,name,type) struct nk_config_stack_##name##_element {\         prefix##_##type *address;\         prefix##_##type old_value;\     }
  //  defined: NK_CONFIG_STACK (type,size) struct nk_config_stack_##type {\         int head;\         struct nk_config_stack_##type##_element elements[size];\     }
  //  defined: nk_float ()  float
  __struct_nk_config_stack_style_item_element = public record
  private

    var address: ^__struct_nk_style_item; public;
    var old_value: __struct_nk_style_item; public;

  end;

  __struct_nk_config_stack_float_element = public record
  private

    var address: ^Single; public;
    var old_value: Single; public;

  end;

  __struct_nk_config_stack_vec2_element = public record
  private

    var address: ^__struct_nk_vec2; public;
    var old_value: __struct_nk_vec2; public;

  end;

  __struct_nk_config_stack_flags_element = public record
  private

    var address: ^nk_flags; public;
    var old_value: nk_flags; public;

  end;

  __struct_nk_config_stack_color_element = public record
  private

    var address: ^__struct_nk_color; public;
    var old_value: __struct_nk_color; public;

  end;

  __struct_nk_config_stack_user_font_element = public record
  private

    var address: ^^__struct_nk_user_font; public;
    var old_value: ^__struct_nk_user_font; public;

  end;

  __struct_nk_config_stack_button_behavior_element = public record
  private

    var address: ^__enum_nk_button_behavior; public;
    var old_value: __enum_nk_button_behavior; public;

  end;

  __struct_nk_config_stack_style_item = public record
  private

    var head: Int32; public;
    var elements: array[0..16 - 1] of __struct_nk_config_stack_style_item_element; public;

  end;

  __struct_nk_config_stack_float = public record
  private

    var head: Int32; public;
    var elements: array[0..32 - 1] of __struct_nk_config_stack_float_element; public;

  end;

  __struct_nk_config_stack_vec2 = public record
  private

    var head: Int32; public;
    var elements: array[0..16 - 1] of __struct_nk_config_stack_vec2_element; public;

  end;

  __struct_nk_config_stack_flags = public record
  private

    var head: Int32; public;
    var elements: array[0..32 - 1] of __struct_nk_config_stack_flags_element; public;

  end;

  __struct_nk_config_stack_color = public record
  private

    var head: Int32; public;
    var elements: array[0..32 - 1] of __struct_nk_config_stack_color_element; public;

  end;

  __struct_nk_config_stack_user_font = public record
  private

    var head: Int32; public;
    var elements: array[0..8 - 1] of __struct_nk_config_stack_user_font_element; public;

  end;

  __struct_nk_config_stack_button_behavior = public record
  private

    var head: Int32; public;
    var elements: array[0..8 - 1] of __struct_nk_config_stack_button_behavior_element; public;

  end;

  __struct_nk_configuration_stacks = public record
  private

    var style_items: __struct_nk_config_stack_style_item; public;
    var floats: __struct_nk_config_stack_float; public;
    var vectors: __struct_nk_config_stack_vec2; public;
    var &flags: __struct_nk_config_stack_flags; public;
    var colors: __struct_nk_config_stack_color; public;
    var fonts: __struct_nk_config_stack_user_font; public;
    var button_behaviors: __struct_nk_config_stack_button_behavior; public;

  end;

  // ==============================================================
  //  *                          CONTEXT
  //  * =============================================================
  //  defined: NK_VALUE_PAGE_CAPACITY ()  \     (((NK_MAX(sizeof(struct nk_window),sizeof(struct nk_panel)) / sizeof(nk_uint))) / 2)
  __struct_nk_table = public record
  private

    var seq: UInt32; public;
    var size: UInt32; public;
    var keys: array[0..(((if (sizeOf(__struct_nk_window) < sizeOf(__struct_nk_panel)) then (sizeOf(__struct_nk_panel)) else (sizeOf(__struct_nk_window))) / sizeOf(nk_uint)) / 2) - 1] of nk_hash; public;
    var values: array[0..(((if (sizeOf(__struct_nk_window) < sizeOf(__struct_nk_panel)) then (sizeOf(__struct_nk_panel)) else (sizeOf(__struct_nk_window))) / sizeOf(nk_uint)) / 2) - 1] of nk_uint; public;
    var next: ^__struct_nk_table; public;
    var prev: ^__struct_nk_table; public;

  end;

  [&Union]
  __struct_nk_page_data = public record
  private

    var tbl: __struct_nk_table; public;
    var pan: __struct_nk_panel; public;
    var win: __struct_nk_window; public;

  end;

  __struct_nk_page_element = public record
  private

    var data: __struct_nk_page_data; public;
    var next: ^__struct_nk_page_element; public;
    var prev: ^__struct_nk_page_element; public;

  end;

  __struct_nk_page = public record
  private

    var size: UInt32; public;
    var next: ^__struct_nk_page; public;
    var win: array[0..1 - 1] of __struct_nk_page_element; public;

  end;

  __struct_nk_pool = public record
  private

    var alloc: __struct_nk_allocator; public;
    var &type: __enum_nk_allocation_type; public;
    var page_count: UInt32; public;
    var pages: ^__struct_nk_page; public;
    var freelist: ^__struct_nk_page_element; public;
    var capacity: UInt32; public;
    var size: nk_size; public;
    var cap: nk_size; public;

  end;

  __struct_nk_context = public record
  private

    // public: can be accessed freely
    var input: __struct_nk_input; public;
    var style: __struct_nk_style; public;
    var memory: __struct_nk_buffer; public;
    var clip: __struct_nk_clipboard; public;
    var last_widget_state: nk_flags; public;
    var button_behavior: __enum_nk_button_behavior; public;
    var stacks: __struct_nk_configuration_stacks; public;
    var delta_time_seconds: Single; public;
    // private:
    //     should only be accessed if you
    //     know what you are doing 
    //  text editor objects are quite big because of an internal
    //      * undo/redo stack. Therefore it does not make sense to have one for
    //      * each window for temporary use cases, so I only provide *one* instance
    //      * for all windows. This works because the content is cleared anyway
    var text_edit: __struct_nk_text_edit; public;
    // draw buffer used for overlay drawing operation like cursor
    var overlay: __struct_nk_command_buffer; public;
    // windows
    var build: Int32; public;
    var use_pool: Int32; public;
    var pool: __struct_nk_pool; public;
    var &begin: ^__struct_nk_window; public;
    var &end: ^__struct_nk_window; public;
    var active: ^__struct_nk_window; public;
    var current: ^__struct_nk_window; public;
    var freelist: ^__struct_nk_page_element; public;
    var count: UInt32; public;
    var seq: UInt32; public;

  end;

  // ==============================================================
  //  *                          MATH
  //  * =============================================================== 
  //  defined: NK_PI ()  3.141592654f
  //  defined: NK_UTF_INVALID ()  0xFFFD
  //  defined: NK_MAX_FLOAT_PRECISION ()  2
  //  defined: NK_UNUSED (x) ((void)(x))
  //  defined: NK_SATURATE (x) (NK_MAX(0, NK_MIN(1.0f, x)))
  //  defined: NK_LEN (a) (sizeof(a)/sizeof(a[0]))
  //  defined: NK_ABS (a) (((a) < 0) ? -(a) : (a))
  //  defined: NK_BETWEEN (x,a,b) ((a) <= (x) && (x) < (b))
  //  defined: NK_INBOX (px,py,x,y,w,h) (NK_BETWEEN(px,x,x+w) && NK_BETWEEN(py,y,y+h))
  //  defined: NK_INTERSECT (x0,y0,w0,h0,x1,y1,w1,h1) (!(((x1 > (x0 + w0)) || ((x1 + w1) < x0) || (y1 > (y0 + h0)) || (y1 + h1) < y0)))
  //  defined: NK_CONTAINS (x,y,w,h,bx,by,bw,bh) (NK_INBOX(x,y, bx, by, bw, bh) && NK_INBOX(x+w,y+h, bx, by, bw, bh))
  //  defined: nk_vec2_sub (a,b) nk_vec2((a).x - (b).x, (a).y - (b).y)
  //  defined: nk_vec2_add (a,b) nk_vec2((a).x + (b).x, (a).y + (b).y)
  //  defined: nk_vec2_len_sqr (a) ((a).x*(a).x+(a).y*(a).y)
  //  defined: nk_vec2_muls (a,t) nk_vec2((a).x * (t), (a).y * (t))
  //  defined: nk_ptr_add (t,p,i) ((t*)((void*)((nk_byte*)(p) + (i))))
  //  defined: nk_ptr_add_const (t,p,i) ((const t*)((const void*)((const nk_byte*)(p) + (i))))
  //  defined: nk_zero_struct (s) nk_zero(&s, sizeof(s))
  //  ==============================================================
  //  *                          ALIGNMENT
  //  * =============================================================== 
  //  Pointer to Integer type conversion for pointer alignment 
  //  defined: NK_UINT_TO_PTR (x) ((void*)(x))
  //  defined: NK_PTR_TO_UINT (x) ((nk_size)(x))
  //  defined: NK_ALIGN_PTR (x,mask) (NK_UINT_TO_PTR((NK_PTR_TO_UINT((nk_byte*)(x) + (mask-1)) & ~(mask-1))))
  //  defined: NK_ALIGN_PTR_BACK (x,mask) (NK_UINT_TO_PTR((NK_PTR_TO_UINT((nk_byte*)(x)) & ~(mask-1))))
  //  defined: NK_OFFSETOF (st,m) ((nk_ptr)&(((st*)0)->m))
  //  defined: NK_CONTAINER_OF (ptr,type,member) (type*)((void*)((char*)(1 ? (ptr): &((type*)0)->member) - NK_OFFSETOF(type, member)))
  //  defined: NK_ALIGNOF (t) ((char*)(&((struct {char c; t _h;}*)0)->_h) - (char*)0)
  //  defined: NK_INTERNAL_H ()
  //  defined: NK_POOL_DEFAULT_CAPACITY ()  16
  //  defined: NK_DEFAULT_COMMAND_BUFFER_SIZE ()  (4*1024)
  //  defined: NK_BUFFER_DEFAULT_INITIAL_SIZE ()  (4*1024)
  //  standard library headers 
  //  defined: NK_ASSERT (expr) assert(expr)
  //  defined: NK_SQRT ()  nk_sqrt
  //  defined: NK_SIN ()  nk_sin
  //  defined: NK_COS ()  nk_cos
  //  defined: NK_STRTOD ()  nk_strtod
  //  defined: NK_DTOA ()  nk_dtoa
  //  defined: NK_DEFAULT ()  (-1)
  //  If your compiler does support `vsnprintf` I would highly recommend
  //  * defining this to vsnprintf instead since `vsprintf` is basically
  //  * unbelievable unsafe and should *NEVER* be used. But I have to support
  //  * it since C89 only provides this unsafe version. 
  //  defined: NK_VSNPRINTF (s,n,f,a) vsprintf(s,f,a)
  //  defined: NK_SCHAR_MIN ()  (-127)
  //  defined: NK_SCHAR_MAX ()  127
  //  defined: NK_UCHAR_MIN ()  0
  //  defined: NK_UCHAR_MAX ()  256
  //  defined: NK_SSHORT_MIN ()  (-32767)
  //  defined: NK_SSHORT_MAX ()  32767
  //  defined: NK_USHORT_MIN ()  0
  //  defined: NK_USHORT_MAX ()  65535
  //  defined: NK_SINT_MIN ()  (-2147483647)
  //  defined: NK_SINT_MAX ()  2147483647
  //  defined: NK_UINT_MIN ()  0
  //  defined: NK_UINT_MAX ()  4294967295u
  //  Make sure correct type size:
  //  * This will fire with a negative subscript error if the type sizes
  //  * are set incorrectly by the compiler, and compile out if not
  _dummy_array5696 = public array[0..(if (sizeOf(nk_size) ≥ sizeOf(^Void)) then (1) else (-1)) - 1] of Byte;

  _dummy_array5697 = public array[0..(if (sizeOf(nk_ptr) = sizeOf(^Void)) then (1) else (-1)) - 1] of Byte;

  _dummy_array5698 = public array[0..(if (sizeOf(nk_flags) ≥ 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array5699 = public array[0..(if (sizeOf(nk_rune) ≥ 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array5700 = public array[0..(if (sizeOf(nk_ushort) = 2) then (1) else (-1)) - 1] of Byte;

  _dummy_array5701 = public array[0..(if (sizeOf(nk_short) = 2) then (1) else (-1)) - 1] of Byte;

  _dummy_array5702 = public array[0..(if (sizeOf(nk_uint) = 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array5703 = public array[0..(if (sizeOf(nk_int) = 4) then (1) else (-1)) - 1] of Byte;

  _dummy_array5704 = public array[0..(if (sizeOf(nk_byte) = 1) then (1) else (-1)) - 1] of Byte;

  // util
  ___anon1 = public enum (NK_DO_NOT_STOP_ON_NEW_LINE, NK_STOP_ON_NEW_LINE);

  // window
  __enum_nk_window_insert_location = public enum (NK_INSERT_BACK, NK_INSERT_FRONT);

  // text
  __struct_nk_text = public record
  private

    var padding: __struct_nk_vec2; public;
    var background: __struct_nk_color; public;
    var text: __struct_nk_color; public;

  end;

  // toggle
  __enum_nk_toggle_type = public enum (NK_TOGGLE_CHECK, NK_TOGGLE_OPTION);

  // property
  __enum_nk_property_status = public enum (NK_PROPERTY_DEFAULT, NK_PROPERTY_EDIT, NK_PROPERTY_DRAG);

  __enum_nk_property_filter = public enum (NK_FILTER_INT, NK_FILTER_FLOAT);

  __enum_nk_property_kind = public enum (NK_PROPERTY_INT, NK_PROPERTY_FLOAT, NK_PROPERTY_DOUBLE);

  [&Union]
  __struct_nk_property = public record
  private

    var i: Int32; public;
    var f: Single; public;
    var d: Double; public;

  end;

  __struct_nk_property_variant = public record
  private

    var kind: __enum_nk_property_kind; public;
    var value: __struct_nk_property; public;
    var min_value: __struct_nk_property; public;
    var max_value: __struct_nk_property; public;
    var &step: __struct_nk_property; public;

  end;

  [&Union]
  anontype_2 = public record
  private

    var i: nk_uint; public;
    var f: Single; public;

  end;

  anontype_3 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_command; public;

  end;

  // ===============================================================
  //  *
  //  *                              VERTEX
  //  *
  //  * ===============================================================
  //  -------------------------------------------------------------
  //  *
  //  *                          RECT PACK
  //  *
  //  * --------------------------------------------------------------
  //  stb_rect_pack.h - v0.05 - public domain - rectangle packing 
  //  Sean Barrett 2014 
  //  defined: NK_RP__MAXVAL ()   0xffff
  nk_rp_coord = public UInt16;

  __struct_nk_rp_rect = public record
  private

    // reserved for your use:
    var id: Int32; public;
    // input:
    var w: nk_rp_coord; public;
    // input:
    var h: nk_rp_coord; public;
    // output:
    var x: nk_rp_coord; public;
    // output:
    var y: nk_rp_coord; public;
    var was_packed: Int32; public;

  end;

  // 16 bytes, nominally
  __struct_nk_rp_node = public record
  private

    var x: nk_rp_coord; public;
    var y: nk_rp_coord; public;
    var next: ^__struct_nk_rp_node; public;

  end;

  __struct_nk_rp_context = public record
  private

    var width: Int32; public;
    var height: Int32; public;
    var align: Int32; public;
    var init_mode: Int32; public;
    var heuristic: Int32; public;
    var num_nodes: Int32; public;
    var active_head: ^__struct_nk_rp_node; public;
    var free_head: ^__struct_nk_rp_node; public;
    var extra: array[0..2 - 1] of __struct_nk_rp_node; public;

  end;

  __struct_nk_rp__findresult = public record
  private

    var x: Int32; public;
    var y: Int32; public;
    var prev_link: ^^__struct_nk_rp_node; public;

  end;

  __enum_NK_RP_HEURISTIC = public enum (NK_RP_HEURISTIC_Skyline_default = 0, NK_RP_HEURISTIC_Skyline_BL_sortHeight = NK_RP_HEURISTIC_Skyline_default, NK_RP_HEURISTIC_Skyline_BF_sortHeight);

  __enum_NK_RP_INIT_STATE = public enum (NK_RP__INIT_skyline = 1);

  __fnptrtype22 = public method(arg0: ^Void; arg1: ^Void): Int32;

  // * ==============================================================
  //  *
  //  *                          TRUETYPE
  //  *
  //  * ===============================================================
  //  
  //  stb_truetype.h - v1.07 - public domain 
  //  defined: NK_TT_MAX_OVERSAMPLE ()    8
  //  defined: NK_TT__OVER_MASK ()   (NK_TT_MAX_OVERSAMPLE-1)
  __struct_nk_tt_bakedchar = public record
  private

    var x0: UInt16; public;
    var y0: UInt16; public;
    var x1: UInt16; public;
    var y1: UInt16; public;
    // coordinates of bbox in bitmap
    var xoff: Single; public;
    // coordinates of bbox in bitmap
    var yoff: Single; public;
    // coordinates of bbox in bitmap
    var xadvance: Single; public;

  end;

  __struct_nk_tt_aligned_quad = public record
  private

    var x0: Single; public;
    var y0: Single; public;
    var s0: Single; public;
    var t0: Single; public;
    // top-left
    var x1: Single; public;
    // top-left
    var y1: Single; public;
    // top-left
    var s1: Single; public;
    // top-left
    var t1: Single; public;

  end;

  __struct_nk_tt_packedchar = public record
  private

    var x0: UInt16; public;
    var y0: UInt16; public;
    var x1: UInt16; public;
    var y1: UInt16; public;
    // coordinates of bbox in bitmap
    var xoff: Single; public;
    // coordinates of bbox in bitmap
    var yoff: Single; public;
    // coordinates of bbox in bitmap
    var xadvance: Single; public;
    var xoff2: Single; public;
    var yoff2: Single; public;

  end;

  __struct_nk_tt_pack_range = public record
  private

    var font_size: Single; public;
    var first_unicode_codepoint_in_range: Int32; public;
    // if non-zero, then the chars are continuous, and this is the first codepoint
    var array_of_unicode_codepoints: ^Int32; public;
    // if non-zero, then this is an array of unicode codepoints
    var num_chars: Int32; public;
    var chardata_for_range: ^__struct_nk_tt_packedchar; public;
    // output
    var h_oversample: Byte; public;
    // output
    var v_oversample: Byte; public;

  end;

  __struct_nk_tt_pack_context = public record
  private

    var pack_info: ^Void; public;
    var width: Int32; public;
    var height: Int32; public;
    var stride_in_bytes: Int32; public;
    var padding: Int32; public;
    var h_oversample: UInt32; public;
    var v_oversample: UInt32; public;
    var pixels: ^Byte; public;
    var nodes: ^Void; public;

  end;

  __struct_nk_tt_fontinfo = public record
  private

    var data: ^Byte; public;
    // pointer to .ttf file
    var fontstart: Int32; public;
    // offset of start of font
    var numGlyphs: Int32; public;
    // number of glyphs, needed for range checking
    var loca: Int32; public;
    // number of glyphs, needed for range checking
    var head: Int32; public;
    // number of glyphs, needed for range checking
    var glyf: Int32; public;
    // number of glyphs, needed for range checking
    var hhea: Int32; public;
    // number of glyphs, needed for range checking
    var hmtx: Int32; public;
    // number of glyphs, needed for range checking
    var kern: Int32; public;
    // table locations as offset from start of .ttf
    var index_map: Int32; public;
    // a cmap mapping for our chosen character encoding
    var indexToLocFormat: Int32; public;

  end;

  ___anon4 = public enum (NK_TT_vmove = 1, NK_TT_vline, NK_TT_vcurve);

  __struct_nk_tt_vertex = public record
  private

    var x: Int16; public;
    var y: Int16; public;
    var cx: Int16; public;
    var cy: Int16; public;
    var &type: Byte; public;
    var padding: Byte; public;

  end;

  __struct_nk_tt__bitmap = public record
  private

    var w: Int32; public;
    var h: Int32; public;
    var stride: Int32; public;
    var pixels: ^Byte; public;

  end;

  __struct_nk_tt__hheap_chunk = public record
  private

    var next: ^__struct_nk_tt__hheap_chunk; public;

  end;

  __struct_nk_tt__hheap = public record
  private

    var alloc: __struct_nk_allocator; public;
    var head: ^__struct_nk_tt__hheap_chunk; public;
    var first_free: ^Void; public;
    var num_remaining_in_head_chunk: Int32; public;

  end;

  __struct_nk_tt__edge = public record
  private

    var x0: Single; public;
    var y0: Single; public;
    var x1: Single; public;
    var y1: Single; public;
    var invert: Int32; public;

  end;

  __struct_nk_tt__active_edge = public record
  private

    var next: ^__struct_nk_tt__active_edge; public;
    var fx: Single; public;
    var fdx: Single; public;
    var fdy: Single; public;
    var direction: Single; public;
    var sy: Single; public;
    var ey: Single; public;

  end;

  __struct_nk_tt__point = public record
  private

    var x: Single; public;
    var y: Single; public;

  end;

  // defined: NK_TT_MACSTYLE_DONTCARE ()      0
  //  defined: NK_TT_MACSTYLE_BOLD ()          1
  //  defined: NK_TT_MACSTYLE_ITALIC ()        2
  //  defined: NK_TT_MACSTYLE_UNDERSCORE ()    4
  //  defined: NK_TT_MACSTYLE_NONE ()          8
  //  <= not same as 0, this makes us check the bitfield is 0
  ___anon5 = public enum (NK_TT_PLATFORM_ID_UNICODE = 0, NK_TT_PLATFORM_ID_MAC = 1, NK_TT_PLATFORM_ID_ISO = 2, NK_TT_PLATFORM_ID_MICROSOFT = 3);

  ___anon6 = public enum (NK_TT_UNICODE_EID_UNICODE_1_0 = 0, NK_TT_UNICODE_EID_UNICODE_1_1 = 1, NK_TT_UNICODE_EID_ISO_10646 = 2, NK_TT_UNICODE_EID_UNICODE_2_0_BMP = 3, NK_TT_UNICODE_EID_UNICODE_2_0_FULL = 4);

  ___anon7 = public enum (NK_TT_MS_EID_SYMBOL = 0, NK_TT_MS_EID_UNICODE_BMP = 1, NK_TT_MS_EID_SHIFTJIS = 2, NK_TT_MS_EID_UNICODE_FULL = 10);

  ___anon8 = public enum (NK_TT_MAC_EID_ROMAN = 0, NK_TT_MAC_EID_ARABIC = 4, NK_TT_MAC_EID_JAPANESE = 1, NK_TT_MAC_EID_HEBREW = 5, NK_TT_MAC_EID_CHINESE_TRAD = 2, NK_TT_MAC_EID_GREEK = 6, NK_TT_MAC_EID_KOREAN = 3, NK_TT_MAC_EID_RUSSIAN = 7);

  ___anon9 = public enum (NK_TT_MS_LANG_ENGLISH = 1033, NK_TT_MS_LANG_ITALIAN = 1040, NK_TT_MS_LANG_CHINESE = 2052, NK_TT_MS_LANG_JAPANESE = 1041, NK_TT_MS_LANG_DUTCH = 1043, NK_TT_MS_LANG_KOREAN = 1042, NK_TT_MS_LANG_FRENCH = 1036, NK_TT_MS_LANG_RUSSIAN = 1049, NK_TT_MS_LANG_GERMAN = 1031, NK_TT_MS_LANG_SPANISH = 1033, NK_TT_MS_LANG_HEBREW = 1037, NK_TT_MS_LANG_SWEDISH = 1053);

  ___anon10 = public enum (NK_TT_MAC_LANG_ENGLISH = 0, NK_TT_MAC_LANG_JAPANESE = 11, NK_TT_MAC_LANG_ARABIC = 12, NK_TT_MAC_LANG_KOREAN = 23, NK_TT_MAC_LANG_DUTCH = 4, NK_TT_MAC_LANG_RUSSIAN = 32, NK_TT_MAC_LANG_FRENCH = 1, NK_TT_MAC_LANG_SPANISH = 6, NK_TT_MAC_LANG_GERMAN = 2, NK_TT_MAC_LANG_SWEDISH = 5, NK_TT_MAC_LANG_HEBREW = 10, NK_TT_MAC_LANG_CHINESE_SIMPLIFIED = 33, NK_TT_MAC_LANG_ITALIAN = 3, NK_TT_MAC_LANG_CHINESE_TRAD = 19);

  // -------------------------------------------------------------
  //  *
  //  *                          FONT BAKING
  //  *
  //  * --------------------------------------------------------------
  __struct_nk_font_bake_data = public record
  private

    var info: __struct_nk_tt_fontinfo; public;
    var rects: ^__struct_nk_rp_rect; public;
    var ranges: ^__struct_nk_tt_pack_range; public;
    var range_count: nk_rune; public;

  end;

  __struct_nk_font_baker = public record
  private

    var alloc: __struct_nk_allocator; public;
    var spc: __struct_nk_tt_pack_context; public;
    var build: ^__struct_nk_font_bake_data; public;
    var packed_chars: ^__struct_nk_tt_packedchar; public;
    var rects: ^__struct_nk_rp_rect; public;
    var ranges: ^__struct_nk_tt_pack_range; public;

  end;

  anontype_11 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_rp_rect; public;

  end;

  anontype_12 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_tt_pack_range; public;

  end;

  anontype_13 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_tt_packedchar; public;

  end;

  anontype_14 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_font_bake_data; public;

  end;

  anontype_15 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_font_baker; public;

  end;

  anontype_16 = public record
  private

    var c: Byte; public;
    var _h: __struct_nk_page_element; public;

  end;

  // ===============================================================
  //  *
  //  *                          TEXT EDITOR
  //  *
  //  * ===============================================================
  //  stb_textedit.h - v1.8  - public domain - Sean Barrett
  __struct_nk_text_find = public record
  private

    var x: Single; public;
    var y: Single; public;
    // position of n'th character
    var height: Single; public;
    // height of line
    var first_char: Int32; public;
    // height of line
    var length: Int32; public;
    // first char of row, and length
    var prev_first: Int32; public;

  end;

  __struct_nk_text_edit_row = public record
  private

    var x0: Single; public;
    var x1: Single; public;
    // starting x location, end x location (allows for align=right, etc)
    var baseline_y_delta: Single; public;
    // position of baseline relative to previous row's baseline
    var ymin: Single; public;
    // position of baseline relative to previous row's baseline
    var ymax: Single; public;
    // height of row above and below baseline
    var num_chars: Int32; public;

  end;

  __fnptrtype23 = public method(user: ^Void; &index: Int32): Single;

  __fnptrtype24 = public method(arg0: ^Void; arg1: Int32; arg2: ^^Byte);

  __fnptrtype25 = public method(data: ^Void; id: Int32; out_text: ^^Byte);

end.
