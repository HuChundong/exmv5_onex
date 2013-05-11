.class public Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;
.super Ljava/lang/Object;
.source "FileCacheManager.java"


# static fields
.field public static final CACHE_ACTIVEUSER:Ljava/lang/String; = ".auser"

.field public static final CACHE_ACTIVEUSER_ID:I = 0x2

.field public static final CACHE_EVENT:Ljava/lang/String; = "event"

.field public static final CACHE_EVENT_ID:I = 0x1

.field public static final CACHE_LOCAL:Ljava/lang/String; = "local"

.field public static final CACHE_LOCAL_ID:I = 0x0

.field public static final EXTENSION_CACHEALBUMLIST:Ljava/lang/String; = ".alist"

.field public static final EXTENSION_CACHEALBUMLIST_ID:I = 0x6

.field public static final EXTENSION_CACHECOMMENTHEADER:Ljava/lang/String; = ".cpheader"

.field public static final EXTENSION_CACHECOMMENTHEADER_ID:I = 0xd

.field public static final EXTENSION_CACHECOMMENTLIST:Ljava/lang/String; = ".cplist"

.field public static final EXTENSION_CACHECOMMENTLIST_ID:I = 0xc

.field public static final EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String; = ".fflist"

.field public static final EXTENSION_CACHEFOLDERFILTERLIST_ID:I = 0x4

.field public static final EXTENSION_CACHEFOLDERLIST:Ljava/lang/String; = ".flist"

.field public static final EXTENSION_CACHEFOLDERLIST_ID:I = 0x3

.field public static final EXTENSION_CACHEFRIENDLIST:Ljava/lang/String; = ".clist"

.field public static final EXTENSION_CACHEFRIENDLIST_ID:I = 0x5

.field public static final EXTENSION_CACHELANDINGPAGE:Ljava/lang/String; = ".landlist"

.field public static final EXTENSION_CACHELANDINGPAGE_ID:I = 0xb

.field public static final EXTENSION_CACHEPHOTOLIST:Ljava/lang/String; = ".plist"

.field public static final EXTENSION_CACHEPHOTOLIST_ID:I = 0x7

.field public static final EXTENSION_CACHEPOMLIST:Ljava/lang/String; = ".pomlist"

.field public static final EXTENSION_CACHEPOMLIST_ID:I = 0xa

.field public static final EXTENSION_CACHERECENTLIST:Ljava/lang/String; = ".ruplist"

.field public static final EXTENSION_CACHERECENTLIST_ID:I = 0x8

.field public static final EXTENSION_CACHERECENTVLIST:Ljava/lang/String; = ".ruvlist"

.field public static final EXTENSION_CACHERECENTVLIST_ID:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "FileCacheManager"

.field private static fileCacheType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".auser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".flist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".fflist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".clist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".alist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".plist"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".ruplist"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".ruvlist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".pomlist"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".landlist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ".cplist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ".cpheader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->fileCacheType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCacheType(I)Ljava/lang/String;
    .locals 4
    .parameter "iExtension"

    .prologue
    .line 72
    const-string v0, ""

    .line 73
    .local v0, cacheType:Ljava/lang/String;
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->fileCacheType:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 75
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->fileCacheType:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FileCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FileCacheManager][getCacheType] no create cache type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 554
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getCacheType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 9
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 172
    const/4 v4, 0x0

    .line 173
    .local v4, objList:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 174
    .local v1, fileIS:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 175
    .local v2, objIS:Ljava/io/ObjectInputStream;
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 209
    .end local v4           #objList:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v4

    .line 178
    .restart local v4       #objList:Ljava/lang/Object;
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, szFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 183
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .end local v2           #objIS:Ljava/io/ObjectInputStream;
    .local v3, objIS:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    move-object v2, v3

    .line 191
    .end local v3           #objIS:Ljava/io/ObjectInputStream;
    .end local v4           #objList:Ljava/lang/Object;
    .restart local v2       #objIS:Ljava/io/ObjectInputStream;
    :goto_1
    if-eqz v2, :cond_2

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 203
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    const-string v6, "FileCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FileCacheManager][getFromFileCache] IOException 2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #objList:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const-string v6, "FileCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FileCacheManager][getFromFileCache] Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #objList:Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    const-string v6, "FileCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FileCacheManager][getFromFileCache] IOException 1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #objIS:Ljava/io/ObjectInputStream;
    .restart local v3       #objIS:Ljava/io/ObjectInputStream;
    .restart local v4       #objList:Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #objIS:Ljava/io/ObjectInputStream;
    .restart local v2       #objIS:Ljava/io/ObjectInputStream;
    goto :goto_3
.end method

.method protected static getVersionWithCacheType(I)Ljava/lang/String;
    .locals 4
    .parameter "cacheType"

    .prologue
    .line 214
    const-string v0, "00"

    .line 216
    .local v0, strCurrentVersion:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 261
    const-string v1, "FileCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FileCacheManager][getVersionWithCacheType] unknow cache type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-object v0

    .line 219
    :pswitch_0
    const-string v0, "01"

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    const-string v0, "01"

    .line 223
    goto :goto_0

    .line 225
    :pswitch_2
    const-string v0, "01"

    .line 226
    goto :goto_0

    .line 228
    :pswitch_3
    const-string v0, "01"

    .line 229
    goto :goto_0

    .line 231
    :pswitch_4
    const-string v0, "01"

    .line 232
    goto :goto_0

    .line 234
    :pswitch_5
    const-string v0, "01"

    .line 235
    goto :goto_0

    .line 237
    :pswitch_6
    const-string v0, "01"

    .line 238
    goto :goto_0

    .line 240
    :pswitch_7
    const-string v0, "01"

    .line 241
    goto :goto_0

    .line 243
    :pswitch_8
    const-string v0, "01"

    .line 244
    goto :goto_0

    .line 246
    :pswitch_9
    const-string v0, "01"

    .line 247
    goto :goto_0

    .line 249
    :pswitch_a
    const-string v0, "01"

    .line 250
    goto :goto_0

    .line 252
    :pswitch_b
    const-string v0, "01"

    .line 253
    goto :goto_0

    .line 255
    :pswitch_c
    const-string v0, "01"

    .line 256
    goto :goto_0

    .line 258
    :pswitch_d
    const-string v0, "01"

    .line 259
    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, bResult:Z
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 117
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 93
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    const/4 v3, 0x0

    .line 94
    .local v3, fileIS:Ljava/io/FileInputStream;
    invoke-static {p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, szFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 107
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 110
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    move v1, v0

    .line 117
    .restart local v1       #bResult:I
    goto :goto_0

    .line 99
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 102
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 104
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][isFileCacheExist] File not found Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 113
    .local v2, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][isFileCacheExist] IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "objList"
    .parameter "szExtension"

    .prologue
    .line 122
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v1, 0x0

    .line 126
    .local v1, fileOS:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 127
    .local v2, objOS:Ljava/io/ObjectOutputStream;
    invoke-static {p1, p2, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, szFileName:Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .end local v2           #objOS:Ljava/io/ObjectOutputStream;
    .local v3, objOS:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 139
    .end local v3           #objOS:Ljava/io/ObjectOutputStream;
    .restart local v2       #objOS:Ljava/io/ObjectOutputStream;
    :goto_1
    if-eqz v2, :cond_2

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][putToFileCacheList] IOException 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][putToFileCacheList] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][putToFileCacheList] IOException 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #objOS:Ljava/io/ObjectOutputStream;
    .restart local v3       #objOS:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #objOS:Ljava/io/ObjectOutputStream;
    .restart local v2       #objOS:Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method

.method public static readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 21
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 412
    const/4 v13, 0x0

    .line 414
    .local v13, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object/from16 v17, v13

    .line 503
    :goto_0
    return-object v17

    .line 417
    :cond_1
    const/4 v8, 0x0

    .line 418
    .local v8, fileIS:Ljava/io/FileInputStream;
    invoke-static/range {p1 .. p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, szFileName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 429
    const/4 v10, 0x0

    .line 430
    .local v10, header:Ljava/lang/String;
    const/4 v11, 0x0

    .line 431
    .local v11, in:Ljava/io/BufferedReader;
    new-instance v11, Ljava/io/BufferedReader;

    .end local v11           #in:Ljava/io/BufferedReader;
    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 433
    .restart local v11       #in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 439
    :goto_1
    const/4 v2, 0x1

    .line 440
    .local v2, bIsCorrectCacheHeader:Z
    if-eqz v10, :cond_2

    const-string v17, "VERSION:"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 442
    :cond_2
    const-string v17, "FileCacheManager"

    const-string v18, "[FileCacheManager][getFromPersonCache]: Wrong Header"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x0

    .line 446
    :cond_3
    const/4 v3, 0x0

    .line 447
    .local v3, bIsSingleCache:Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 450
    const/4 v4, 0x0

    .line 451
    .local v4, bIsVersionChange:Z
    const/16 v17, 0x8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 452
    .local v9, fileVer:I
    invoke-static/range {p3 .. p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getVersionWithCacheType(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 453
    .local v5, currentVer:I
    if-ge v9, v5, :cond_4

    .line 455
    const/4 v4, 0x1

    .line 456
    const-string v17, "FileCacheManager"

    const-string v18, "[FileCacheManager][getFromPersonCache]: Version Change"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_4
    const/4 v15, 0x0

    .line 460
    .local v15, strTmp:Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v12, listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 463
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 464
    :catch_0
    move-exception v6

    .line 465
    .local v6, e:Ljava/io/IOException;
    const-string v17, "FileCacheManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FileCacheManager][readCache] IOException 2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v6           #e:Ljava/io/IOException;
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .restart local v13       #objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {p3 .. p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getCacheType(I)Ljava/lang/String;

    move-result-object v14

    .line 469
    .local v14, strCacheType:Ljava/lang/String;
    const/16 v17, 0x1

    const-string v18, ".clist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 471
    invoke-static {v4, v5, v9, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->readFromPersonCache(ZIILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 489
    .end local v4           #bIsVersionChange:Z
    .end local v5           #currentVer:I
    .end local v9           #fileVer:I
    .end local v12           #listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #strCacheType:Ljava/lang/String;
    .end local v15           #strTmp:Ljava/lang/String;
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 494
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 499
    :goto_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_b

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_b

    .line 501
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_0

    .line 421
    .end local v2           #bIsCorrectCacheHeader:Z
    .end local v3           #bIsSingleCache:Z
    .end local v10           #header:Ljava/lang/String;
    .end local v11           #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    .line 422
    .local v7, e1:Ljava/io/FileNotFoundException;
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_7

    .line 424
    const-string v17, "FileCacheManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FileCacheManager][readCache] FileNotFoundException: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v17, v13

    .line 426
    goto/16 :goto_0

    .line 434
    .end local v7           #e1:Ljava/io/FileNotFoundException;
    .restart local v10       #header:Ljava/lang/String;
    .restart local v11       #in:Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    .line 435
    .restart local v6       #e:Ljava/io/IOException;
    const-string v17, "FileCacheManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FileCacheManager][readCache] IOException 1: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 473
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #bIsCorrectCacheHeader:Z
    .restart local v3       #bIsSingleCache:Z
    .restart local v4       #bIsVersionChange:Z
    .restart local v5       #currentVer:I
    .restart local v9       #fileVer:I
    .restart local v12       #listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #strCacheType:Ljava/lang/String;
    .restart local v15       #strTmp:Ljava/lang/String;
    :cond_8
    const/16 v17, 0x1

    const-string v18, ".cplist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 475
    invoke-static {v4, v5, v9, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->readFromCommentListCache(ZIILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 477
    :cond_9
    const/16 v17, 0x1

    const-string v18, ".cpheader"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 479
    invoke-static {v4, v5, v9, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->readFromCommentHeaderCache(ZIILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 480
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 484
    :cond_a
    const-string v17, "FileCacheManager"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "[FileCacheManager][readCache]: no implement this cache type: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 490
    .end local v4           #bIsVersionChange:Z
    .end local v5           #currentVer:I
    .end local v9           #fileVer:I
    .end local v12           #listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #strCacheType:Ljava/lang/String;
    .end local v15           #strTmp:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 491
    .restart local v6       #e:Ljava/io/IOException;
    const-string v17, "FileCacheManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FileCacheManager][readCache] IOException 2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 495
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 496
    .restart local v6       #e:Ljava/io/IOException;
    const-string v17, "FileCacheManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FileCacheManager][readCache] IOException 3: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v6           #e:Ljava/io/IOException;
    :cond_b
    move-object/from16 v17, v13

    .line 503
    goto/16 :goto_0
.end method

.method private static readFromCommentHeaderCache(ZIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "bIsVersionChange"
    .parameter "iCurrentVersion"
    .parameter "iFileVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    .local p3, listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v2, headerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;>;"
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, content:Ljava/lang/String;
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;-><init>()V

    .line 542
    .local v4, listMember:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    invoke-virtual {v4, p0, p1, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->readFrom(ZIILjava/lang/String;)V

    .line 543
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    .end local v0           #content:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listMember:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    :catch_0
    move-exception v1

    .line 546
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][readFromCommentHeaderCache] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

.method private static readFromCommentListCache(ZIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "bIsVersionChange"
    .parameter "iCurrentVersion"
    .parameter "iFileVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    .local p3, listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, commentlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 526
    .local v1, content:Ljava/lang/String;
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>()V

    .line 527
    .local v4, listMember:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    invoke-virtual {v4, p0, p1, p2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->readFrom(ZIILjava/lang/String;)V

    .line 528
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listMember:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    :catch_0
    move-exception v2

    .line 531
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][readFromCommentListCache] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method private static readFromPersonCache(ZIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "bIsVersionChange"
    .parameter "iCurrentVersion"
    .parameter "iFileVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    .local p3, listContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v4, personlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, content:Ljava/lang/String;
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 512
    .local v3, listMember:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v3, p0, p1, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->readFrom(ZIILjava/lang/String;)V

    .line 513
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listMember:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :catch_0
    move-exception v1

    .line 516
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][readFromPersonCache] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 7
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "objList"
    .parameter "szExtension"

    .prologue
    const/4 v6, 0x1

    .line 270
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {p4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getCacheType(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, strCacheType:Ljava/lang/String;
    invoke-static {p1, p2, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, szFileName:Ljava/lang/String;
    const-string v2, ".clist"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_2

    .line 277
    invoke-static {p0, p3, v1, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->writeToPersonCache(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 279
    :cond_2
    const-string v2, ".cplist"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 281
    invoke-static {p0, p3, v1, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->writeToCommentListCache(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    :cond_3
    const-string v2, ".cpheader"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_4

    .line 285
    invoke-static {p0, p3, v1, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->writeToCommentHeaderCache(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 289
    :cond_4
    const-string v2, "FileCacheManager"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[FileCacheManager][writeCacheList]: no implement this cache type: "

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static writeToCommentHeaderCache(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "object"
    .parameter "szFileName"
    .parameter "szExtension"

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 376
    .local v2, fileOS:Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 386
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VERSION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getVersionWithCacheType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v0, p1

    .line 391
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .line 392
    .local v0, commentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    if-eqz v0, :cond_0

    .line 395
    const/16 v3, 0xa

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 396
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->toFormatedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 408
    .end local v0           #commentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    :cond_1
    :goto_2
    return-void

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 380
    const-string v3, "FileCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FileCacheManager][writeToCommentHeaderCache] FileNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not exist..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 387
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 388
    .local v1, e:Ljava/io/IOException;
    const-string v3, "FileCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FileCacheManager][writeToCommentHeaderCache] IOException 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #commentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    :catch_2
    move-exception v1

    .line 398
    .restart local v1       #e:Ljava/io/IOException;
    const-string v3, "FileCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FileCacheManager][writeToCommentHeaderCache] IOException 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 405
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 406
    .restart local v1       #e:Ljava/io/IOException;
    const-string v3, "FileCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FileCacheManager][writeToCommentHeaderCache] IOException 3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeToCommentListCache(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "objList"
    .parameter "szFileName"
    .parameter "szExtension"

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, fileOS:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 347
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VERSION:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getVersionWithCacheType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v3, p1

    .line 352
    check-cast v3, Ljava/util/List;

    .line 353
    .local v3, listObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 355
    .local v4, subObj:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-eqz v4, :cond_0

    .line 358
    const/16 v5, 0xa

    :try_start_2
    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 359
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->toFormatedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToCommentListCache] IOException 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 338
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    .end local v4           #subObj:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 341
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToCommentListCache] FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not exist..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 348
    :catch_2
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToCommentListCache] IOException 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #listObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 368
    :catch_3
    move-exception v0

    .line 369
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToCommentListCache] IOException 3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeToPersonCache(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "objList"
    .parameter "szFileName"
    .parameter "szExtension"

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 298
    .local v1, fileOS:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 308
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VERSION:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getVersionWithCacheType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v3, p1

    .line 313
    check-cast v3, Ljava/util/List;

    .line 314
    .local v3, listObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 316
    .local v4, subObj:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v4, :cond_0

    .line 319
    const/16 v5, 0xa

    :try_start_2
    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 320
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toFormatedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToPersonCache] IOException 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v4           #subObj:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 302
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToPersonCache] FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not exist..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 309
    :catch_2
    move-exception v0

    .line 310
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToPersonCache] IOException 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #listObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 329
    :catch_3
    move-exception v0

    .line 330
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FileCacheManager][writeToPersonCache] IOException 3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
