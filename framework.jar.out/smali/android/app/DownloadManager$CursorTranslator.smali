.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1280
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1285
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1286
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1360
    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    .line 1363
    :cond_1
    const/16 v0, 0x196

    if-eq p1, v0, :cond_2

    .line 1365
    int-to-long v0, p1

    .line 1402
    :goto_0
    return-wide v0

    .line 1370
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1402
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1372
    :sswitch_0
    const-wide/16 v0, 0x3e9

    goto :goto_0

    .line 1376
    :sswitch_1
    const-wide/16 v0, 0x3ea

    goto :goto_0

    .line 1379
    :sswitch_2
    const-wide/16 v0, 0x3ec

    goto :goto_0

    .line 1382
    :sswitch_3
    const-wide/16 v0, 0x3ed

    goto :goto_0

    .line 1385
    :sswitch_4
    const-wide/16 v0, 0x3ee

    goto :goto_0

    .line 1388
    :sswitch_5
    const-wide/16 v0, 0x3ef

    goto :goto_0

    .line 1391
    :sswitch_6
    const-wide/16 v0, 0x3f0

    goto :goto_0

    .line 1394
    :sswitch_7
    const-wide/16 v0, 0x3f1

    goto :goto_0

    .line 1398
    :sswitch_8
    const-wide/16 v0, 0x3f3

    goto :goto_0

    .line 1370
    nop

    :sswitch_data_0
    .sparse-switch
        0x196 -> :sswitch_8
        0x1e1 -> :sswitch_4
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
        0x1f3 -> :sswitch_5
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1311
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1312
    .local v0, destinationType:J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x8

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x6

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 1318
    :cond_0
    const-string v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1319
    .local v4, localPath:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1320
    const/4 v5, 0x0

    .line 1327
    .end local v4           #localPath:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1322
    .restart local v4       #localPath:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1326
    .end local v4           #localPath:Ljava/lang/String;
    :cond_2
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1327
    .local v2, downloadId:J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getPausedReason(I)J
    .locals 2
    .parameter "status"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/app/DownloadManager$Injector;->getPausedReason(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x1

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x2

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2
    .parameter "status"

    .prologue
    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_0

    .line 1336
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_0

    .line 1331
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static translateStatus(I)I
    .locals 1
    .parameter "status"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1409
    :pswitch_1
    const/4 v0, 0x1

    .line 1425
    :goto_0
    return v0

    .line 1412
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1418
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1421
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 1425
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 1407
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method callGetLocalUri()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1290
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 1300
    :goto_0
    return-wide v0

    .line 1297
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 1300
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/app/DownloadManager$Injector;->getLocalUri(Landroid/app/DownloadManager$CursorTranslator;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
