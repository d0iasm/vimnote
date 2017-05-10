import sys
import vim

from evernote.api.client import EvernoteClient


class Setting(object):
    _dev_token = None
    _client = None

    def __init__(self):
        self._dev_token = vim.eval("token")

    @classmethod
    def getClient(self):
        if self._client is None:
            self._client = EvernoteClient(token=self._dev_token)

        return self._client


if __name__ == '__main__':
    print('setting called')
