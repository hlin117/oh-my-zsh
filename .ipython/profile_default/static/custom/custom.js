// leave at least 2 line with only a star on it below, or doc generation fails
/**
 *
 *
 * Placeholder for custom user javascript
 * mainly to be overridden in profile/static/custom/custom.js
 * This will always be an empty file in IPython
 *
 * User could add any javascript in the `profile/static/custom/custom.js` file
 * (and should create it if it does not exist).
 * It will be executed by the ipython notebook at load time.
 *
 * Same thing with `profile/static/custom/custom.css` to inject custom css into the notebook.
 *
 * Example :
 *
 * Create a custom button in toolbar that execute `%qtconsole` in kernel
 * and hence open a qtconsole attached to the same kernel as the current notebook
 *
 *    $([IPython.events]).on('app_initialized.NotebookApp', function(){
 *        IPython.toolbar.add_buttons_group([
 *            {
 *                 'label'   : 'run qtconsole',
 *                 'icon'    : 'icon-terminal', // select your icon from http://fortawesome.github.io/Font-Awesome/icons
 *                 'callback': function () {
 *                     IPython.notebook.kernel.execute('%qtconsole')
 *                 }
 *            }
 *            // add more button here if needed.
 *            ]);
 *    });
 *
 * Example :
 *
 *  Use `jQuery.getScript(url [, success(script, textStatus, jqXHR)] );`
 *  to load custom script into the notebook.
 *
 *    // to load the metadata ui extension example.
 *    $.getScript('/static/notebook/js/celltoolbarpresets/example.js');
 *    // or
 *    // to load the metadata ui extension to control slideshow mode / reveal js for nbconvert
 *    $.getScript('/static/notebook/js/celltoolbarpresets/slideshow.js');
 *
 *
 * @module IPython
 * @namespace IPython
 * @class customjs
 * @static
 */

$([IPython.events]).on("app_initialized.NotebookApp", function () {

    IPython.keyboard_manager.command_shortcuts.add_shortcut('ctrl-k', 'ipython.move-selected-cell-up');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('ctrl-j', 'ipython.move-selected-cell-down');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('o', 'ipython.insert-cell-after');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('shift-o', 'ipython.insert-cell-before');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('shift-j', 'ipython.merge-selected-cell-with-cell-after');  // Merge cell below
    IPython.keyboard_manager.command_shortcuts.add_shortcut('u', 'ipython.undo-last-cell-deletion');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('ctrl-c', 'ipython.interrupt-kernel');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('p', 'ipython.paste-cell-after');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('y', 'ipython.copy-selected-cell');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('shift-[', 'ipython.scroll-up');
    IPython.keyboard_manager.command_shortcuts.add_shortcut('shift-]', 'ipython.scroll-down');
    //IPython.keyboard_manager.command_shortcuts.add_shortcut('g,g', 'ipython.scroll-cell-top');

    // Removing unncessary shortcuts that I don't use (or have redefined),
    // and that I don't want to trigger
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("a");  // insert above
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("b");  // insert below
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("shift-m");  // merge selected cells
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("q");  // close pager?
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("v");  // close pager?
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("shift-v");  // close pager?
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("i,i");  // interrupt kernel
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("s");  // Save (this is a duplicate default command)
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("z");  // Undo last cell deletion
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("c");  // Copy cell
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("shift-space");  // Scroll up
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("space");  // Scroll down
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("shift");  // Ignore
    IPython.keyboard_manager.command_shortcuts.remove_shortcut("shift-k");  // Extend selection above

});
