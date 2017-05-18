import sys
import vim
from datetime import datetime

from evernote.api.client import EvernoteClient
import evernote.edam.type.ttypes as Types

# from setting import Setting


class Vimnote(object):
    _instance = None
    _client = None
    _dev_token = None

    def __init__(self, *args, **keys):
        pass

    @classmethod
    def getInstance(self):
        if self._instance is None:
            self._instance = Vimnote()

        return self._instance

    def getClient(self):
        if self._client is None:
            self._dev_token = vim.eval("evernote_dev_token")
            self._client = EvernoteClient(token=self._dev_token)

        return self._client

    def sendNote(self):
        client = getClient()
        # client = Setting.getClient()
        noteStore = client.get_note_store()
        note = Types.Note()
        note.title = datetime.now().strftime("%Y/%m/%d %H:%M:%S")
        note.content = '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd">'
        note.content += '<en-note>'
        for buffer in vim.buffers:
            for i in buffer:
                note.content += i
        note.content += '</en-note>'
        note = noteStore.createNote(note)


if __name__ == '__main__':
    Vimnote.getInstance().sendNote()
