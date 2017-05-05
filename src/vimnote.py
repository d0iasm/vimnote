from evernote.api.client import EvernoteClient


dev_token = "put your dev token here"
client = EvernoteClient(token=dev_token)
userStore = client.get_user_store()
user = userStore.getUser()
print(user.username)

noteStore = client.get_note_store()
notebooks = noteStore.listNotebooks()
for n in notebooks:
    print(n.name)
