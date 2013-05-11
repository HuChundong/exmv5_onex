.class public Lcom/htc/album/AlbumUtility/PhotoParallaxManager;
.super Ljava/lang/Object;
.source "PhotoParallaxManager.java"


# instance fields
.field public final DB_FAIL:F

.field private final DEBUG:Ljava/lang/String;

.field public final DEFAULT_VALUE:F

.field private final LOG_TAG:Ljava/lang/String;

.field public final MAX_PARALLAX:F

.field public final MIN_PARALLAX:F

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    .line 18
    const-string v0, "KA>>> [PhotoParallaxManager]"

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DEBUG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DEFAULT_VALUE:F

    .line 21
    const v0, -0x3b864000

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DB_FAIL:F

    .line 22
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->MAX_PARALLAX:F

    .line 23
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->MIN_PARALLAX:F

    .line 25
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    .line 26
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->initializeThumbDB()V

    .line 39
    return-void
.end method

.method private DelDBAlignment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    .line 274
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> [PhotoParallaxManager][insertDBAlignment]: mDBHelper not rdy !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v2}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 282
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insertThumbDB] database closed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM parallax WHERE datapath=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND createtime=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoParallaxManager][DelDBAlignment]: delete record from DB NG ! strFilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
.end method

.method private initializeThumbDB()V
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, vid:I
    new-instance v1, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBPhotoParallax-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    .line 44
    return-void
.end method

.method private insertDBAlignment(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 7
    .parameter "strFilePath"
    .parameter "strCreateTime"
    .parameter "fAlignmentValue"

    .prologue
    .line 159
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "KA>>> [PhotoParallaxManager][insertDBAlignment]: mDBHelper not rdy !"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 167
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertThumbDB] database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, strValue:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM parallax WHERE datapath=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND createtime=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_2

    .line 185
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "KA>>> [PhotoParallaxManager][insertThumbDB]: Push value is Default. skip insert record."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertThumbDB] Delete record before insert, cachePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "datapath"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "createtime"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "alignment"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v4, "parallax"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 197
    .end local v0           #cv:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 198
    .restart local v2       #ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertThumbDB] Exception during updating new record, Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method private queryDBAlignment(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    const v3, -0x3b864000

    .line 234
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[queryDBAlignment] Not support path. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return v3

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 242
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 244
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_1
    const v3, -0x3b864000

    .line 250
    .local v3, fAligementValur:F
    const/4 v0, 0x0

    .line 253
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT alignment FROM parallax WHERE datapath=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND createtime=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_2

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 259
    new-instance v4, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 265
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoParallaxManager][queryDBAlignment]: rawQuery DB NG ! strFilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 265
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method private updateDBAlignment(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8
    .parameter "strFilePath"
    .parameter "strModifyTime"
    .parameter "fAlignmentValue"

    .prologue
    .line 206
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateDBAlignment] Not support path. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, strValue:Ljava/lang/String;
    const-string v4, "alignment"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "parallax"

    const-string v5, "datapath=? and createtime=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 225
    .end local v2           #strValue:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "update access time fail"

    invoke-static {v4, v5, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> [PhotoParallaxManager][delete]: strFilePath == null || strCreateTime == null !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x0

    .line 154
    :goto_0
    return v2

    .line 144
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, lTimeStart:J
    invoke-direct {p0, p1, p2}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DelDBAlignment(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoParallaxManager][delete]: delete record - File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    const/4 v2, 0x1

    goto :goto_0

    .line 151
    .end local v0           #lTimeStart:J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected onMediaMounted()V
    .locals 5

    .prologue
    .line 69
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 72
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v1}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->close()V

    .line 73
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, vid:I
    new-instance v1, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBPhotoParallax-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .end local v0           #vid:I
    :cond_0
    return-void

    .line 76
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pull(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "KA>>> [PhotoParallaxManager][pull]: strFilePath == null || strCreateTime == null !"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const v2, -0x3b864000

    .line 103
    :goto_0
    return v2

    .line 89
    :cond_1
    const v2, -0x3b864000

    .line 92
    .local v2, value:F
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, lTimeStart:J
    invoke-direct {p0, p1, p2}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->queryDBAlignment(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 96
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoParallaxManager][pull]: query File = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #lTimeStart:J
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 6
    .parameter "strFilePath"
    .parameter "strCreateTime"
    .parameter "fAlignmentValue"

    .prologue
    const/4 v2, 0x0

    .line 108
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "KA>>> [PhotoParallaxManager][push]: strFilePath==null || strCreateTime==null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return v2

    .line 114
    :cond_1
    const/high16 v3, 0x3f80

    cmpl-float v3, p3, v3

    if-gtz v3, :cond_2

    const/high16 v3, -0x4080

    cmpg-float v3, p3, v3

    if-gez v3, :cond_3

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoParallaxManager][push]: fAlignmentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NG!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, lTimeStart:J
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->insertDBAlignment(Ljava/lang/String;Ljava/lang/String;F)V

    .line 125
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoParallaxManager][push]: insert File = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 129
    .end local v0           #lTimeStart:J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> [PhotoParallaxManager][release]: +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->close()V

    .line 60
    iput-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    .line 63
    :cond_0
    iput-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> [PhotoParallaxManager][release]: -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
