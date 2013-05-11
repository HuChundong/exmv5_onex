.class public Landroid/content/ContentQueryMap;
.super Ljava/util/Observable;
.source "ContentQueryMap.java"


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private volatile mCursor:Landroid/database/Cursor;

.field private mDirty:Z

.field private mHandlerForUpdateNotifications:Landroid/os/Handler;

.field private mKeepUpdated:Z

.field private mKeyColumn:I

.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 2
    .parameter "cursor"
    .parameter "columnNameOfKey"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 47
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 48
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    .line 50
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    .line 55
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 71
    iput-object p1, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    .line 72
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    .line 73
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    .line 74
    iput-object p4, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0, p3}, Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V

    .line 80
    if-nez p3, :cond_0

    .line 81
    invoke-direct {p0, p1}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentQueryMap;Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContentQueryMap;->shouldSkipWhileShutdown(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Landroid/content/ContentQueryMap;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    return p1
.end method

.method private declared-synchronized readCursorIntoCache(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    .line 180
    .local v0, capacity:I
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    .line 181
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v2, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 184
    iget v3, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    if-eq v1, v3, :cond_0

    .line 185
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    .end local v0           #capacity:I
    .end local v1           #i:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    .restart local v0       #capacity:I
    .restart local v1       #i:I
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    iget v4, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 179
    .end local v0           #capacity:I
    .end local v1           #i:I
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 190
    .restart local v0       #capacity:I
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private shouldSkipWhileShutdown(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .parameter "ex"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Could not open the database in read/write mode."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getShutdownState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->close()V

    .line 209
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 210
    return-void
.end method

.method public declared-synchronized getRows()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    .line 194
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "rowName"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requery()V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    .line 158
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 162
    monitor-exit p0

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    monitor-exit p0

    goto :goto_0

    .line 173
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 169
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    .line 170
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->setChanged()V

    .line 171
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->notifyObservers()V

    .line 173
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setKeepUpdated(Z)V
    .locals 2
    .parameter "keepUpdated"

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    if-ne p1, v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    .line 97
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 104
    :cond_2
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Landroid/content/ContentQueryMap$1;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/content/ContentQueryMap$1;-><init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    .line 133
    :cond_3
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    goto :goto_0
.end method
