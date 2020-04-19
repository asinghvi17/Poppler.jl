# Automatically generated using Clang.jl


# Skipping MacroDefinition: POPPLER_TYPE_ACTION ( poppler_action_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ACTION ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ACTION , PopplerAction ) )
# Skipping MacroDefinition: POPPLER_TYPE_DEST ( poppler_dest_get_type ( ) )

@cenum PopplerActionType::UInt32 begin
    POPPLER_ACTION_UNKNOWN = 0
    POPPLER_ACTION_NONE = 1
    POPPLER_ACTION_GOTO_DEST = 2
    POPPLER_ACTION_GOTO_REMOTE = 3
    POPPLER_ACTION_LAUNCH = 4
    POPPLER_ACTION_URI = 5
    POPPLER_ACTION_NAMED = 6
    POPPLER_ACTION_MOVIE = 7
    POPPLER_ACTION_RENDITION = 8
    POPPLER_ACTION_OCG_STATE = 9
    POPPLER_ACTION_JAVASCRIPT = 10
end

@cenum PopplerDestType::UInt32 begin
    POPPLER_DEST_UNKNOWN = 0
    POPPLER_DEST_XYZ = 1
    POPPLER_DEST_FIT = 2
    POPPLER_DEST_FITH = 3
    POPPLER_DEST_FITV = 4
    POPPLER_DEST_FITR = 5
    POPPLER_DEST_FITB = 6
    POPPLER_DEST_FITBH = 7
    POPPLER_DEST_FITBV = 8
    POPPLER_DEST_NAMED = 9
end

@cenum PopplerActionMovieOperation::UInt32 begin
    POPPLER_ACTION_MOVIE_PLAY = 0
    POPPLER_ACTION_MOVIE_PAUSE = 1
    POPPLER_ACTION_MOVIE_RESUME = 2
    POPPLER_ACTION_MOVIE_STOP = 3
end

@cenum PopplerActionLayerAction::UInt32 begin
    POPPLER_ACTION_LAYER_ON = 0
    POPPLER_ACTION_LAYER_OFF = 1
    POPPLER_ACTION_LAYER_TOGGLE = 2
end


struct _PopplerActionAny
    type::PopplerActionType
    title::Ptr{Cint}
end

const PopplerActionAny = _PopplerActionAny

struct _PopplerDest
    type::PopplerDestType
    page_num::Cint
    left::Cdouble
    bottom::Cdouble
    right::Cdouble
    top::Cdouble
    zoom::Cdouble
    named_dest::Ptr{Cint}
    change_left::Cint
    change_top::Cint
    change_zoom::Cint
end

const PopplerDest = _PopplerDest

struct _PopplerActionGotoDest
    type::PopplerActionType
    title::Ptr{Cint}
    dest::Ptr{PopplerDest}
end

const PopplerActionGotoDest = _PopplerActionGotoDest

struct _PopplerActionGotoRemote
    type::PopplerActionType
    title::Ptr{Cint}
    file_name::Ptr{Cint}
    dest::Ptr{PopplerDest}
end

const PopplerActionGotoRemote = _PopplerActionGotoRemote

struct _PopplerActionLaunch
    type::PopplerActionType
    title::Ptr{Cint}
    file_name::Ptr{Cint}
    params::Ptr{Cint}
end

const PopplerActionLaunch = _PopplerActionLaunch

struct _PopplerActionUri
    type::PopplerActionType
    title::Ptr{Cint}
    uri::Cstring
end

const PopplerActionUri = _PopplerActionUri

struct _PopplerActionNamed
    type::PopplerActionType
    title::Ptr{Cint}
    named_dest::Ptr{Cint}
end

const PopplerActionNamed = _PopplerActionNamed
const _PopplerMovie = Cvoid
const PopplerMovie = _PopplerMovie

struct _PopplerActionMovie
    type::PopplerActionType
    title::Ptr{Cint}
    operation::PopplerActionMovieOperation
    movie::Ptr{PopplerMovie}
end

const PopplerActionMovie = _PopplerActionMovie
const _PopplerMedia = Cvoid
const PopplerMedia = _PopplerMedia

struct _PopplerActionRendition
    type::PopplerActionType
    title::Ptr{Cint}
    op::Cint
    media::Ptr{PopplerMedia}
end

const PopplerActionRendition = _PopplerActionRendition

struct _PopplerActionOCGState
    type::PopplerActionType
    title::Ptr{Cint}
    state_list::Ptr{Cint}
end

const PopplerActionOCGState = _PopplerActionOCGState

struct _PopplerActionJavascript
    type::PopplerActionType
    title::Ptr{Cint}
    script::Ptr{Cint}
end

const PopplerActionJavascript = _PopplerActionJavascript

struct _PopplerActionLayer
    action::PopplerActionLayerAction
    layers::Ptr{Cint}
end

struct _PopplerAction
    type::PopplerActionType
end

# Skipping MacroDefinition: POPPLER_TYPE_ANNOT ( poppler_annot_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT , PopplerAnnot ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_MARKUP ( poppler_annot_markup_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_MARKUP ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_MARKUP , PopplerAnnotMarkup ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_MARKUP ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_MARKUP ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_TEXT ( poppler_annot_text_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_TEXT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_TEXT , PopplerAnnotText ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_TEXT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_TEXT ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_TEXT_MARKUP ( poppler_annot_text_markup_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_TEXT_MARKUP ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_TEXT_MARKUP , PopplerAnnotTextMarkup ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_TEXT_MARKUP ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_TEXT_MARKUP ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_FREE_TEXT ( poppler_annot_free_text_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_FREE_TEXT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_FREE_TEXT , PopplerAnnotFreeText ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_FREE_TEXT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_FREE_TEXT ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_FILE_ATTACHMENT ( poppler_annot_file_attachment_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_FILE_ATTACHMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_MARKUP , PopplerAnnotFileAttachment ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_FILE_ATTACHMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_FILE_ATTACHMENT ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_MOVIE ( poppler_annot_movie_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_MOVIE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_MOVIE , PopplerAnnotMovie ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_MOVIE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_MOVIE ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_SCREEN ( poppler_annot_screen_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_SCREEN ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_SCREEN , PopplerAnnotScreen ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_SCREEN ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_SCREEN ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_LINE ( poppler_annot_line_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_LINE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_LINE , PopplerAnnotLine ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_LINE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_LINE ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_CALLOUT_LINE ( poppler_annot_callout_line_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_CIRCLE ( poppler_annot_circle_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_CIRCLE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_CIRCLE , PopplerAnnotCircle ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_CIRCLE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_CIRCLE ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_SQUARE ( poppler_annot_square_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ANNOT_SQUARE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ANNOT_SQUARE , PopplerAnnotSquare ) )
# Skipping MacroDefinition: POPPLER_IS_ANNOT_SQUARE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ANNOT_SQUARE ) )

const POPPLER_ANNOT_TEXT_ICON_NOTE = "Note"
const POPPLER_ANNOT_TEXT_ICON_COMMENT = "Comment"
const POPPLER_ANNOT_TEXT_ICON_KEY = "Key"
const POPPLER_ANNOT_TEXT_ICON_HELP = "Help"
const POPPLER_ANNOT_TEXT_ICON_NEW_PARAGRAPH = "NewParagraph"
const POPPLER_ANNOT_TEXT_ICON_PARAGRAPH = "Paragraph"
const POPPLER_ANNOT_TEXT_ICON_INSERT = "Insert"
const POPPLER_ANNOT_TEXT_ICON_CROSS = "Cross"
const POPPLER_ANNOT_TEXT_ICON_CIRCLE = "Circle"

@cenum PopplerAnnotType::UInt32 begin
    POPPLER_ANNOT_UNKNOWN = 0
    POPPLER_ANNOT_TEXT = 1
    POPPLER_ANNOT_LINK = 2
    POPPLER_ANNOT_FREE_TEXT = 3
    POPPLER_ANNOT_LINE = 4
    POPPLER_ANNOT_SQUARE = 5
    POPPLER_ANNOT_CIRCLE = 6
    POPPLER_ANNOT_POLYGON = 7
    POPPLER_ANNOT_POLY_LINE = 8
    POPPLER_ANNOT_HIGHLIGHT = 9
    POPPLER_ANNOT_UNDERLINE = 10
    POPPLER_ANNOT_SQUIGGLY = 11
    POPPLER_ANNOT_STRIKE_OUT = 12
    POPPLER_ANNOT_STAMP = 13
    POPPLER_ANNOT_CARET = 14
    POPPLER_ANNOT_INK = 15
    POPPLER_ANNOT_POPUP = 16
    POPPLER_ANNOT_FILE_ATTACHMENT = 17
    POPPLER_ANNOT_SOUND = 18
    POPPLER_ANNOT_MOVIE = 19
    POPPLER_ANNOT_WIDGET = 20
    POPPLER_ANNOT_SCREEN = 21
    POPPLER_ANNOT_PRINTER_MARK = 22
    POPPLER_ANNOT_TRAP_NET = 23
    POPPLER_ANNOT_WATERMARK = 24
    POPPLER_ANNOT_3D = 25
end

@cenum PopplerAnnotFlag::UInt32 begin
    POPPLER_ANNOT_FLAG_UNKNOWN = 0
    POPPLER_ANNOT_FLAG_INVISIBLE = 1
    POPPLER_ANNOT_FLAG_HIDDEN = 2
    POPPLER_ANNOT_FLAG_PRINT = 4
    POPPLER_ANNOT_FLAG_NO_ZOOM = 8
    POPPLER_ANNOT_FLAG_NO_ROTATE = 16
    POPPLER_ANNOT_FLAG_NO_VIEW = 32
    POPPLER_ANNOT_FLAG_READ_ONLY = 64
    POPPLER_ANNOT_FLAG_LOCKED = 128
    POPPLER_ANNOT_FLAG_TOGGLE_NO_VIEW = 256
    POPPLER_ANNOT_FLAG_LOCKED_CONTENTS = 512
end

@cenum PopplerAnnotMarkupReplyType::UInt32 begin
    POPPLER_ANNOT_MARKUP_REPLY_TYPE_R = 0
    POPPLER_ANNOT_MARKUP_REPLY_TYPE_GROUP = 1
end

@cenum PopplerAnnotExternalDataType::UInt32 begin
    POPPLER_ANNOT_EXTERNAL_DATA_MARKUP_3D = 0
    POPPLER_ANNOT_EXTERNAL_DATA_MARKUP_UNKNOWN = 1
end

@cenum PopplerAnnotTextState::UInt32 begin
    POPPLER_ANNOT_TEXT_STATE_MARKED = 0
    POPPLER_ANNOT_TEXT_STATE_UNMARKED = 1
    POPPLER_ANNOT_TEXT_STATE_ACCEPTED = 2
    POPPLER_ANNOT_TEXT_STATE_REJECTED = 3
    POPPLER_ANNOT_TEXT_STATE_CANCELLED = 4
    POPPLER_ANNOT_TEXT_STATE_COMPLETED = 5
    POPPLER_ANNOT_TEXT_STATE_NONE = 6
    POPPLER_ANNOT_TEXT_STATE_UNKNOWN = 7
end

@cenum PopplerAnnotFreeTextQuadding::UInt32 begin
    POPPLER_ANNOT_FREE_TEXT_QUADDING_LEFT_JUSTIFIED = 0
    POPPLER_ANNOT_FREE_TEXT_QUADDING_CENTERED = 1
    POPPLER_ANNOT_FREE_TEXT_QUADDING_RIGHT_JUSTIFIED = 2
end


struct _PopplerAnnotCalloutLine
    multiline::Cint
    x1::Cint
    y1::Cint
    x2::Cint
    y2::Cint
    x3::Cint
    y3::Cint
end

# Skipping MacroDefinition: POPPLER_TYPE_ATTACHMENT ( poppler_attachment_get_type ( ) )
# Skipping MacroDefinition: POPPLER_ATTACHMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_ATTACHMENT , PopplerAttachment ) )
# Skipping MacroDefinition: POPPLER_IS_ATTACHMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_ATTACHMENT ) )

const PopplerAttachmentSaveFunc = Ptr{Cvoid}

# Skipping MacroDefinition: POPPLER_TYPE_DOCUMENT ( poppler_document_get_type ( ) )
# Skipping MacroDefinition: POPPLER_DOCUMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_DOCUMENT , PopplerDocument ) )
# Skipping MacroDefinition: POPPLER_IS_DOCUMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_DOCUMENT ) )
# Skipping MacroDefinition: POPPLER_TYPE_INDEX_ITER ( poppler_index_iter_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FONT_INFO ( poppler_font_info_get_type ( ) )
# Skipping MacroDefinition: POPPLER_FONT_INFO ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_FONT_INFO , PopplerFontInfo ) )
# Skipping MacroDefinition: POPPLER_IS_FONT_INFO ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_FONT_INFO ) )
# Skipping MacroDefinition: POPPLER_TYPE_FONTS_ITER ( poppler_fonts_iter_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_LAYERS_ITER ( poppler_layers_iter_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PS_FILE ( poppler_ps_file_get_type ( ) )
# Skipping MacroDefinition: POPPLER_PS_FILE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_PS_FILE , PopplerPSFile ) )
# Skipping MacroDefinition: POPPLER_IS_PS_FILE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_PS_FILE ) )

@cenum PopplerPageLayout::UInt32 begin
    POPPLER_PAGE_LAYOUT_UNSET = 0
    POPPLER_PAGE_LAYOUT_SINGLE_PAGE = 1
    POPPLER_PAGE_LAYOUT_ONE_COLUMN = 2
    POPPLER_PAGE_LAYOUT_TWO_COLUMN_LEFT = 3
    POPPLER_PAGE_LAYOUT_TWO_COLUMN_RIGHT = 4
    POPPLER_PAGE_LAYOUT_TWO_PAGE_LEFT = 5
    POPPLER_PAGE_LAYOUT_TWO_PAGE_RIGHT = 6
end

@cenum PopplerPageMode::UInt32 begin
    POPPLER_PAGE_MODE_UNSET = 0
    POPPLER_PAGE_MODE_NONE = 1
    POPPLER_PAGE_MODE_USE_OUTLINES = 2
    POPPLER_PAGE_MODE_USE_THUMBS = 3
    POPPLER_PAGE_MODE_FULL_SCREEN = 4
    POPPLER_PAGE_MODE_USE_OC = 5
    POPPLER_PAGE_MODE_USE_ATTACHMENTS = 6
end

@cenum PopplerFontType::UInt32 begin
    POPPLER_FONT_TYPE_UNKNOWN = 0
    POPPLER_FONT_TYPE_TYPE1 = 1
    POPPLER_FONT_TYPE_TYPE1C = 2
    POPPLER_FONT_TYPE_TYPE1COT = 3
    POPPLER_FONT_TYPE_TYPE3 = 4
    POPPLER_FONT_TYPE_TRUETYPE = 5
    POPPLER_FONT_TYPE_TRUETYPEOT = 6
    POPPLER_FONT_TYPE_CID_TYPE0 = 7
    POPPLER_FONT_TYPE_CID_TYPE0C = 8
    POPPLER_FONT_TYPE_CID_TYPE0COT = 9
    POPPLER_FONT_TYPE_CID_TYPE2 = 10
    POPPLER_FONT_TYPE_CID_TYPE2OT = 11
end

@cenum PopplerViewerPreferences::UInt32 begin
    POPPLER_VIEWER_PREFERENCES_UNSET = 0
    POPPLER_VIEWER_PREFERENCES_HIDE_TOOLBAR = 1
    POPPLER_VIEWER_PREFERENCES_HIDE_MENUBAR = 2
    POPPLER_VIEWER_PREFERENCES_HIDE_WINDOWUI = 4
    POPPLER_VIEWER_PREFERENCES_FIT_WINDOW = 8
    POPPLER_VIEWER_PREFERENCES_CENTER_WINDOW = 16
    POPPLER_VIEWER_PREFERENCES_DISPLAY_DOC_TITLE = 32
    POPPLER_VIEWER_PREFERENCES_DIRECTION_RTL = 64
end

@cenum PopplerPrintScaling::UInt32 begin
    POPPLER_PRINT_SCALING_APP_DEFAULT = 0
    POPPLER_PRINT_SCALING_NONE = 1
end

@cenum PopplerPrintDuplex::UInt32 begin
    POPPLER_PRINT_DUPLEX_NONE = 0
    POPPLER_PRINT_DUPLEX_SIMPLEX = 1
    POPPLER_PRINT_DUPLEX_DUPLEX_FLIP_SHORT_EDGE = 2
    POPPLER_PRINT_DUPLEX_DUPLEX_FLIP_LONG_EDGE = 3
end

@cenum PopplerPermissions::UInt32 begin
    POPPLER_PERMISSIONS_OK_TO_PRINT = 1
    POPPLER_PERMISSIONS_OK_TO_MODIFY = 2
    POPPLER_PERMISSIONS_OK_TO_COPY = 4
    POPPLER_PERMISSIONS_OK_TO_ADD_NOTES = 8
    POPPLER_PERMISSIONS_OK_TO_FILL_FORM = 16
    POPPLER_PERMISSIONS_OK_TO_EXTRACT_CONTENTS = 32
    POPPLER_PERMISSIONS_OK_TO_ASSEMBLE = 64
    POPPLER_PERMISSIONS_OK_TO_PRINT_HIGH_RESOLUTION = 128
    POPPLER_PERMISSIONS_FULL = 255
end

@cenum PopplerPDFSubtype::UInt32 begin
    POPPLER_PDF_SUBTYPE_UNSET = 0
    POPPLER_PDF_SUBTYPE_PDF_A = 1
    POPPLER_PDF_SUBTYPE_PDF_E = 2
    POPPLER_PDF_SUBTYPE_PDF_UA = 3
    POPPLER_PDF_SUBTYPE_PDF_VT = 4
    POPPLER_PDF_SUBTYPE_PDF_X = 5
    POPPLER_PDF_SUBTYPE_NONE = 6
end

@cenum PopplerPDFPart::UInt32 begin
    POPPLER_PDF_SUBTYPE_PART_UNSET = 0
    POPPLER_PDF_SUBTYPE_PART_1 = 1
    POPPLER_PDF_SUBTYPE_PART_2 = 2
    POPPLER_PDF_SUBTYPE_PART_3 = 3
    POPPLER_PDF_SUBTYPE_PART_4 = 4
    POPPLER_PDF_SUBTYPE_PART_5 = 5
    POPPLER_PDF_SUBTYPE_PART_6 = 6
    POPPLER_PDF_SUBTYPE_PART_7 = 7
    POPPLER_PDF_SUBTYPE_PART_8 = 8
    POPPLER_PDF_SUBTYPE_PART_NONE = 9
end

@cenum PopplerPDFConformance::UInt32 begin
    POPPLER_PDF_SUBTYPE_CONF_UNSET = 0
    POPPLER_PDF_SUBTYPE_CONF_A = 1
    POPPLER_PDF_SUBTYPE_CONF_B = 2
    POPPLER_PDF_SUBTYPE_CONF_G = 3
    POPPLER_PDF_SUBTYPE_CONF_N = 4
    POPPLER_PDF_SUBTYPE_CONF_P = 5
    POPPLER_PDF_SUBTYPE_CONF_PG = 6
    POPPLER_PDF_SUBTYPE_CONF_U = 7
    POPPLER_PDF_SUBTYPE_CONF_NONE = 8
end


struct _PopplerPageRange
    start_page::Cint
    end_page::Cint
end

# Skipping MacroDefinition: POPPLER_TYPE_ACTION_TYPE ( poppler_action_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_DEST_TYPE ( poppler_dest_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ACTION_MOVIE_OPERATION ( poppler_action_movie_operation_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ACTION_LAYER_ACTION ( poppler_action_layer_action_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_TYPE ( poppler_annot_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_FLAG ( poppler_annot_flag_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_MARKUP_REPLY_TYPE ( poppler_annot_markup_reply_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_EXTERNAL_DATA_TYPE ( poppler_annot_external_data_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_TEXT_STATE ( poppler_annot_text_state_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_FREE_TEXT_QUADDING ( poppler_annot_free_text_quadding_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PAGE_LAYOUT ( poppler_page_layout_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PAGE_MODE ( poppler_page_mode_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FONT_TYPE ( poppler_font_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_VIEWER_PREFERENCES ( poppler_viewer_preferences_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PRINT_SCALING ( poppler_print_scaling_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PRINT_DUPLEX ( poppler_print_duplex_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PERMISSIONS ( poppler_permissions_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PDF_SUBTYPE ( poppler_pdf_subtype_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PDF_PART ( poppler_pdf_part_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PDF_CONFORMANCE ( poppler_pdf_conformance_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FORM_FIELD_TYPE ( poppler_form_field_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FORM_BUTTON_TYPE ( poppler_form_button_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FORM_TEXT_TYPE ( poppler_form_text_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FORM_CHOICE_TYPE ( poppler_form_choice_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ADDITIONAL_ACTION_TYPE ( poppler_additional_action_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_MOVIE_PLAY_MODE ( poppler_movie_play_mode_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_ELEMENT_KIND ( poppler_structure_element_kind_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_GET_TEXT_FLAGS ( poppler_structure_get_text_flags_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_PLACEMENT ( poppler_structure_placement_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_WRITING_MODE ( poppler_structure_writing_mode_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_BORDER_STYLE ( poppler_structure_border_style_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_TEXT_ALIGN ( poppler_structure_text_align_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_BLOCK_ALIGN ( poppler_structure_block_align_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_INLINE_ALIGN ( poppler_structure_inline_align_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_TEXT_DECORATION ( poppler_structure_text_decoration_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_RUBY_ALIGN ( poppler_structure_ruby_align_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_RUBY_POSITION ( poppler_structure_ruby_position_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_GLYPH_ORIENTATION ( poppler_structure_glyph_orientation_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_LIST_NUMBERING ( poppler_structure_list_numbering_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_FORM_ROLE ( poppler_structure_form_role_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_FORM_STATE ( poppler_structure_form_state_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_TABLE_SCOPE ( poppler_structure_table_scope_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ERROR ( poppler_error_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PAGE_TRANSITION_TYPE ( poppler_page_transition_type_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PAGE_TRANSITION_ALIGNMENT ( poppler_page_transition_alignment_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PAGE_TRANSITION_DIRECTION ( poppler_page_transition_direction_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_SELECTION_STYLE ( poppler_selection_style_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PRINT_FLAGS ( poppler_print_flags_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FIND_FLAGS ( poppler_find_flags_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_BACKEND ( poppler_backend_get_type ( ) )

const POPPLER_HAS_CAIRO = 1
const POPPLER_MAJOR_VERSION = 0
const POPPLER_MINOR_VERSION = 87
const POPPLER_MICRO_VERSION = 0

# Skipping MacroDefinition: POPPLER_CHECK_VERSION ( major , minor , micro ) ( POPPLER_MAJOR_VERSION > ( major ) || ( POPPLER_MAJOR_VERSION == ( major ) && POPPLER_MINOR_VERSION > ( minor ) ) || ( POPPLER_MAJOR_VERSION == ( major ) && POPPLER_MINOR_VERSION == ( minor ) && POPPLER_MICRO_VERSION >= ( micro ) ) )
# Skipping MacroDefinition: POPPLER_TYPE_FORM_FIELD ( poppler_form_field_get_type ( ) )
# Skipping MacroDefinition: POPPLER_FORM_FIELD ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_FORM_FIELD , PopplerFormField ) )
# Skipping MacroDefinition: POPPLER_IS_FORM_FIELD ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_FORM_FIELD ) )

@cenum PopplerFormFieldType::UInt32 begin
    POPPLER_FORM_FIELD_UNKNOWN = 0
    POPPLER_FORM_FIELD_BUTTON = 1
    POPPLER_FORM_FIELD_TEXT = 2
    POPPLER_FORM_FIELD_CHOICE = 3
    POPPLER_FORM_FIELD_SIGNATURE = 4
end

@cenum PopplerFormButtonType::UInt32 begin
    POPPLER_FORM_BUTTON_PUSH = 0
    POPPLER_FORM_BUTTON_CHECK = 1
    POPPLER_FORM_BUTTON_RADIO = 2
end

@cenum PopplerFormTextType::UInt32 begin
    POPPLER_FORM_TEXT_NORMAL = 0
    POPPLER_FORM_TEXT_MULTILINE = 1
    POPPLER_FORM_TEXT_FILE_SELECT = 2
end

@cenum PopplerFormChoiceType::UInt32 begin
    POPPLER_FORM_CHOICE_COMBO = 0
    POPPLER_FORM_CHOICE_LIST = 1
end

@cenum PopplerAdditionalActionType::UInt32 begin
    POPPLER_ADDITIONAL_ACTION_FIELD_MODIFIED = 0
    POPPLER_ADDITIONAL_ACTION_FORMAT_FIELD = 1
    POPPLER_ADDITIONAL_ACTION_VALIDATE_FIELD = 2
    POPPLER_ADDITIONAL_ACTION_CALCULATE_FIELD = 3
end


# Skipping MacroDefinition: POPPLER_TYPE_LAYER ( poppler_layer_get_type ( ) )
# Skipping MacroDefinition: POPPLER_LAYER ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_LAYER , PopplerLayer ) )
# Skipping MacroDefinition: POPPLER_IS_LAYER ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_LAYER ) )
# Skipping MacroDefinition: POPPLER_PUBLIC __attribute__ ( ( visibility ( "default" ) ) ) extern
# Skipping MacroDefinition: POPPLER_TYPE_MEDIA ( poppler_media_get_type ( ) )
# Skipping MacroDefinition: POPPLER_MEDIA ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_MEDIA , PopplerMedia ) )
# Skipping MacroDefinition: POPPLER_IS_MEDIA ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_MEDIA ) )

const PopplerMediaSaveFunc = Ptr{Cvoid}

# Skipping MacroDefinition: POPPLER_TYPE_MOVIE ( poppler_movie_get_type ( ) )
# Skipping MacroDefinition: POPPLER_MOVIE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_MOVIE , PopplerMovie ) )
# Skipping MacroDefinition: POPPLER_IS_MOVIE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_MOVIE ) )

@cenum PopplerMoviePlayMode::UInt32 begin
    POPPLER_MOVIE_PLAY_MODE_ONCE = 0
    POPPLER_MOVIE_PLAY_MODE_OPEN = 1
    POPPLER_MOVIE_PLAY_MODE_REPEAT = 2
    POPPLER_MOVIE_PLAY_MODE_PALINDROME = 3
end


# Skipping MacroDefinition: POPPLER_TYPE_PAGE ( poppler_page_get_type ( ) )
# Skipping MacroDefinition: POPPLER_PAGE ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_PAGE , PopplerPage ) )
# Skipping MacroDefinition: POPPLER_IS_PAGE ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_PAGE ) )
# Skipping MacroDefinition: POPPLER_TYPE_RECTANGLE ( poppler_rectangle_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_POINT ( poppler_point_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_QUADRILATERAL ( poppler_quadrilateral_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_COLOR ( poppler_color_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_TEXT_ATTRIBUTES ( poppler_text_attributes_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_LINK_MAPPING ( poppler_link_mapping_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_PAGE_TRANSITION ( poppler_page_transition_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_IMAGE_MAPPING ( poppler_image_mapping_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_FORM_FIELD_MAPPING ( poppler_form_field_mapping_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_ANNOT_MAPPING ( poppler_annot_mapping_get_type ( ) )

struct _PopplerRectangle
    x1::Cint
    y1::Cint
    x2::Cint
    y2::Cint
end

struct _PopplerPoint
    x::Cint
    y::Cint
end

const PopplerPoint = _PopplerPoint

struct _PopplerQuadrilateral
    p1::PopplerPoint
    p2::PopplerPoint
    p3::PopplerPoint
    p4::PopplerPoint
end

struct _PopplerColor
    red::Cint
    green::Cint
    blue::Cint
end

const PopplerColor = _PopplerColor

struct _PopplerTextAttributes
    font_name::Ptr{Cint}
    font_size::Cint
    is_underlined::Cint
    color::PopplerColor
    start_index::Cint
    end_index::Cint
end

const PopplerRectangle = _PopplerRectangle
const PopplerAction = _PopplerAction

struct _PopplerLinkMapping
    area::PopplerRectangle
    action::Ptr{PopplerAction}
end

@cenum PopplerPageTransitionType::UInt32 begin
    POPPLER_PAGE_TRANSITION_REPLACE = 0
    POPPLER_PAGE_TRANSITION_SPLIT = 1
    POPPLER_PAGE_TRANSITION_BLINDS = 2
    POPPLER_PAGE_TRANSITION_BOX = 3
    POPPLER_PAGE_TRANSITION_WIPE = 4
    POPPLER_PAGE_TRANSITION_DISSOLVE = 5
    POPPLER_PAGE_TRANSITION_GLITTER = 6
    POPPLER_PAGE_TRANSITION_FLY = 7
    POPPLER_PAGE_TRANSITION_PUSH = 8
    POPPLER_PAGE_TRANSITION_COVER = 9
    POPPLER_PAGE_TRANSITION_UNCOVER = 10
    POPPLER_PAGE_TRANSITION_FADE = 11
end

@cenum PopplerPageTransitionAlignment::UInt32 begin
    POPPLER_PAGE_TRANSITION_HORIZONTAL = 0
    POPPLER_PAGE_TRANSITION_VERTICAL = 1
end

@cenum PopplerPageTransitionDirection::UInt32 begin
    POPPLER_PAGE_TRANSITION_INWARD = 0
    POPPLER_PAGE_TRANSITION_OUTWARD = 1
end


struct _PopplerPageTransition
    type::PopplerPageTransitionType
    alignment::PopplerPageTransitionAlignment
    direction::PopplerPageTransitionDirection
    duration::Cint
    angle::Cint
    scale::Cint
    rectangular::Cint
    duration_real::Cint
end

struct _PopplerImageMapping
    area::PopplerRectangle
    image_id::Cint
end

const _PopplerFormField = Cvoid
const PopplerFormField = _PopplerFormField

struct _PopplerFormFieldMapping
    area::PopplerRectangle
    field::Ptr{PopplerFormField}
end

const _PopplerAnnot = Cvoid
const PopplerAnnot = _PopplerAnnot

struct _PopplerAnnotMapping
    area::PopplerRectangle
    annot::Ptr{PopplerAnnot}
end

# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_ELEMENT ( poppler_structure_element_get_type ( ) )
# Skipping MacroDefinition: POPPLER_STRUCTURE_ELEMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_CAST ( ( obj ) , POPPLER_TYPE_STRUCTURE_ELEMENT , PopplerStructureElement ) )
# Skipping MacroDefinition: POPPLER_IS_STRUCTURE_ELEMENT ( obj ) ( G_TYPE_CHECK_INSTANCE_TYPE ( ( obj ) , POPPLER_TYPE_STRUCTURE_ELEMENT ) )
# Skipping MacroDefinition: POPPLER_TYPE_STRUCTURE_ELEMENT_ITER ( poppler_structure_element_iter_get_type ( ) )
# Skipping MacroDefinition: POPPLER_TYPE_TEXT_SPAN ( poppler_text_span_get_type ( ) )

@cenum PopplerStructureElementKind::UInt32 begin
    POPPLER_STRUCTURE_ELEMENT_CONTENT = 0
    POPPLER_STRUCTURE_ELEMENT_OBJECT_REFERENCE = 1
    POPPLER_STRUCTURE_ELEMENT_DOCUMENT = 2
    POPPLER_STRUCTURE_ELEMENT_PART = 3
    POPPLER_STRUCTURE_ELEMENT_ARTICLE = 4
    POPPLER_STRUCTURE_ELEMENT_SECTION = 5
    POPPLER_STRUCTURE_ELEMENT_DIV = 6
    POPPLER_STRUCTURE_ELEMENT_SPAN = 7
    POPPLER_STRUCTURE_ELEMENT_QUOTE = 8
    POPPLER_STRUCTURE_ELEMENT_NOTE = 9
    POPPLER_STRUCTURE_ELEMENT_REFERENCE = 10
    POPPLER_STRUCTURE_ELEMENT_BIBENTRY = 11
    POPPLER_STRUCTURE_ELEMENT_CODE = 12
    POPPLER_STRUCTURE_ELEMENT_LINK = 13
    POPPLER_STRUCTURE_ELEMENT_ANNOT = 14
    POPPLER_STRUCTURE_ELEMENT_BLOCKQUOTE = 15
    POPPLER_STRUCTURE_ELEMENT_CAPTION = 16
    POPPLER_STRUCTURE_ELEMENT_NONSTRUCT = 17
    POPPLER_STRUCTURE_ELEMENT_TOC = 18
    POPPLER_STRUCTURE_ELEMENT_TOC_ITEM = 19
    POPPLER_STRUCTURE_ELEMENT_INDEX = 20
    POPPLER_STRUCTURE_ELEMENT_PRIVATE = 21
    POPPLER_STRUCTURE_ELEMENT_PARAGRAPH = 22
    POPPLER_STRUCTURE_ELEMENT_HEADING = 23
    POPPLER_STRUCTURE_ELEMENT_HEADING_1 = 24
    POPPLER_STRUCTURE_ELEMENT_HEADING_2 = 25
    POPPLER_STRUCTURE_ELEMENT_HEADING_3 = 26
    POPPLER_STRUCTURE_ELEMENT_HEADING_4 = 27
    POPPLER_STRUCTURE_ELEMENT_HEADING_5 = 28
    POPPLER_STRUCTURE_ELEMENT_HEADING_6 = 29
    POPPLER_STRUCTURE_ELEMENT_LIST = 30
    POPPLER_STRUCTURE_ELEMENT_LIST_ITEM = 31
    POPPLER_STRUCTURE_ELEMENT_LIST_LABEL = 32
    POPPLER_STRUCTURE_ELEMENT_LIST_BODY = 33
    POPPLER_STRUCTURE_ELEMENT_TABLE = 34
    POPPLER_STRUCTURE_ELEMENT_TABLE_ROW = 35
    POPPLER_STRUCTURE_ELEMENT_TABLE_HEADING = 36
    POPPLER_STRUCTURE_ELEMENT_TABLE_DATA = 37
    POPPLER_STRUCTURE_ELEMENT_TABLE_HEADER = 38
    POPPLER_STRUCTURE_ELEMENT_TABLE_FOOTER = 39
    POPPLER_STRUCTURE_ELEMENT_TABLE_BODY = 40
    POPPLER_STRUCTURE_ELEMENT_RUBY = 41
    POPPLER_STRUCTURE_ELEMENT_RUBY_BASE_TEXT = 42
    POPPLER_STRUCTURE_ELEMENT_RUBY_ANNOT_TEXT = 43
    POPPLER_STRUCTURE_ELEMENT_RUBY_PUNCTUATION = 44
    POPPLER_STRUCTURE_ELEMENT_WARICHU = 45
    POPPLER_STRUCTURE_ELEMENT_WARICHU_TEXT = 46
    POPPLER_STRUCTURE_ELEMENT_WARICHU_PUNCTUATION = 47
    POPPLER_STRUCTURE_ELEMENT_FIGURE = 48
    POPPLER_STRUCTURE_ELEMENT_FORMULA = 49
    POPPLER_STRUCTURE_ELEMENT_FORM = 50
end

@cenum PopplerStructureGetTextFlags::UInt32 begin
    POPPLER_STRUCTURE_GET_TEXT_NONE = 0
    POPPLER_STRUCTURE_GET_TEXT_RECURSIVE = 1
end

@cenum PopplerStructurePlacement::UInt32 begin
    POPPLER_STRUCTURE_PLACEMENT_BLOCK = 0
    POPPLER_STRUCTURE_PLACEMENT_INLINE = 1
    POPPLER_STRUCTURE_PLACEMENT_BEFORE = 2
    POPPLER_STRUCTURE_PLACEMENT_START = 3
    POPPLER_STRUCTURE_PLACEMENT_END = 4
end

@cenum PopplerStructureWritingMode::UInt32 begin
    POPPLER_STRUCTURE_WRITING_MODE_LR_TB = 0
    POPPLER_STRUCTURE_WRITING_MODE_RL_TB = 1
    POPPLER_STRUCTURE_WRITING_MODE_TB_RL = 2
end

@cenum PopplerStructureBorderStyle::UInt32 begin
    POPPLER_STRUCTURE_BORDER_STYLE_NONE = 0
    POPPLER_STRUCTURE_BORDER_STYLE_HIDDEN = 1
    POPPLER_STRUCTURE_BORDER_STYLE_DOTTED = 2
    POPPLER_STRUCTURE_BORDER_STYLE_DASHED = 3
    POPPLER_STRUCTURE_BORDER_STYLE_SOLID = 4
    POPPLER_STRUCTURE_BORDER_STYLE_DOUBLE = 5
    POPPLER_STRUCTURE_BORDER_STYLE_GROOVE = 6
    POPPLER_STRUCTURE_BORDER_STYLE_INSET = 7
    POPPLER_STRUCTURE_BORDER_STYLE_OUTSET = 8
end

@cenum PopplerStructureTextAlign::UInt32 begin
    POPPLER_STRUCTURE_TEXT_ALIGN_START = 0
    POPPLER_STRUCTURE_TEXT_ALIGN_CENTER = 1
    POPPLER_STRUCTURE_TEXT_ALIGN_END = 2
    POPPLER_STRUCTURE_TEXT_ALIGN_JUSTIFY = 3
end

@cenum PopplerStructureBlockAlign::UInt32 begin
    POPPLER_STRUCTURE_BLOCK_ALIGN_BEFORE = 0
    POPPLER_STRUCTURE_BLOCK_ALIGN_MIDDLE = 1
    POPPLER_STRUCTURE_BLOCK_ALIGN_AFTER = 2
    POPPLER_STRUCTURE_BLOCK_ALIGN_JUSTIFY = 3
end

@cenum PopplerStructureInlineAlign::UInt32 begin
    POPPLER_STRUCTURE_INLINE_ALIGN_START = 0
    POPPLER_STRUCTURE_INLINE_ALIGN_CENTER = 1
    POPPLER_STRUCTURE_INLINE_ALIGN_END = 2
end

@cenum PopplerStructureTextDecoration::UInt32 begin
    POPPLER_STRUCTURE_TEXT_DECORATION_NONE = 0
    POPPLER_STRUCTURE_TEXT_DECORATION_UNDERLINE = 1
    POPPLER_STRUCTURE_TEXT_DECORATION_OVERLINE = 2
    POPPLER_STRUCTURE_TEXT_DECORATION_LINETHROUGH = 3
end

@cenum PopplerStructureRubyAlign::UInt32 begin
    POPPLER_STRUCTURE_RUBY_ALIGN_START = 0
    POPPLER_STRUCTURE_RUBY_ALIGN_CENTER = 1
    POPPLER_STRUCTURE_RUBY_ALIGN_END = 2
    POPPLER_STRUCTURE_RUBY_ALIGN_JUSTIFY = 3
    POPPLER_STRUCTURE_RUBY_ALIGN_DISTRIBUTE = 4
end

@cenum PopplerStructureRubyPosition::UInt32 begin
    POPPLER_STRUCTURE_RUBY_POSITION_BEFORE = 0
    POPPLER_STRUCTURE_RUBY_POSITION_AFTER = 1
    POPPLER_STRUCTURE_RUBY_POSITION_WARICHU = 2
    POPPLER_STRUCTURE_RUBY_POSITION_INLINE = 3
end

@cenum PopplerStructureGlyphOrientation::UInt32 begin
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_AUTO = 0
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_0 = 0
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_90 = 1
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_180 = 2
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_270 = 3
end

@cenum PopplerStructureListNumbering::UInt32 begin
    POPPLER_STRUCTURE_LIST_NUMBERING_NONE = 0
    POPPLER_STRUCTURE_LIST_NUMBERING_DISC = 1
    POPPLER_STRUCTURE_LIST_NUMBERING_CIRCLE = 2
    POPPLER_STRUCTURE_LIST_NUMBERING_SQUARE = 3
    POPPLER_STRUCTURE_LIST_NUMBERING_DECIMAL = 4
    POPPLER_STRUCTURE_LIST_NUMBERING_UPPER_ROMAN = 5
    POPPLER_STRUCTURE_LIST_NUMBERING_LOWER_ROMAN = 6
    POPPLER_STRUCTURE_LIST_NUMBERING_UPPER_ALPHA = 7
    POPPLER_STRUCTURE_LIST_NUMBERING_LOWER_ALPHA = 8
end

@cenum PopplerStructureFormRole::UInt32 begin
    POPPLER_STRUCTURE_FORM_ROLE_UNDEFINED = 0
    POPPLER_STRUCTURE_FORM_ROLE_RADIO_BUTTON = 1
    POPPLER_STRUCTURE_FORM_ROLE_PUSH_BUTTON = 2
    POPPLER_STRUCTURE_FORM_ROLE_TEXT_VALUE = 3
    POPPLER_STRUCTURE_FORM_ROLE_CHECKBOX = 4
end

@cenum PopplerStructureFormState::UInt32 begin
    POPPLER_STRUCTURE_FORM_STATE_ON = 0
    POPPLER_STRUCTURE_FORM_STATE_OFF = 1
    POPPLER_STRUCTURE_FORM_STATE_NEUTRAL = 2
end

@cenum PopplerStructureTableScope::UInt32 begin
    POPPLER_STRUCTURE_TABLE_SCOPE_ROW = 0
    POPPLER_STRUCTURE_TABLE_SCOPE_COLUMN = 1
    POPPLER_STRUCTURE_TABLE_SCOPE_BOTH = 2
end


# Skipping MacroDefinition: POPPLER_ERROR poppler_error_quark ( )

@cenum PopplerError::UInt32 begin
    POPPLER_ERROR_INVALID = 0
    POPPLER_ERROR_ENCRYPTED = 1
    POPPLER_ERROR_OPEN_FILE = 2
    POPPLER_ERROR_BAD_CATALOG = 3
    POPPLER_ERROR_DAMAGED = 4
end

@cenum PopplerSelectionStyle::UInt32 begin
    POPPLER_SELECTION_GLYPH = 0
    POPPLER_SELECTION_WORD = 1
    POPPLER_SELECTION_LINE = 2
end

@cenum PopplerPrintFlags::UInt32 begin
    POPPLER_PRINT_DOCUMENT = 0
    POPPLER_PRINT_MARKUP_ANNOTS = 1
    POPPLER_PRINT_STAMP_ANNOTS_ONLY = 2
    POPPLER_PRINT_ALL = 1
end

@cenum PopplerFindFlags::UInt32 begin
    POPPLER_FIND_DEFAULT = 0
    POPPLER_FIND_CASE_SENSITIVE = 1
    POPPLER_FIND_BACKWARDS = 2
    POPPLER_FIND_WHOLE_WORDS_ONLY = 4
    POPPLER_FIND_IGNORE_DIACRITICS = 8
end


const _PopplerDocument = Cvoid
const PopplerDocument = _PopplerDocument
const _PopplerIndexIter = Cvoid
const PopplerIndexIter = _PopplerIndexIter
const _PopplerFontsIter = Cvoid
const PopplerFontsIter = _PopplerFontsIter
const _PopplerLayersIter = Cvoid
const PopplerLayersIter = _PopplerLayersIter
const PopplerTextAttributes = _PopplerTextAttributes
const PopplerLinkMapping = _PopplerLinkMapping
const PopplerPageTransition = _PopplerPageTransition
const PopplerImageMapping = _PopplerImageMapping
const PopplerFormFieldMapping = _PopplerFormFieldMapping
const PopplerAnnotMapping = _PopplerAnnotMapping
const _PopplerPage = Cvoid
const PopplerPage = _PopplerPage
const _PopplerFontInfo = Cvoid
const PopplerFontInfo = _PopplerFontInfo
const _PopplerLayer = Cvoid
const PopplerLayer = _PopplerLayer
const _PopplerPSFile = Cvoid
const PopplerPSFile = _PopplerPSFile
const PopplerActionLayer = _PopplerActionLayer
const _PopplerAttachment = Cvoid
const PopplerAttachment = _PopplerAttachment
const _PopplerAnnotMarkup = Cvoid
const PopplerAnnotMarkup = _PopplerAnnotMarkup
const _PopplerAnnotText = Cvoid
const PopplerAnnotText = _PopplerAnnotText
const _PopplerAnnotTextMarkup = Cvoid
const PopplerAnnotTextMarkup = _PopplerAnnotTextMarkup
const _PopplerAnnotFreeText = Cvoid
const PopplerAnnotFreeText = _PopplerAnnotFreeText
const _PopplerAnnotFileAttachment = Cvoid
const PopplerAnnotFileAttachment = _PopplerAnnotFileAttachment
const _PopplerAnnotMovie = Cvoid
const PopplerAnnotMovie = _PopplerAnnotMovie
const _PopplerAnnotScreen = Cvoid
const PopplerAnnotScreen = _PopplerAnnotScreen
const PopplerAnnotCalloutLine = _PopplerAnnotCalloutLine
const _PopplerAnnotLine = Cvoid
const PopplerAnnotLine = _PopplerAnnotLine
const _PopplerAnnotCircle = Cvoid
const PopplerAnnotCircle = _PopplerAnnotCircle
const _PopplerAnnotSquare = Cvoid
const PopplerAnnotSquare = _PopplerAnnotSquare
const PopplerQuadrilateral = _PopplerQuadrilateral
const _PopplerStructureElement = Cvoid
const PopplerStructureElement = _PopplerStructureElement
const _PopplerStructureElementIter = Cvoid
const PopplerStructureElementIter = _PopplerStructureElementIter
const _PopplerTextSpan = Cvoid
const PopplerTextSpan = _PopplerTextSpan
const PopplerPageRange = _PopplerPageRange

@cenum PopplerBackend::UInt32 begin
    POPPLER_BACKEND_UNKNOWN = 0
    POPPLER_BACKEND_SPLASH = 1
    POPPLER_BACKEND_CAIRO = 2
end
