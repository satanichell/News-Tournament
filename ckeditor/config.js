/*
Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.contentsCss = 'fonts.css';
	// the next line add the new font to the combobox in CKEditor
	config.font_names = 'B Titr;' + 'B Traffic;' + config.font_names;
};
