.class public Lcom/htc/provider/Notes;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/Notes$UnSycItemLogColumns;,
        Lcom/htc/provider/Notes$NoteIndexColumns;,
        Lcom/htc/provider/Notes$SycLogColumns;,
        Lcom/htc/provider/Notes$NoteAssociationColumns;,
        Lcom/htc/provider/Notes$AccountsColumns;,
        Lcom/htc/provider/Notes$SettingsColumns;,
        Lcom/htc/provider/Notes$ResourcesColumns;,
        Lcom/htc/provider/Notes$TagsColumns;,
        Lcom/htc/provider/Notes$NotebooksColumns;,
        Lcom/htc/provider/Notes$NotesColumns;,
        Lcom/htc/provider/Notes$NotesBaseColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ACTION_NOTES_ACCOUNT_CHANGE:Ljava/lang/String; = "com.htc.notes.ACCOUNT_CHANGE"

.field public static final ACTION_NOTES_ADD_NEW_CAMERANOTE:Ljava/lang/String; = "com.htc.notes.ADDCAMERANOTE"

.field public static final ACTION_NOTES_ADD_NEW_NOTE:Ljava/lang/String; = "com.htc.notes.ADDNOTE"

.field public static final ACTION_NOTES_ADD_NEW_NOTE_FROM_CALENDAR:Ljava/lang/String; = "com.htc.intent.action.ADDNOTEFROMCALENDAR"

.field public static final ACTION_NOTES_ADD_NEW_RECORDNOTE:Ljava/lang/String; = "com.htc.notes.ADDRECORDNOTE"

.field public static final ACTION_NOTES_AUDIO_RECORDER_STOPPED:Ljava/lang/String; = "com.htc.notes.notesrecordingstopped"

.field public static final ACTION_NOTES_CANCEL_SYNC:Ljava/lang/String; = "com.htc.notes.CANCEL_SYNC"

.field public static final ACTION_NOTES_CHANGE_SYNC_POLICY:Ljava/lang/String; = "com.htc.notes.CHANGE_SYNC_POLICY"

.field public static final ACTION_NOTES_CURRENT_NB_CHANGE:Ljava/lang/String; = "com.htc.notes.CURRENT_NB_CHANGE"

.field public static final ACTION_NOTES_DEL_NB:Ljava/lang/String; = "com.htc.notes.DEL_NB"

.field public static final ACTION_NOTES_DO_FULL_SYNC:Ljava/lang/String; = "com.htc.notes.FULL_SYNC"

.field public static final ACTION_NOTES_DO_PARTIAL_SYNC:Ljava/lang/String; = "com.htc.notes.PARTIAL_SYNC"

.field public static final ACTION_NOTES_DO_SCHEDULING_SYNC:Ljava/lang/String; = "com.htc.notes.SCHEDULING_SYNC"

.field public static final ACTION_NOTES_LAUNCH_NOTES:Ljava/lang/String; = "com.htc.intent.action.LAUNCHNOTE"

.field public static final ACTION_NOTES_LAUNCH_NOTE_BY_WIDGET:Ljava/lang/String; = "com.htc.notes.LAUNCHNOTEBYWIDGET"

.field public static final ACTION_NOTES_LAUNCH_PAINTING_MODE:Ljava/lang/String; = "com.htc.notes.START_PAINTERVIEW"

.field public static final ACTION_NOTES_LOGOUT:Ljava/lang/String; = "com.htc.notes.ACCOUNT_LOGOUT"

.field public static final ACTION_NOTES_NOTEBOOKPICKER:Ljava/lang/String; = "com.htc.notes.NOTEBOOKPICKER"

.field public static final ACTION_NOTES_NOTEBOOK_GRIDVIEW:Ljava/lang/String; = "com.htc.notes.NOTEBOOKGRIDVIEW"

.field public static final ACTION_NOTES_NOTEPICKER:Ljava/lang/String; = "com.htc.intent.action.NOTEPICKER"

.field public static final ACTION_NOTES_OPEN_NOTE_GRIDVIEW_BY_NB_ID:Ljava/lang/String; = "com.htc.notes.OPEN_NOTE_GRIDVIEW_BY_NB_ID"

.field public static final ACTION_NOTES_OPEN_NOTE_SEARCH:Ljava/lang/String; = "com.htc.notes.OPEN_NOTE_SEARCH"

.field public static final ACTION_NOTES_PICK_CALENDAR:Ljava/lang/String; = "com.htc.intent.action.PICK_CALENDAR"

.field public static final ACTION_NOTES_PROVIDER_UPGRADE:Ljava/lang/String; = "com.htc.notes.NOTES_PROVIDER_UPGRADE"

.field public static final ACTION_NOTES_SAVERESULT:Ljava/lang/String; = "com.htc.notes.SAVERESULT"

.field public static final ACTION_NOTES_SYNCING:Ljava/lang/String; = "com.htc.notes.NOTES_SYNCING"

.field public static final ACTION_NOTES_SYNC_DONE:Ljava/lang/String; = "com.htc.notes.NOTES_SYNC_DONE"

.field public static final ACTION_NOTES_SYNC_ONE_NB_DONE:Ljava/lang/String; = "com.htc.notes.NOTES_SYNC_ONE_NB_DONE"

.field public static final ACTION_NOTES_SYNC_ONE_NOTE_DONE:Ljava/lang/String; = "com.htc.notes.NOTES_SYNC_ONE_NOTE_DONE"

.field public static final ACTION_NOTES_SYNC_ONE_NOTE_THUMBNAIL_DONE:Ljava/lang/String; = "com.htc.notes.NOTES_SYNC_ONE_NOTE_THUMBNAIL_DONE"

.field public static final ACTION_NOTES_SYNC_START:Ljava/lang/String; = "com.htc.notes.NOTESSYNCSTART"

.field public static final ACTION_NOTES_UPDATE_NOTE:Ljava/lang/String; = "com.htc.notes.UPDATE_NOTE"

.field public static final ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.provider.notes"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final DEF_MATADATA_MIMETYPE:Ljava/lang/String; = "data/htc-meatadata"

.field public static final KEY_ACTION:Ljava/lang/String; = "KEY_ACTION"

.field public static final KEY_CURRENT_NB_ID:Ljava/lang/String; = "KEY_CURRENT_NB_ID"

.field public static final KEY_IGNORE_UPDATE:Ljava/lang/String; = "KEY_IGNORE_UPDATE"

.field public static final KEY_NBID:Ljava/lang/String; = "KEY_NBID"

.field public static final KEY_NOTEID:Ljava/lang/String; = "KEY_NOTEID"

.field public static final KEY_NOTES_ACCOUNT_NAME:Ljava/lang/String; = "KEY_NOTES_ACCOUNT_NAME"

.field public static final KEY_NOTES_CHANGE_SYNC_POLICY:Ljava/lang/String; = "KEY_CHANGE_SYNC_POLICY"

.field public static final KEY_NOTES_USER_OBJ:Ljava/lang/String; = "KEY_NOTES_USER_OBJ"

.field public static final KEY_OLD_NBID:Ljava/lang/String; = "KEY_OLD_NBID"

.field public static final KEY_SYNCLOG_URI:Ljava/lang/String; = "KEY_SYNCLOG_URI"

.field public static final KEY_SYNC_ONE_NB_ID:Ljava/lang/String; = "KEY_SYNC_ONE_NB_ID"

.field public static final KEY_SYNC_ONE_NOTE_ID:Ljava/lang/String; = "KEY_SYNC_ONE_NOTE_ID"

.field public static final KEY_SYNC_STATE:Ljava/lang/String; = "KEY_SYNC_STATE"

.field public static final KEY_SYNC_TYPE:Ljava/lang/String; = "KEY_SYNC_TYPE"

.field public static final NOTEBOOKS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final NOTES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final NOTES_SEARCH_INDEX_URI:Landroid/net/Uri; = null

.field public static final NOTE_STATUS_ADD:I = 0x2

.field public static final NOTE_STATUS_DEFAULT:I = 0x0

.field public static final NOTE_STATUS_DELETE:I = 0x4

.field public static final NOTE_STATUS_DRAFT:I = -0x1

.field public static final NOTE_STATUS_MODIFY:I = 0x3

.field public static final NOTE_STATUS_MOVE:I = 0x5

.field public static final NOTE_STATUS_SAVING:I = 0x1

.field public static final NOTE_STATUS_SYNC_UNFINISHED:I = 0x8

.field public static final NOTE_STATUS_SYNC_UNFINISHED_MODIFY:I = 0x9

.field public static final NOTE_STATUS_SYNC_UPDATED:I = 0xa

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "com.htc.permission.ACCESS_NOTES"

.field public static final RESOURCES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SETTINGS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SQL_COUNT_NOTEID:Ljava/lang/String; = "(Select COUNT(distinct _id) from notes)"

.field public static final SYNCLOG_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SYNC_TYPE_DEFAULT:I = 0x1

.field public static final SYNC_TYPE_MANUALLY:I = 0x3

.field public static final SYNC_TYPE_ONCEADAY:I = 0x2

.field public static final SYNC_TYPE_ONCE_UPDATE:I = 0x1

.field public static final UNSYNCITEMLOG_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "content://com.htc.provider.notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    .line 109
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "search_index"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->NOTES_SEARCH_INDEX_URI:Landroid/net/Uri;

    .line 111
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "notes"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->NOTES_CONTENT_URI:Landroid/net/Uri;

    .line 113
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "notebooks"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->NOTEBOOKS_CONTENT_URI:Landroid/net/Uri;

    .line 115
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "resources"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->RESOURCES_CONTENT_URI:Landroid/net/Uri;

    .line 117
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    .line 119
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 121
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "note_association"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    .line 123
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sync_logs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->SYNCLOG_CONTENT_URI:Landroid/net/Uri;

    .line 125
    sget-object v0, Lcom/htc/provider/Notes;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "unsyncitem_logs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/Notes;->UNSYNCITEMLOG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    return-void
.end method

.method public static final getDefNBUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/htc/provider/Notes;->NOTEBOOKS_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "def"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getMetadataUriByNoteId(I)Landroid/net/Uri;
    .locals 3
    .parameter "noteId"

    .prologue
    .line 230
    sget-object v0, Lcom/htc/provider/Notes;->RESOURCES_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "note/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/type/2/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getNBComposedUri(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "id"
    .parameter "column"
    .parameter "isDefault"
    .parameter "value"

    .prologue
    .line 248
    sget-object v0, Lcom/htc/provider/Notes;->NOTEBOOKS_CONTENT_URI:Landroid/net/Uri;

    .line 250
    .local v0, uri:Landroid/net/Uri;
    if-lez p0, :cond_2

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/guid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const-string v1, "isactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 264
    const-string v1, "def"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_3
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gudi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_4
    const-string v1, "_type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static final getNotesComposedUri(ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "id"
    .parameter "column"
    .parameter "extra"

    .prologue
    .line 176
    sget-object v0, Lcom/htc/provider/Notes;->NOTES_CONTENT_URI:Landroid/net/Uri;

    .line 178
    .local v0, uri:Landroid/net/Uri;
    if-lez p0, :cond_4

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    const-string v1, "ap_extra_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/extra_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    const-string v1, "notebook_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notebook/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_3
    const-string v1, "tag_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const-string v1, "ap_extra_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :cond_5
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gudi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static final getResUriByNoteIdAndType(IIZ)Landroid/net/Uri;
    .locals 3
    .parameter "noteId"
    .parameter "type"
    .parameter "withData"

    .prologue
    .line 240
    if-eqz p2, :cond_0

    .line 241
    sget-object v0, Lcom/htc/provider/Notes;->RESOURCES_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "note/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/provider/Notes;->RESOURCES_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "note/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getResourcesComposedUri(ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "id"
    .parameter "column"
    .parameter "value"

    .prologue
    .line 276
    sget-object v0, Lcom/htc/provider/Notes;->RESOURCES_CONTENT_URI:Landroid/net/Uri;

    .line 278
    .local v0, uri:Landroid/net/Uri;
    if-lez p0, :cond_4

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    const-string v1, "_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_2
    const-string v1, "note_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "note/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_3
    const-string v1, "_type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "note/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    const-string v1, "hashcode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashcode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 301
    :cond_5
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gudi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static final getStrokeUriByNoteId(I)Landroid/net/Uri;
    .locals 3
    .parameter "noteId"

    .prologue
    .line 220
    sget-object v0, Lcom/htc/provider/Notes;->RESOURCES_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "note/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/type/3/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
