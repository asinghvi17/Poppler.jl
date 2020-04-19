# Julia wrapper for header: poppler-action.h
# Automatically generated using Clang.jl


function poppler_action_free(action)
    ccall((:poppler_action_free, poppler), Cvoid, (Ptr{PopplerAction},), action)
end

function poppler_action_copy(action)
    ccall((:poppler_action_copy, poppler), Ptr{PopplerAction}, (Ptr{PopplerAction},), action)
end

function poppler_dest_free(dest)
    ccall((:poppler_dest_free, poppler), Cvoid, (Ptr{PopplerDest},), dest)
end

function poppler_dest_copy(dest)
    ccall((:poppler_dest_copy, poppler), Ptr{PopplerDest}, (Ptr{PopplerDest},), dest)
end

function poppler_named_dest_from_bytestring(data, length)
    unsafe_string(ccall((:poppler_named_dest_from_bytestring, poppler), Cstring, (Ptr{Cint}, Cint), data, length))
end

function poppler_named_dest_to_bytestring()
    ccall((:poppler_named_dest_to_bytestring, poppler), Ptr{Cint}, ())
end
# Julia wrapper for header: poppler-annot.h
# Automatically generated using Clang.jl


function poppler_annot_get_annot_type(poppler_annot)
    ccall((:poppler_annot_get_annot_type, poppler), PopplerAnnotType, (Ptr{PopplerAnnot},), poppler_annot)
end

function poppler_annot_get_contents()
    ccall((:poppler_annot_get_contents, poppler), Ptr{Cint}, ())
end

function poppler_annot_set_contents(poppler_annot, contents)
    ccall((:poppler_annot_set_contents, poppler), Cvoid, (Ptr{PopplerAnnot}, Ptr{Cint}), poppler_annot, contents)
end

function poppler_annot_get_name()
    ccall((:poppler_annot_get_name, poppler), Ptr{Cint}, ())
end

function poppler_annot_get_modified()
    ccall((:poppler_annot_get_modified, poppler), Ptr{Cint}, ())
end

function poppler_annot_get_flags(poppler_annot)
    ccall((:poppler_annot_get_flags, poppler), PopplerAnnotFlag, (Ptr{PopplerAnnot},), poppler_annot)
end

function poppler_annot_set_flags(poppler_annot, flags)
    ccall((:poppler_annot_set_flags, poppler), Cvoid, (Ptr{PopplerAnnot}, PopplerAnnotFlag), poppler_annot, flags)
end

function poppler_annot_get_color(poppler_annot)
    ccall((:poppler_annot_get_color, poppler), Ptr{PopplerColor}, (Ptr{PopplerAnnot},), poppler_annot)
end

function poppler_annot_set_color(poppler_annot, poppler_color)
    ccall((:poppler_annot_set_color, poppler), Cvoid, (Ptr{PopplerAnnot}, Ptr{PopplerColor}), poppler_annot, poppler_color)
end

function poppler_annot_get_page_index()
    ccall((:poppler_annot_get_page_index, poppler), Cint, ())
end

function poppler_annot_get_rectangle(poppler_annot, poppler_rect)
    ccall((:poppler_annot_get_rectangle, poppler), Cvoid, (Ptr{PopplerAnnot}, Ptr{PopplerRectangle}), poppler_annot, poppler_rect)
end

function poppler_annot_set_rectangle(poppler_annot, poppler_rect)
    ccall((:poppler_annot_set_rectangle, poppler), Cvoid, (Ptr{PopplerAnnot}, Ptr{PopplerRectangle}), poppler_annot, poppler_rect)
end

function poppler_annot_markup_get_label()
    ccall((:poppler_annot_markup_get_label, poppler), Ptr{Cint}, ())
end

function poppler_annot_markup_set_label(poppler_annot, label)
    ccall((:poppler_annot_markup_set_label, poppler), Cvoid, (Ptr{PopplerAnnotMarkup}, Ptr{Cint}), poppler_annot, label)
end

function poppler_annot_markup_has_popup()
    ccall((:poppler_annot_markup_has_popup, poppler), Cint, ())
end

function poppler_annot_markup_set_popup(poppler_annot, popup_rect)
    ccall((:poppler_annot_markup_set_popup, poppler), Cvoid, (Ptr{PopplerAnnotMarkup}, Ptr{PopplerRectangle}), poppler_annot, popup_rect)
end

function poppler_annot_markup_get_popup_is_open()
    ccall((:poppler_annot_markup_get_popup_is_open, poppler), Cint, ())
end

function poppler_annot_markup_set_popup_is_open(poppler_annot, is_open)
    ccall((:poppler_annot_markup_set_popup_is_open, poppler), Cvoid, (Ptr{PopplerAnnotMarkup}, Cint), poppler_annot, is_open)
end

function poppler_annot_markup_get_popup_rectangle()
    ccall((:poppler_annot_markup_get_popup_rectangle, poppler), Cint, ())
end

function poppler_annot_markup_set_popup_rectangle(poppler_annot, poppler_rect)
    ccall((:poppler_annot_markup_set_popup_rectangle, poppler), Cvoid, (Ptr{PopplerAnnotMarkup}, Ptr{PopplerRectangle}), poppler_annot, poppler_rect)
end

function poppler_annot_markup_get_opacity()
    ccall((:poppler_annot_markup_get_opacity, poppler), Cint, ())
end

function poppler_annot_markup_set_opacity(poppler_annot, opacity)
    ccall((:poppler_annot_markup_set_opacity, poppler), Cvoid, (Ptr{PopplerAnnotMarkup}, Cint), poppler_annot, opacity)
end

function poppler_annot_markup_get_date()
    ccall((:poppler_annot_markup_get_date, poppler), Ptr{Cint}, ())
end

function poppler_annot_markup_get_subject()
    ccall((:poppler_annot_markup_get_subject, poppler), Ptr{Cint}, ())
end

function poppler_annot_markup_get_reply_to(poppler_annot)
    ccall((:poppler_annot_markup_get_reply_to, poppler), PopplerAnnotMarkupReplyType, (Ptr{PopplerAnnotMarkup},), poppler_annot)
end

function poppler_annot_markup_get_external_data(poppler_annot)
    ccall((:poppler_annot_markup_get_external_data, poppler), PopplerAnnotExternalDataType, (Ptr{PopplerAnnotMarkup},), poppler_annot)
end

function poppler_annot_text_new(doc, rect)
    ccall((:poppler_annot_text_new, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}), doc, rect)
end

function poppler_annot_text_get_is_open()
    ccall((:poppler_annot_text_get_is_open, poppler), Cint, ())
end

function poppler_annot_text_set_is_open(poppler_annot, is_open)
    ccall((:poppler_annot_text_set_is_open, poppler), Cvoid, (Ptr{PopplerAnnotText}, Cint), poppler_annot, is_open)
end

function poppler_annot_text_get_icon()
    ccall((:poppler_annot_text_get_icon, poppler), Ptr{Cint}, ())
end

function poppler_annot_text_set_icon(poppler_annot, icon)
    ccall((:poppler_annot_text_set_icon, poppler), Cvoid, (Ptr{PopplerAnnotText}, Ptr{Cint}), poppler_annot, icon)
end

function poppler_annot_text_get_state(poppler_annot)
    ccall((:poppler_annot_text_get_state, poppler), PopplerAnnotTextState, (Ptr{PopplerAnnotText},), poppler_annot)
end

function poppler_annot_text_markup_new_highlight(doc, rect, quadrilaterals)
    ccall((:poppler_annot_text_markup_new_highlight, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}, Ptr{Cint}), doc, rect, quadrilaterals)
end

function poppler_annot_text_markup_new_squiggly(doc, rect, quadrilaterals)
    ccall((:poppler_annot_text_markup_new_squiggly, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}, Ptr{Cint}), doc, rect, quadrilaterals)
end

function poppler_annot_text_markup_new_strikeout(doc, rect, quadrilaterals)
    ccall((:poppler_annot_text_markup_new_strikeout, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}, Ptr{Cint}), doc, rect, quadrilaterals)
end

function poppler_annot_text_markup_new_underline(doc, rect, quadrilaterals)
    ccall((:poppler_annot_text_markup_new_underline, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}, Ptr{Cint}), doc, rect, quadrilaterals)
end

function poppler_annot_text_markup_set_quadrilaterals(poppler_annot, quadrilaterals)
    ccall((:poppler_annot_text_markup_set_quadrilaterals, poppler), Cvoid, (Ptr{PopplerAnnotTextMarkup}, Ptr{Cint}), poppler_annot, quadrilaterals)
end

function poppler_annot_text_markup_get_quadrilaterals()
    ccall((:poppler_annot_text_markup_get_quadrilaterals, poppler), Ptr{Cint}, ())
end

function poppler_annot_free_text_get_quadding(poppler_annot)
    ccall((:poppler_annot_free_text_get_quadding, poppler), PopplerAnnotFreeTextQuadding, (Ptr{PopplerAnnotFreeText},), poppler_annot)
end

function poppler_annot_free_text_get_callout_line(poppler_annot)
    ccall((:poppler_annot_free_text_get_callout_line, poppler), Ptr{PopplerAnnotCalloutLine}, (Ptr{PopplerAnnotFreeText},), poppler_annot)
end

function poppler_annot_file_attachment_get_attachment(poppler_annot)
    ccall((:poppler_annot_file_attachment_get_attachment, poppler), Ptr{PopplerAttachment}, (Ptr{PopplerAnnotFileAttachment},), poppler_annot)
end

function poppler_annot_file_attachment_get_name()
    ccall((:poppler_annot_file_attachment_get_name, poppler), Ptr{Cint}, ())
end

function poppler_annot_movie_get_title()
    ccall((:poppler_annot_movie_get_title, poppler), Ptr{Cint}, ())
end

function poppler_annot_movie_get_movie(poppler_annot)
    ccall((:poppler_annot_movie_get_movie, poppler), Ptr{PopplerMovie}, (Ptr{PopplerAnnotMovie},), poppler_annot)
end

function poppler_annot_screen_get_action(poppler_annot)
    ccall((:poppler_annot_screen_get_action, poppler), Ptr{PopplerAction}, (Ptr{PopplerAnnotScreen},), poppler_annot)
end

function poppler_annot_line_new(doc, rect, start, _end)
    ccall((:poppler_annot_line_new, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}, Ptr{PopplerPoint}, Ptr{PopplerPoint}), doc, rect, start, _end)
end

function poppler_annot_line_set_vertices(poppler_annot, start, _end)
    ccall((:poppler_annot_line_set_vertices, poppler), Cvoid, (Ptr{PopplerAnnotLine}, Ptr{PopplerPoint}, Ptr{PopplerPoint}), poppler_annot, start, _end)
end

function poppler_annot_callout_line_new()
    ccall((:poppler_annot_callout_line_new, poppler), Ptr{PopplerAnnotCalloutLine}, ())
end

function poppler_annot_callout_line_copy(callout)
    ccall((:poppler_annot_callout_line_copy, poppler), Ptr{PopplerAnnotCalloutLine}, (Ptr{PopplerAnnotCalloutLine},), callout)
end

function poppler_annot_callout_line_free(callout)
    ccall((:poppler_annot_callout_line_free, poppler), Cvoid, (Ptr{PopplerAnnotCalloutLine},), callout)
end

function poppler_annot_circle_new(doc, rect)
    ccall((:poppler_annot_circle_new, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}), doc, rect)
end

function poppler_annot_circle_set_interior_color(poppler_annot, poppler_color)
    ccall((:poppler_annot_circle_set_interior_color, poppler), Cvoid, (Ptr{PopplerAnnotCircle}, Ptr{PopplerColor}), poppler_annot, poppler_color)
end

function poppler_annot_circle_get_interior_color(poppler_annot)
    ccall((:poppler_annot_circle_get_interior_color, poppler), Ptr{PopplerColor}, (Ptr{PopplerAnnotCircle},), poppler_annot)
end

function poppler_annot_square_new(doc, rect)
    ccall((:poppler_annot_square_new, poppler), Ptr{PopplerAnnot}, (Ptr{PopplerDocument}, Ptr{PopplerRectangle}), doc, rect)
end

function poppler_annot_square_set_interior_color(poppler_annot, poppler_color)
    ccall((:poppler_annot_square_set_interior_color, poppler), Cvoid, (Ptr{PopplerAnnotSquare}, Ptr{PopplerColor}), poppler_annot, poppler_color)
end

function poppler_annot_square_get_interior_color(poppler_annot)
    ccall((:poppler_annot_square_get_interior_color, poppler), Ptr{PopplerColor}, (Ptr{PopplerAnnotSquare},), poppler_annot)
end
# Julia wrapper for header: poppler-attachment.h
# Automatically generated using Clang.jl


function poppler_attachment_save()
    ccall((:poppler_attachment_save, poppler), Cint, ())
end

function poppler_attachment_save_to_callback()
    ccall((:poppler_attachment_save_to_callback, poppler), Cint, ())
end
# Julia wrapper for header: poppler-date.h
# Automatically generated using Clang.jl


function poppler_date_parse()
    ccall((:poppler_date_parse, poppler), Cint, ())
end
# Julia wrapper for header: poppler-document.h
# Automatically generated using Clang.jl


function poppler_document_new_from_file(uri, password, error)
    ccall((:poppler_document_new_from_file, poppler), Ptr{PopplerDocument}, (Cstring, Cstring, Ptr{Ptr{Cint}}), uri, password, error)
end

function poppler_document_new_from_data(data, length, password, error)
    ccall((:poppler_document_new_from_data, poppler), Ptr{PopplerDocument}, (Cstring, Cint, Cstring, Ptr{Ptr{Cint}}), data, length, password, error)
end

function poppler_document_new_from_bytes(bytes, password, error)
    ccall((:poppler_document_new_from_bytes, poppler), Ptr{PopplerDocument}, (Ptr{Cint}, Cstring, Ptr{Ptr{Cint}}), bytes, password, error)
end

function poppler_document_new_from_stream(stream, length, password, cancellable, error)
    ccall((:poppler_document_new_from_stream, poppler), Ptr{PopplerDocument}, (Ptr{Cint}, Cint, Cstring, Ptr{Cint}, Ptr{Ptr{Cint}}), stream, length, password, cancellable, error)
end

function poppler_document_new_from_gfile(file, password, cancellable, error)
    ccall((:poppler_document_new_from_gfile, poppler), Ptr{PopplerDocument}, (Ptr{Cint}, Cstring, Ptr{Cint}, Ptr{Ptr{Cint}}), file, password, cancellable, error)
end

function poppler_document_save()
    ccall((:poppler_document_save, poppler), Cint, ())
end

function poppler_document_save_a_copy()
    ccall((:poppler_document_save_a_copy, poppler), Cint, ())
end

function poppler_document_get_id()
    ccall((:poppler_document_get_id, poppler), Cint, ())
end

function poppler_document_get_n_pages(document)
    ccall((:poppler_document_get_n_pages, poppler), Cint, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_page(document, index)
    ccall((:poppler_document_get_page, poppler), Ptr{PopplerPage}, (Ptr{PopplerDocument}, Cint), document, index)
end

function poppler_document_get_page_by_label(document, label)
    ccall((:poppler_document_get_page_by_label, poppler), Ptr{PopplerPage}, (Ptr{PopplerDocument}, Cstring), document, label)
end

function poppler_document_get_pdf_version_string()
    ccall((:poppler_document_get_pdf_version_string, poppler), Ptr{Cint}, ())
end

function poppler_document_get_pdf_version(document, major_version, minor_version)
    ccall((:poppler_document_get_pdf_version, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}, Ptr{Cint}), document, major_version, minor_version)
end

function poppler_document_get_title()
    ccall((:poppler_document_get_title, poppler), Ptr{Cint}, ())
end

function poppler_document_set_title(document, title)
    ccall((:poppler_document_set_title, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}), document, title)
end

function poppler_document_get_author()
    ccall((:poppler_document_get_author, poppler), Ptr{Cint}, ())
end

function poppler_document_set_author(document, author)
    ccall((:poppler_document_set_author, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}), document, author)
end

function poppler_document_get_subject()
    ccall((:poppler_document_get_subject, poppler), Ptr{Cint}, ())
end

function poppler_document_set_subject(document, subject)
    ccall((:poppler_document_set_subject, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}), document, subject)
end

function poppler_document_get_keywords()
    ccall((:poppler_document_get_keywords, poppler), Ptr{Cint}, ())
end

function poppler_document_set_keywords(document, keywords)
    ccall((:poppler_document_set_keywords, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}), document, keywords)
end

function poppler_document_get_creator()
    ccall((:poppler_document_get_creator, poppler), Ptr{Cint}, ())
end

function poppler_document_set_creator(document, creator)
    ccall((:poppler_document_set_creator, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}), document, creator)
end

function poppler_document_get_producer()
    ccall((:poppler_document_get_producer, poppler), Ptr{Cint}, ())
end

function poppler_document_set_producer(document, producer)
    ccall((:poppler_document_set_producer, poppler), Cvoid, (Ptr{PopplerDocument}, Ptr{Cint}), document, producer)
end

function poppler_document_get_creation_date()
    ccall((:poppler_document_get_creation_date, poppler), Cint, ())
end

function poppler_document_set_creation_date(document, creation_date)
    ccall((:poppler_document_set_creation_date, poppler), Cvoid, (Ptr{PopplerDocument}, Cint), document, creation_date)
end

function poppler_document_get_modification_date()
    ccall((:poppler_document_get_modification_date, poppler), Cint, ())
end

function poppler_document_set_modification_date(document, modification_date)
    ccall((:poppler_document_set_modification_date, poppler), Cvoid, (Ptr{PopplerDocument}, Cint), document, modification_date)
end

function poppler_document_is_linearized()
    ccall((:poppler_document_is_linearized, poppler), Cint, ())
end

function poppler_document_get_page_layout(document)
    ccall((:poppler_document_get_page_layout, poppler), PopplerPageLayout, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_page_mode(document)
    ccall((:poppler_document_get_page_mode, poppler), PopplerPageMode, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_permissions(document)
    ccall((:poppler_document_get_permissions, poppler), PopplerPermissions, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_pdf_subtype_string()
    ccall((:poppler_document_get_pdf_subtype_string, poppler), Ptr{Cint}, ())
end

function poppler_document_get_pdf_subtype(document)
    ccall((:poppler_document_get_pdf_subtype, poppler), PopplerPDFSubtype, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_pdf_part(document)
    ccall((:poppler_document_get_pdf_part, poppler), PopplerPDFPart, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_pdf_conformance(document)
    ccall((:poppler_document_get_pdf_conformance, poppler), PopplerPDFConformance, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_metadata()
    ccall((:poppler_document_get_metadata, poppler), Ptr{Cint}, ())
end

function poppler_document_get_print_scaling(document)
    ccall((:poppler_document_get_print_scaling, poppler), PopplerPrintScaling, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_print_duplex(document)
    ccall((:poppler_document_get_print_duplex, poppler), PopplerPrintDuplex, (Ptr{PopplerDocument},), document)
end

function poppler_document_get_print_n_copies()
    ccall((:poppler_document_get_print_n_copies, poppler), Cint, ())
end

function poppler_document_get_n_attachments()
    ccall((:poppler_document_get_n_attachments, poppler), Cint, ())
end

function poppler_document_has_attachments()
    ccall((:poppler_document_has_attachments, poppler), Cint, ())
end

function poppler_document_get_attachments()
    ccall((:poppler_document_get_attachments, poppler), Ptr{Cint}, ())
end

function poppler_document_find_dest(document, link_name)
    ccall((:poppler_document_find_dest, poppler), Ptr{PopplerDest}, (Ptr{PopplerDocument}, Ptr{Cint}), document, link_name)
end

function poppler_document_create_dests_tree()
    ccall((:poppler_document_create_dests_tree, poppler), Ptr{Cint}, ())
end

function poppler_document_get_form_field(document, id)
    ccall((:poppler_document_get_form_field, poppler), Ptr{PopplerFormField}, (Ptr{PopplerDocument}, Cint), document, id)
end

function poppler_index_iter_new(document)
    ccall((:poppler_index_iter_new, poppler), Ptr{PopplerIndexIter}, (Ptr{PopplerDocument},), document)
end

function poppler_index_iter_copy(iter)
    ccall((:poppler_index_iter_copy, poppler), Ptr{PopplerIndexIter}, (Ptr{PopplerIndexIter},), iter)
end

function poppler_index_iter_free(iter)
    ccall((:poppler_index_iter_free, poppler), Cvoid, (Ptr{PopplerIndexIter},), iter)
end

function poppler_index_iter_get_child(parent)
    ccall((:poppler_index_iter_get_child, poppler), Ptr{PopplerIndexIter}, (Ptr{PopplerIndexIter},), parent)
end

function poppler_index_iter_is_open()
    ccall((:poppler_index_iter_is_open, poppler), Cint, ())
end

function poppler_index_iter_get_action(iter)
    ccall((:poppler_index_iter_get_action, poppler), Ptr{PopplerAction}, (Ptr{PopplerIndexIter},), iter)
end

function poppler_index_iter_next()
    ccall((:poppler_index_iter_next, poppler), Cint, ())
end

function poppler_font_info_new(document)
    ccall((:poppler_font_info_new, poppler), Ptr{PopplerFontInfo}, (Ptr{PopplerDocument},), document)
end

function poppler_font_info_scan()
    ccall((:poppler_font_info_scan, poppler), Cint, ())
end

function poppler_font_info_free(font_info)
    ccall((:poppler_font_info_free, poppler), Cvoid, (Ptr{PopplerFontInfo},), font_info)
end

function poppler_fonts_iter_copy(iter)
    ccall((:poppler_fonts_iter_copy, poppler), Ptr{PopplerFontsIter}, (Ptr{PopplerFontsIter},), iter)
end

function poppler_fonts_iter_free(iter)
    ccall((:poppler_fonts_iter_free, poppler), Cvoid, (Ptr{PopplerFontsIter},), iter)
end

function poppler_fonts_iter_get_name(iter)
    unsafe_string(ccall((:poppler_fonts_iter_get_name, poppler), Cstring, (Ptr{PopplerFontsIter},), iter))
end

function poppler_fonts_iter_get_full_name(iter)
    unsafe_string(ccall((:poppler_fonts_iter_get_full_name, poppler), Cstring, (Ptr{PopplerFontsIter},), iter))
end

function poppler_fonts_iter_get_substitute_name(iter)
    unsafe_string(ccall((:poppler_fonts_iter_get_substitute_name, poppler), Cstring, (Ptr{PopplerFontsIter},), iter))
end

function poppler_fonts_iter_get_file_name(iter)
    unsafe_string(ccall((:poppler_fonts_iter_get_file_name, poppler), Cstring, (Ptr{PopplerFontsIter},), iter))
end

function poppler_fonts_iter_get_font_type(iter)
    ccall((:poppler_fonts_iter_get_font_type, poppler), PopplerFontType, (Ptr{PopplerFontsIter},), iter)
end

function poppler_fonts_iter_get_encoding(iter)
    unsafe_string(ccall((:poppler_fonts_iter_get_encoding, poppler), Cstring, (Ptr{PopplerFontsIter},), iter))
end

function poppler_fonts_iter_is_embedded()
    ccall((:poppler_fonts_iter_is_embedded, poppler), Cint, ())
end

function poppler_fonts_iter_is_subset()
    ccall((:poppler_fonts_iter_is_subset, poppler), Cint, ())
end

function poppler_fonts_iter_next()
    ccall((:poppler_fonts_iter_next, poppler), Cint, ())
end

function poppler_layers_iter_new(document)
    ccall((:poppler_layers_iter_new, poppler), Ptr{PopplerLayersIter}, (Ptr{PopplerDocument},), document)
end

function poppler_layers_iter_copy(iter)
    ccall((:poppler_layers_iter_copy, poppler), Ptr{PopplerLayersIter}, (Ptr{PopplerLayersIter},), iter)
end

function poppler_layers_iter_free(iter)
    ccall((:poppler_layers_iter_free, poppler), Cvoid, (Ptr{PopplerLayersIter},), iter)
end

function poppler_layers_iter_get_child(parent)
    ccall((:poppler_layers_iter_get_child, poppler), Ptr{PopplerLayersIter}, (Ptr{PopplerLayersIter},), parent)
end

function poppler_layers_iter_get_title()
    ccall((:poppler_layers_iter_get_title, poppler), Ptr{Cint}, ())
end

function poppler_layers_iter_get_layer(iter)
    ccall((:poppler_layers_iter_get_layer, poppler), Ptr{PopplerLayer}, (Ptr{PopplerLayersIter},), iter)
end

function poppler_layers_iter_next()
    ccall((:poppler_layers_iter_next, poppler), Cint, ())
end

function poppler_ps_file_new(document, filename, first_page, n_pages)
    ccall((:poppler_ps_file_new, poppler), Ptr{PopplerPSFile}, (Ptr{PopplerDocument}, Cstring, Cint, Cint), document, filename, first_page, n_pages)
end

function poppler_ps_file_set_paper_size(ps_file, width, height)
    ccall((:poppler_ps_file_set_paper_size, poppler), Cvoid, (Ptr{PopplerPSFile}, Cdouble, Cdouble), ps_file, width, height)
end

function poppler_ps_file_set_duplex(ps_file, duplex)
    ccall((:poppler_ps_file_set_duplex, poppler), Cvoid, (Ptr{PopplerPSFile}, Cint), ps_file, duplex)
end

function poppler_ps_file_free(ps_file)
    ccall((:poppler_ps_file_free, poppler), Cvoid, (Ptr{PopplerPSFile},), ps_file)
end
# Julia wrapper for header: poppler-enums.h
# Automatically generated using Clang.jl

# Julia wrapper for header: poppler-features.h
# Automatically generated using Clang.jl

# Julia wrapper for header: poppler-form-field.h
# Automatically generated using Clang.jl


function poppler_form_field_get_field_type(field)
    ccall((:poppler_form_field_get_field_type, poppler), PopplerFormFieldType, (Ptr{PopplerFormField},), field)
end

function poppler_form_field_get_id()
    ccall((:poppler_form_field_get_id, poppler), Cint, ())
end

function poppler_form_field_get_font_size()
    ccall((:poppler_form_field_get_font_size, poppler), Cint, ())
end

function poppler_form_field_is_read_only()
    ccall((:poppler_form_field_is_read_only, poppler), Cint, ())
end

function poppler_form_field_get_partial_name()
    ccall((:poppler_form_field_get_partial_name, poppler), Ptr{Cint}, ())
end

function poppler_form_field_get_mapping_name()
    ccall((:poppler_form_field_get_mapping_name, poppler), Ptr{Cint}, ())
end

function poppler_form_field_get_name()
    ccall((:poppler_form_field_get_name, poppler), Ptr{Cint}, ())
end

function poppler_form_field_get_action(field)
    ccall((:poppler_form_field_get_action, poppler), Ptr{PopplerAction}, (Ptr{PopplerFormField},), field)
end

function poppler_form_field_get_additional_action(field, type)
    ccall((:poppler_form_field_get_additional_action, poppler), Ptr{PopplerAction}, (Ptr{PopplerFormField}, PopplerAdditionalActionType), field, type)
end

function poppler_form_field_button_get_button_type(field)
    ccall((:poppler_form_field_button_get_button_type, poppler), PopplerFormButtonType, (Ptr{PopplerFormField},), field)
end

function poppler_form_field_button_get_state()
    ccall((:poppler_form_field_button_get_state, poppler), Cint, ())
end

function poppler_form_field_button_set_state(field, state)
    ccall((:poppler_form_field_button_set_state, poppler), Cvoid, (Ptr{PopplerFormField}, Cint), field, state)
end

function poppler_form_field_text_get_text_type(field)
    ccall((:poppler_form_field_text_get_text_type, poppler), PopplerFormTextType, (Ptr{PopplerFormField},), field)
end

function poppler_form_field_text_get_text()
    ccall((:poppler_form_field_text_get_text, poppler), Ptr{Cint}, ())
end

function poppler_form_field_text_set_text(field, text)
    ccall((:poppler_form_field_text_set_text, poppler), Cvoid, (Ptr{PopplerFormField}, Ptr{Cint}), field, text)
end

function poppler_form_field_text_get_max_len()
    ccall((:poppler_form_field_text_get_max_len, poppler), Cint, ())
end

function poppler_form_field_text_do_spell_check()
    ccall((:poppler_form_field_text_do_spell_check, poppler), Cint, ())
end

function poppler_form_field_text_do_scroll()
    ccall((:poppler_form_field_text_do_scroll, poppler), Cint, ())
end

function poppler_form_field_text_is_rich_text()
    ccall((:poppler_form_field_text_is_rich_text, poppler), Cint, ())
end

function poppler_form_field_text_is_password()
    ccall((:poppler_form_field_text_is_password, poppler), Cint, ())
end

function poppler_form_field_choice_get_choice_type(field)
    ccall((:poppler_form_field_choice_get_choice_type, poppler), PopplerFormChoiceType, (Ptr{PopplerFormField},), field)
end

function poppler_form_field_choice_is_editable()
    ccall((:poppler_form_field_choice_is_editable, poppler), Cint, ())
end

function poppler_form_field_choice_can_select_multiple()
    ccall((:poppler_form_field_choice_can_select_multiple, poppler), Cint, ())
end

function poppler_form_field_choice_do_spell_check()
    ccall((:poppler_form_field_choice_do_spell_check, poppler), Cint, ())
end

function poppler_form_field_choice_commit_on_change()
    ccall((:poppler_form_field_choice_commit_on_change, poppler), Cint, ())
end

function poppler_form_field_choice_get_n_items()
    ccall((:poppler_form_field_choice_get_n_items, poppler), Cint, ())
end

function poppler_form_field_choice_get_item()
    ccall((:poppler_form_field_choice_get_item, poppler), Ptr{Cint}, ())
end

function poppler_form_field_choice_is_item_selected()
    ccall((:poppler_form_field_choice_is_item_selected, poppler), Cint, ())
end

function poppler_form_field_choice_select_item(field, index)
    ccall((:poppler_form_field_choice_select_item, poppler), Cvoid, (Ptr{PopplerFormField}, Cint), field, index)
end

function poppler_form_field_choice_unselect_all(field)
    ccall((:poppler_form_field_choice_unselect_all, poppler), Cvoid, (Ptr{PopplerFormField},), field)
end

function poppler_form_field_choice_toggle_item(field, index)
    ccall((:poppler_form_field_choice_toggle_item, poppler), Cvoid, (Ptr{PopplerFormField}, Cint), field, index)
end

function poppler_form_field_choice_set_text(field, text)
    ccall((:poppler_form_field_choice_set_text, poppler), Cvoid, (Ptr{PopplerFormField}, Ptr{Cint}), field, text)
end

function poppler_form_field_choice_get_text()
    ccall((:poppler_form_field_choice_get_text, poppler), Ptr{Cint}, ())
end
# Julia wrapper for header: poppler-layer.h
# Automatically generated using Clang.jl


function poppler_layer_get_title()
    ccall((:poppler_layer_get_title, poppler), Ptr{Cint}, ())
end

function poppler_layer_is_visible()
    ccall((:poppler_layer_is_visible, poppler), Cint, ())
end

function poppler_layer_show(layer)
    ccall((:poppler_layer_show, poppler), Cvoid, (Ptr{PopplerLayer},), layer)
end

function poppler_layer_hide(layer)
    ccall((:poppler_layer_hide, poppler), Cvoid, (Ptr{PopplerLayer},), layer)
end

function poppler_layer_is_parent()
    ccall((:poppler_layer_is_parent, poppler), Cint, ())
end

function poppler_layer_get_radio_button_group_id()
    ccall((:poppler_layer_get_radio_button_group_id, poppler), Cint, ())
end
# Julia wrapper for header: poppler-macros.h
# Automatically generated using Clang.jl

# Julia wrapper for header: poppler-media.h
# Automatically generated using Clang.jl


function poppler_media_is_embedded()
    ccall((:poppler_media_is_embedded, poppler), Cint, ())
end

function poppler_media_get_filename()
    ccall((:poppler_media_get_filename, poppler), Ptr{Cint}, ())
end

function poppler_media_get_mime_type()
    ccall((:poppler_media_get_mime_type, poppler), Ptr{Cint}, ())
end

function poppler_media_save()
    ccall((:poppler_media_save, poppler), Cint, ())
end

function poppler_media_save_to_callback()
    ccall((:poppler_media_save_to_callback, poppler), Cint, ())
end
# Julia wrapper for header: poppler-movie.h
# Automatically generated using Clang.jl


function poppler_movie_get_filename()
    ccall((:poppler_movie_get_filename, poppler), Ptr{Cint}, ())
end

function poppler_movie_need_poster()
    ccall((:poppler_movie_need_poster, poppler), Cint, ())
end

function poppler_movie_show_controls()
    ccall((:poppler_movie_show_controls, poppler), Cint, ())
end

function poppler_movie_get_play_mode(poppler_movie)
    ccall((:poppler_movie_get_play_mode, poppler), PopplerMoviePlayMode, (Ptr{PopplerMovie},), poppler_movie)
end

function poppler_movie_is_synchronous()
    ccall((:poppler_movie_is_synchronous, poppler), Cint, ())
end

function poppler_movie_get_volume()
    ccall((:poppler_movie_get_volume, poppler), Cint, ())
end

function poppler_movie_get_rate()
    ccall((:poppler_movie_get_rate, poppler), Cint, ())
end

function poppler_movie_get_rotation_angle()
    ccall((:poppler_movie_get_rotation_angle, poppler), Cint, ())
end

function poppler_movie_get_start()
    ccall((:poppler_movie_get_start, poppler), Cint, ())
end

function poppler_movie_get_duration()
    ccall((:poppler_movie_get_duration, poppler), Cint, ())
end
# Julia wrapper for header: poppler-page.h
# Automatically generated using Clang.jl


function poppler_page_render(page, cairo)
    ccall((:poppler_page_render, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{Cint}), page, cairo)
end

function poppler_page_render_for_printing(page, cairo)
    ccall((:poppler_page_render_for_printing, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{Cint}), page, cairo)
end

function poppler_page_render_for_printing_with_options(page, cairo, options)
    ccall((:poppler_page_render_for_printing_with_options, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{Cint}, PopplerPrintFlags), page, cairo, options)
end

function poppler_page_get_thumbnail()
    ccall((:poppler_page_get_thumbnail, poppler), Ptr{Cint}, ())
end

function poppler_page_render_selection(page, cairo, selection, old_selection, style, glyph_color, background_color)
    ccall((:poppler_page_render_selection, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{Cint}, Ptr{PopplerRectangle}, Ptr{PopplerRectangle}, PopplerSelectionStyle, Ptr{PopplerColor}, Ptr{PopplerColor}), page, cairo, selection, old_selection, style, glyph_color, background_color)
end

function poppler_page_get_size(page, width, height)
    ccall((:poppler_page_get_size, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{Cdouble}, Ptr{Cdouble}), page, width, height)
end

function poppler_page_get_index(page)
    ccall((:poppler_page_get_index, poppler), Cint, (Ptr{PopplerPage},), page)
end

function poppler_page_get_label()
    ccall((:poppler_page_get_label, poppler), Ptr{Cint}, ())
end

function poppler_page_get_duration(page)
    ccall((:poppler_page_get_duration, poppler), Cdouble, (Ptr{PopplerPage},), page)
end

function poppler_page_get_transition(page)
    ccall((:poppler_page_get_transition, poppler), Ptr{PopplerPageTransition}, (Ptr{PopplerPage},), page)
end

function poppler_page_get_thumbnail_size()
    ccall((:poppler_page_get_thumbnail_size, poppler), Cint, ())
end

function poppler_page_find_text_with_options()
    ccall((:poppler_page_find_text_with_options, poppler), Ptr{Cint}, ())
end

function poppler_page_find_text()
    ccall((:poppler_page_find_text, poppler), Ptr{Cint}, ())
end

function poppler_page_render_to_ps(page, ps_file)
    ccall((:poppler_page_render_to_ps, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{PopplerPSFile}), page, ps_file)
end

function poppler_page_get_text(page)
    unsafe_string(ccall((:poppler_page_get_text, poppler), Cstring, (Ptr{PopplerPage},), page))
end

function poppler_page_get_text_for_area(page, area)
    unsafe_string(ccall((:poppler_page_get_text_for_area, poppler), Cstring, (Ptr{PopplerPage}, Ptr{PopplerRectangle}), page, area))
end

function poppler_page_get_selected_text(page, style, selection)
    unsafe_string(ccall((:poppler_page_get_selected_text, poppler), Cstring, (Ptr{PopplerPage}, PopplerSelectionStyle, Ptr{PopplerRectangle}), page, style, selection))
end

function poppler_page_get_selected_region()
    ccall((:poppler_page_get_selected_region, poppler), Ptr{Cint}, ())
end

function poppler_page_get_selection_region()
    ccall((:poppler_page_get_selection_region, poppler), Ptr{Cint}, ())
end

function poppler_page_selection_region_free(region)
    ccall((:poppler_page_selection_region_free, poppler), Cvoid, (Ptr{Cint},), region)
end

function poppler_page_get_link_mapping()
    ccall((:poppler_page_get_link_mapping, poppler), Ptr{Cint}, ())
end

function poppler_page_free_link_mapping(list)
    ccall((:poppler_page_free_link_mapping, poppler), Cvoid, (Ptr{Cint},), list)
end

function poppler_page_get_image_mapping()
    ccall((:poppler_page_get_image_mapping, poppler), Ptr{Cint}, ())
end

function poppler_page_free_image_mapping(list)
    ccall((:poppler_page_free_image_mapping, poppler), Cvoid, (Ptr{Cint},), list)
end

function poppler_page_get_image()
    ccall((:poppler_page_get_image, poppler), Ptr{Cint}, ())
end

function poppler_page_get_form_field_mapping()
    ccall((:poppler_page_get_form_field_mapping, poppler), Ptr{Cint}, ())
end

function poppler_page_free_form_field_mapping(list)
    ccall((:poppler_page_free_form_field_mapping, poppler), Cvoid, (Ptr{Cint},), list)
end

function poppler_page_get_annot_mapping()
    ccall((:poppler_page_get_annot_mapping, poppler), Ptr{Cint}, ())
end

function poppler_page_free_annot_mapping(list)
    ccall((:poppler_page_free_annot_mapping, poppler), Cvoid, (Ptr{Cint},), list)
end

function poppler_page_add_annot(page, annot)
    ccall((:poppler_page_add_annot, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{PopplerAnnot}), page, annot)
end

function poppler_page_remove_annot(page, annot)
    ccall((:poppler_page_remove_annot, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{PopplerAnnot}), page, annot)
end

function poppler_page_get_crop_box(page, rect)
    ccall((:poppler_page_get_crop_box, poppler), Cvoid, (Ptr{PopplerPage}, Ptr{PopplerRectangle}), page, rect)
end

function poppler_page_get_text_layout()
    ccall((:poppler_page_get_text_layout, poppler), Cint, ())
end

function poppler_page_get_text_layout_for_area()
    ccall((:poppler_page_get_text_layout_for_area, poppler), Cint, ())
end

function poppler_page_get_text_attributes()
    ccall((:poppler_page_get_text_attributes, poppler), Ptr{Cint}, ())
end

function poppler_page_free_text_attributes(list)
    ccall((:poppler_page_free_text_attributes, poppler), Cvoid, (Ptr{Cint},), list)
end

function poppler_page_get_text_attributes_for_area()
    ccall((:poppler_page_get_text_attributes_for_area, poppler), Ptr{Cint}, ())
end

function poppler_rectangle_new()
    ccall((:poppler_rectangle_new, poppler), Ptr{PopplerRectangle}, ())
end

function poppler_rectangle_copy(rectangle)
    ccall((:poppler_rectangle_copy, poppler), Ptr{PopplerRectangle}, (Ptr{PopplerRectangle},), rectangle)
end

function poppler_rectangle_free(rectangle)
    ccall((:poppler_rectangle_free, poppler), Cvoid, (Ptr{PopplerRectangle},), rectangle)
end

function poppler_point_new()
    ccall((:poppler_point_new, poppler), Ptr{PopplerPoint}, ())
end

function poppler_point_copy(point)
    ccall((:poppler_point_copy, poppler), Ptr{PopplerPoint}, (Ptr{PopplerPoint},), point)
end

function poppler_point_free(point)
    ccall((:poppler_point_free, poppler), Cvoid, (Ptr{PopplerPoint},), point)
end

function poppler_quadrilateral_new()
    ccall((:poppler_quadrilateral_new, poppler), Ptr{PopplerQuadrilateral}, ())
end

function poppler_quadrilateral_copy(quad)
    ccall((:poppler_quadrilateral_copy, poppler), Ptr{PopplerQuadrilateral}, (Ptr{PopplerQuadrilateral},), quad)
end

function poppler_quadrilateral_free(quad)
    ccall((:poppler_quadrilateral_free, poppler), Cvoid, (Ptr{PopplerQuadrilateral},), quad)
end

function poppler_color_new()
    ccall((:poppler_color_new, poppler), Ptr{PopplerColor}, ())
end

function poppler_color_copy(color)
    ccall((:poppler_color_copy, poppler), Ptr{PopplerColor}, (Ptr{PopplerColor},), color)
end

function poppler_color_free(color)
    ccall((:poppler_color_free, poppler), Cvoid, (Ptr{PopplerColor},), color)
end

function poppler_text_attributes_new()
    ccall((:poppler_text_attributes_new, poppler), Ptr{PopplerTextAttributes}, ())
end

function poppler_text_attributes_copy(text_attrs)
    ccall((:poppler_text_attributes_copy, poppler), Ptr{PopplerTextAttributes}, (Ptr{PopplerTextAttributes},), text_attrs)
end

function poppler_text_attributes_free(text_attrs)
    ccall((:poppler_text_attributes_free, poppler), Cvoid, (Ptr{PopplerTextAttributes},), text_attrs)
end

function poppler_link_mapping_new()
    ccall((:poppler_link_mapping_new, poppler), Ptr{PopplerLinkMapping}, ())
end

function poppler_link_mapping_copy(mapping)
    ccall((:poppler_link_mapping_copy, poppler), Ptr{PopplerLinkMapping}, (Ptr{PopplerLinkMapping},), mapping)
end

function poppler_link_mapping_free(mapping)
    ccall((:poppler_link_mapping_free, poppler), Cvoid, (Ptr{PopplerLinkMapping},), mapping)
end

function poppler_page_transition_new()
    ccall((:poppler_page_transition_new, poppler), Ptr{PopplerPageTransition}, ())
end

function poppler_page_transition_copy(transition)
    ccall((:poppler_page_transition_copy, poppler), Ptr{PopplerPageTransition}, (Ptr{PopplerPageTransition},), transition)
end

function poppler_page_transition_free(transition)
    ccall((:poppler_page_transition_free, poppler), Cvoid, (Ptr{PopplerPageTransition},), transition)
end

function poppler_image_mapping_new()
    ccall((:poppler_image_mapping_new, poppler), Ptr{PopplerImageMapping}, ())
end

function poppler_image_mapping_copy(mapping)
    ccall((:poppler_image_mapping_copy, poppler), Ptr{PopplerImageMapping}, (Ptr{PopplerImageMapping},), mapping)
end

function poppler_image_mapping_free(mapping)
    ccall((:poppler_image_mapping_free, poppler), Cvoid, (Ptr{PopplerImageMapping},), mapping)
end

function poppler_form_field_mapping_new()
    ccall((:poppler_form_field_mapping_new, poppler), Ptr{PopplerFormFieldMapping}, ())
end

function poppler_form_field_mapping_copy(mapping)
    ccall((:poppler_form_field_mapping_copy, poppler), Ptr{PopplerFormFieldMapping}, (Ptr{PopplerFormFieldMapping},), mapping)
end

function poppler_form_field_mapping_free(mapping)
    ccall((:poppler_form_field_mapping_free, poppler), Cvoid, (Ptr{PopplerFormFieldMapping},), mapping)
end

function poppler_annot_mapping_new()
    ccall((:poppler_annot_mapping_new, poppler), Ptr{PopplerAnnotMapping}, ())
end

function poppler_annot_mapping_copy(mapping)
    ccall((:poppler_annot_mapping_copy, poppler), Ptr{PopplerAnnotMapping}, (Ptr{PopplerAnnotMapping},), mapping)
end

function poppler_annot_mapping_free(mapping)
    ccall((:poppler_annot_mapping_free, poppler), Cvoid, (Ptr{PopplerAnnotMapping},), mapping)
end
# Julia wrapper for header: poppler-structure-element.h
# Automatically generated using Clang.jl


function poppler_structure_element_get_kind(poppler_structure_element)
    ccall((:poppler_structure_element_get_kind, poppler), PopplerStructureElementKind, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_page()
    ccall((:poppler_structure_element_get_page, poppler), Cint, ())
end

function poppler_structure_element_is_content()
    ccall((:poppler_structure_element_is_content, poppler), Cint, ())
end

function poppler_structure_element_is_inline()
    ccall((:poppler_structure_element_is_inline, poppler), Cint, ())
end

function poppler_structure_element_is_block()
    ccall((:poppler_structure_element_is_block, poppler), Cint, ())
end

function poppler_structure_element_is_grouping()
    ccall((:poppler_structure_element_is_grouping, poppler), Cint, ())
end

function poppler_structure_element_get_id()
    ccall((:poppler_structure_element_get_id, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_title()
    ccall((:poppler_structure_element_get_title, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_abbreviation()
    ccall((:poppler_structure_element_get_abbreviation, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_language()
    ccall((:poppler_structure_element_get_language, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_text()
    ccall((:poppler_structure_element_get_text, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_alt_text()
    ccall((:poppler_structure_element_get_alt_text, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_actual_text()
    ccall((:poppler_structure_element_get_actual_text, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_text_spans(poppler_structure_element, n_text_spans)
    ccall((:poppler_structure_element_get_text_spans, poppler), Ptr{Ptr{PopplerTextSpan}}, (Ptr{PopplerStructureElement}, Ptr{Cint}), poppler_structure_element, n_text_spans)
end

function poppler_structure_element_get_placement(poppler_structure_element)
    ccall((:poppler_structure_element_get_placement, poppler), PopplerStructurePlacement, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_writing_mode(poppler_structure_element)
    ccall((:poppler_structure_element_get_writing_mode, poppler), PopplerStructureWritingMode, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_background_color()
    ccall((:poppler_structure_element_get_background_color, poppler), Cint, ())
end

function poppler_structure_element_get_border_color()
    ccall((:poppler_structure_element_get_border_color, poppler), Cint, ())
end

function poppler_structure_element_get_border_style(poppler_structure_element, border_styles)
    ccall((:poppler_structure_element_get_border_style, poppler), Cvoid, (Ptr{PopplerStructureElement}, Ptr{PopplerStructureBorderStyle}), poppler_structure_element, border_styles)
end

function poppler_structure_element_get_border_thickness()
    ccall((:poppler_structure_element_get_border_thickness, poppler), Cint, ())
end

function poppler_structure_element_get_padding(poppler_structure_element, paddings)
    ccall((:poppler_structure_element_get_padding, poppler), Cvoid, (Ptr{PopplerStructureElement}, Ptr{Cint}), poppler_structure_element, paddings)
end

function poppler_structure_element_get_color()
    ccall((:poppler_structure_element_get_color, poppler), Cint, ())
end

function poppler_structure_element_get_space_before()
    ccall((:poppler_structure_element_get_space_before, poppler), Cint, ())
end

function poppler_structure_element_get_space_after()
    ccall((:poppler_structure_element_get_space_after, poppler), Cint, ())
end

function poppler_structure_element_get_start_indent()
    ccall((:poppler_structure_element_get_start_indent, poppler), Cint, ())
end

function poppler_structure_element_get_end_indent()
    ccall((:poppler_structure_element_get_end_indent, poppler), Cint, ())
end

function poppler_structure_element_get_text_indent()
    ccall((:poppler_structure_element_get_text_indent, poppler), Cint, ())
end

function poppler_structure_element_get_text_align(poppler_structure_element)
    ccall((:poppler_structure_element_get_text_align, poppler), PopplerStructureTextAlign, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_bounding_box()
    ccall((:poppler_structure_element_get_bounding_box, poppler), Cint, ())
end

function poppler_structure_element_get_width()
    ccall((:poppler_structure_element_get_width, poppler), Cint, ())
end

function poppler_structure_element_get_height()
    ccall((:poppler_structure_element_get_height, poppler), Cint, ())
end

function poppler_structure_element_get_block_align(poppler_structure_element)
    ccall((:poppler_structure_element_get_block_align, poppler), PopplerStructureBlockAlign, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_inline_align(poppler_structure_element)
    ccall((:poppler_structure_element_get_inline_align, poppler), PopplerStructureInlineAlign, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_table_border_style(poppler_structure_element, border_styles)
    ccall((:poppler_structure_element_get_table_border_style, poppler), Cvoid, (Ptr{PopplerStructureElement}, Ptr{PopplerStructureBorderStyle}), poppler_structure_element, border_styles)
end

function poppler_structure_element_get_table_padding(poppler_structure_element, paddings)
    ccall((:poppler_structure_element_get_table_padding, poppler), Cvoid, (Ptr{PopplerStructureElement}, Ptr{Cint}), poppler_structure_element, paddings)
end

function poppler_structure_element_get_baseline_shift()
    ccall((:poppler_structure_element_get_baseline_shift, poppler), Cint, ())
end

function poppler_structure_element_get_line_height()
    ccall((:poppler_structure_element_get_line_height, poppler), Cint, ())
end

function poppler_structure_element_get_text_decoration_color()
    ccall((:poppler_structure_element_get_text_decoration_color, poppler), Cint, ())
end

function poppler_structure_element_get_text_decoration_thickness()
    ccall((:poppler_structure_element_get_text_decoration_thickness, poppler), Cint, ())
end

function poppler_structure_element_get_text_decoration_type(poppler_structure_element)
    ccall((:poppler_structure_element_get_text_decoration_type, poppler), PopplerStructureTextDecoration, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_ruby_align(poppler_structure_element)
    ccall((:poppler_structure_element_get_ruby_align, poppler), PopplerStructureRubyAlign, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_ruby_position(poppler_structure_element)
    ccall((:poppler_structure_element_get_ruby_position, poppler), PopplerStructureRubyPosition, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_glyph_orientation(poppler_structure_element)
    ccall((:poppler_structure_element_get_glyph_orientation, poppler), PopplerStructureGlyphOrientation, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_column_count()
    ccall((:poppler_structure_element_get_column_count, poppler), Cint, ())
end

function poppler_structure_element_get_column_gaps()
    ccall((:poppler_structure_element_get_column_gaps, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_column_widths()
    ccall((:poppler_structure_element_get_column_widths, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_list_numbering(poppler_structure_element)
    ccall((:poppler_structure_element_get_list_numbering, poppler), PopplerStructureListNumbering, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_form_role(poppler_structure_element)
    ccall((:poppler_structure_element_get_form_role, poppler), PopplerStructureFormRole, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_form_state(poppler_structure_element)
    ccall((:poppler_structure_element_get_form_state, poppler), PopplerStructureFormState, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_form_description()
    ccall((:poppler_structure_element_get_form_description, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_get_table_row_span()
    ccall((:poppler_structure_element_get_table_row_span, poppler), Cint, ())
end

function poppler_structure_element_get_table_column_span()
    ccall((:poppler_structure_element_get_table_column_span, poppler), Cint, ())
end

function poppler_structure_element_get_table_headers()
    ccall((:poppler_structure_element_get_table_headers, poppler), Ptr{Ptr{Cint}}, ())
end

function poppler_structure_element_get_table_scope(poppler_structure_element)
    ccall((:poppler_structure_element_get_table_scope, poppler), PopplerStructureTableScope, (Ptr{PopplerStructureElement},), poppler_structure_element)
end

function poppler_structure_element_get_table_summary()
    ccall((:poppler_structure_element_get_table_summary, poppler), Ptr{Cint}, ())
end

function poppler_structure_element_iter_new(poppler_document)
    ccall((:poppler_structure_element_iter_new, poppler), Ptr{PopplerStructureElementIter}, (Ptr{PopplerDocument},), poppler_document)
end

function poppler_structure_element_iter_get_child(parent)
    ccall((:poppler_structure_element_iter_get_child, poppler), Ptr{PopplerStructureElementIter}, (Ptr{PopplerStructureElementIter},), parent)
end

function poppler_structure_element_iter_copy(iter)
    ccall((:poppler_structure_element_iter_copy, poppler), Ptr{PopplerStructureElementIter}, (Ptr{PopplerStructureElementIter},), iter)
end

function poppler_structure_element_iter_get_element(iter)
    ccall((:poppler_structure_element_iter_get_element, poppler), Ptr{PopplerStructureElement}, (Ptr{PopplerStructureElementIter},), iter)
end

function poppler_structure_element_iter_next()
    ccall((:poppler_structure_element_iter_next, poppler), Cint, ())
end

function poppler_structure_element_iter_free(iter)
    ccall((:poppler_structure_element_iter_free, poppler), Cvoid, (Ptr{PopplerStructureElementIter},), iter)
end

function poppler_text_span_copy(poppler_text_span)
    ccall((:poppler_text_span_copy, poppler), Ptr{PopplerTextSpan}, (Ptr{PopplerTextSpan},), poppler_text_span)
end

function poppler_text_span_free(poppler_text_span)
    ccall((:poppler_text_span_free, poppler), Cvoid, (Ptr{PopplerTextSpan},), poppler_text_span)
end

function poppler_text_span_is_fixed_width_font()
    ccall((:poppler_text_span_is_fixed_width_font, poppler), Cint, ())
end

function poppler_text_span_is_serif_font()
    ccall((:poppler_text_span_is_serif_font, poppler), Cint, ())
end

function poppler_text_span_is_bold_font()
    ccall((:poppler_text_span_is_bold_font, poppler), Cint, ())
end

function poppler_text_span_get_color(poppler_text_span, color)
    ccall((:poppler_text_span_get_color, poppler), Cvoid, (Ptr{PopplerTextSpan}, Ptr{PopplerColor}), poppler_text_span, color)
end

function poppler_text_span_get_text()
    ccall((:poppler_text_span_get_text, poppler), Ptr{Cint}, ())
end

function poppler_text_span_get_font_name()
    ccall((:poppler_text_span_get_font_name, poppler), Ptr{Cint}, ())
end
# Julia wrapper for header: poppler.h
# Automatically generated using Clang.jl


function poppler_get_backend()
    ccall((:poppler_get_backend, poppler), PopplerBackend, ())
end

function poppler_get_version()
    unsafe_string(ccall((:poppler_get_version, poppler), Cstring, ()))
end
