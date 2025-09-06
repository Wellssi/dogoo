# 💡 Notion Dogoo

Notion SDK for dart based on [Notion API](https://developers.notion.com/reference/intro).

## 📌 Progress

### 👉 OBJECTS

- [ ] Block([Notion:Block](https://developers.notion.com/reference/block))
  - [ ] Rich text([Notion:Rich text](https://developers.notion.com/reference/rich-text))
- [ ] Page([Notion:Page](https://developers.notion.com/reference/page))
  - [ ] Page properties([Notion:Page properties](https://developers.notion.com/reference/page-property-values))
- [ ] Database([Notion:Database](https://developers.notion.com/reference/database))
- [ ] Data source([Notion:Data source](https://developers.notion.com/reference/data-source))
  - [ ] Data source properties([Notion:Data source properties](https://developers.notion.com/reference/property-object))
- [ ] Comment([Notion:Comment](https://developers.notion.com/reference/comment-object))
  - [ ] Comment attachment([Notion:Comment attachment](https://developers.notion.com/reference/comment-attachment))
  - [ ] Comment display name([Notion:Comment display name](https://developers.notion.com/reference/comment-display-name))
- [ ] File([Notion:File](https://developers.notion.com/reference/file-object))
  - [ ] File Upload([Notion:File Upload](https://developers.notion.com/reference/file-upload))
- [ ] User([Notion:User](https://developers.notion.com/reference/user))
- [ ] Parent([Notion:Parent](https://developers.notion.com/reference/parent-object))
- [ ] Emoji([Notion:Emoji](https://developers.notion.com/reference/emoji-object))
- [ ] Unfurl attribute (Link Preview)([Notion:Unfurl attribute (Link Preview)](https://developers.notion.com/reference/unfurl-attribute-object))

### 👉 ENDPOINTS

Authentication([Notion:Authentication](https://developers.notion.com/reference/authentication))

- [ ] [POST] Create a token
- [ ] [POST] Introspect token
- [ ] [POST] Revoke token
- [ ] [POST] Refresh a token

Blocks([Notion:Blocks](https://developers.notion.com/reference/patch-block-children))

- [ ] [PATCH] Append block children
- [ ] [GET] Retrieve a block
- [ ] [GET] Retrieve block children
- [ ] [PATCH] Update a block
- [ ] [DEL] Delete a block

Pages([Notion:Pages](https://developers.notion.com/reference/post-page))

- [ ] [POST] Create a page
- [ ] [GET] Retrieve a page
- [ ] [GET] Retrieve a page property item
- [ ] [PATCH] Update page properties

Databases([Notion:Databases](https://developers.notion.com/reference/database-create))

- [ ] [POST] Create a database
- [ ] [PATCH] Update a database
- [ ] [GET] Retrieve a database

Data sources([Notion:Data sources](https://developers.notion.com/reference/create-a-data-source))

- [ ] [POST] Create a data source
- [ ] [PATCH] Update a data source
- [ ] [GET] Retrieve a data source
- [ ] [POST] Query a data source

Comments([Notion:Comments](https://developers.notion.com/reference/create-a-comment))

- [ ] [POST] Create comment
- [ ] [GET] Retrieve a comment
- [ ] [GET] List comments

File Uploads([Notion:File Uploads](https://developers.notion.com/reference/create-a-file-upload))

- [ ] [POST] Create a file upload
- [ ] [POST] Send a file upload
- [ ] [POST] Complete a file upload
- [ ] [GET] Retrieve a file upload
- [ ] [GET] List file uploads

Search([Notion:Search](https://developers.notion.com/reference/post-search))

- [ ] [POST] Search by title

Users([Notion:Users](https://developers.notion.com/reference/get-users))

- [ ] [GET] List all users
- [ ] [GET] Retrieve a user
- [ ] [GET] Retrieve your token's bot user
