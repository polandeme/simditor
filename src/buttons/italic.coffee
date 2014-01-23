
class ItalicButton extends Button

  name: 'italic'

  icon: 'italic'

  title: '斜体文字'

  htmlTag: 'i'

  shortcut: 73

  status: ->
    active = document.queryCommandState('italic') is true
    @setActive active
    active

  command: ->
    super()
    document.execCommand 'italic'
    @toolbar.editor.trigger 'valuechanged'
    @toolbar.editor.trigger 'selectionchanged'


Simditor.Toolbar.addButton(ItalicButton)
