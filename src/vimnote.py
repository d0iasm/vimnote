from evernote.api.client import EvernoteClient
import evernote.edam.type.ttypes as Types

# dev_token = "put your dev token here"
# client = EvernoteClient(token=dev_token)
# userStore = client.get_user_store()
# user = userStore.getUser()
# print(user.username)
#
# noteStore = client.get_note_store()
# notebooks = noteStore.listNotebooks()
# for n in notebooks:
#     print(n.name)


class Vimnote(object):
    _instance = None

    def __init__(self, *args, **keys):
        pass

    @classmethod
    def getInstance(self):
        if self._instance is None:
            self._instance = Vimnote()

        return self._instance

    def send(self, title, content):
        noteStore = client.get_note_store()
        note = Types.Note()
        note.title = title
        note.content = '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd">'
        note.content += '<en-note>'
        note.content += content
        note.content += '</en-note>'
        note = noteStore.createNote(note)


if __name__ == '__main__':
    vimnote = Vimnote.getInstance()
    print(vimnote)
    # vimnote.send('testTitle', 'testContent')
