.class public Lcom/htc/album/AlbumUtility/ErrorMsgProvider;
.super Ljava/lang/Object;
.source "ErrorMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getErrorMessage(Landroid/content/Context;IZ)I
    .locals 5
    .parameter "context"
    .parameter "mediaType"
    .parameter "bRefresh"

    .prologue
    .line 48
    const v1, 0x20401fe

    .line 50
    .local v1, message:I
    const-wide/32 v3, 0x500000

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->isInternalStorageEnough(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const-string v3, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getSDErrorMsg(Ljava/lang/String;I)I

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 56
    :cond_0
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, stateExternal:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    .line 59
    .local v0, bSupportPhoneStorage:Z
    if-eqz v0, :cond_1

    .line 61
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getStoragesErrorMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {v2, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getSDErrorMsg(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    .locals 2
    .parameter "context"
    .parameter "mediaType"
    .parameter "bRefresh"

    .prologue
    .line 40
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorMessage(Landroid/content/Context;IZ)I

    move-result v0

    .line 42
    .local v0, errMsg:I
    new-instance v1, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    invoke-direct {v1, v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;-><init>(I)V

    return-object v1
.end method

.method private static getMountedMediaError(I)I
    .locals 7
    .parameter "mediaType"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 258
    const v4, 0x20401f8

    .line 260
    .local v4, message:I
    const/16 v0, 0xf

    .line 261
    .local v0, allImageTypes:I
    const/16 v1, 0xf0

    .line 263
    .local v1, allVideoTypes:I
    and-int v6, p0, v0

    if-eqz v6, :cond_0

    move v2, v3

    .line 264
    .local v2, hasImage:Z
    :goto_0
    and-int v6, p0, v1

    if-eqz v6, :cond_1

    .line 266
    .local v3, hasVideo:Z
    :goto_1
    const/4 v5, -0x1

    if-ne p0, v5, :cond_2

    .line 268
    const v4, 0x7f0a005d

    .line 283
    :goto_2
    return v4

    .end local v2           #hasImage:Z
    .end local v3           #hasVideo:Z
    :cond_0
    move v2, v5

    .line 263
    goto :goto_0

    .restart local v2       #hasImage:Z
    :cond_1
    move v3, v5

    .line 264
    goto :goto_1

    .line 270
    .restart local v3       #hasVideo:Z
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 272
    const v4, 0x20401f7

    goto :goto_2

    .line 274
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 276
    const v4, 0x20401f6

    goto :goto_2

    .line 280
    :cond_4
    const v4, 0x20401f8

    goto :goto_2
.end method

.method private static getSDErrorMsg(Ljava/lang/String;I)I
    .locals 9
    .parameter "status"
    .parameter "mediaType"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 290
    sget-object v6, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ErrorMsgProvider][getSDErrorMsg] status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mediaType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const v4, 0x20401fb

    .line 293
    .local v4, message:I
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    const v4, 0x20401f9

    .line 349
    :goto_0
    return v4

    .line 297
    :cond_0
    const-string v6, "removed"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "bad_removal"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    :cond_1
    const v4, 0x20400a0

    goto :goto_0

    .line 302
    :cond_2
    const-string v6, "unmounted"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 304
    const v4, 0x20401fa

    goto :goto_0

    .line 306
    :cond_3
    const-string v6, "unmountable"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 308
    const v4, 0x20400a0

    goto :goto_0

    .line 310
    :cond_4
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 313
    const/16 v0, 0xf

    .line 314
    .local v0, allImageTypes:I
    const/16 v1, 0xf0

    .line 316
    .local v1, allVideoTypes:I
    and-int v6, p1, v0

    if-eqz v6, :cond_5

    move v2, v3

    .line 317
    .local v2, hasImage:Z
    :goto_1
    and-int v6, p1, v1

    if-eqz v6, :cond_6

    .line 319
    .local v3, hasVideo:Z
    :goto_2
    const/4 v5, -0x1

    if-ne p1, v5, :cond_7

    .line 321
    const v4, 0x7f0a005d

    goto :goto_0

    .end local v2           #hasImage:Z
    .end local v3           #hasVideo:Z
    :cond_5
    move v2, v5

    .line 316
    goto :goto_1

    .restart local v2       #hasImage:Z
    :cond_6
    move v3, v5

    .line 317
    goto :goto_2

    .line 323
    .restart local v3       #hasVideo:Z
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 325
    const v4, 0x20401f8

    goto :goto_0

    .line 327
    :cond_8
    if-eqz v2, :cond_9

    .line 329
    const v4, 0x20401f7

    goto :goto_0

    .line 331
    :cond_9
    if-eqz v3, :cond_a

    .line 333
    const v4, 0x20401f6

    goto :goto_0

    .line 337
    :cond_a
    const v4, 0x20401f8

    goto :goto_0

    .line 340
    .end local v0           #allImageTypes:I
    .end local v1           #allVideoTypes:I
    .end local v2           #hasImage:Z
    .end local v3           #hasVideo:Z
    :cond_b
    const-string v5, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 342
    const v4, 0x20401fc

    goto :goto_0

    .line 346
    :cond_c
    const-string v5, "Albums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sd card: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getStoragesErrorMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)I
    .locals 8
    .parameter "external"
    .parameter "phone"
    .parameter "context"
    .parameter "mediaType"

    .prologue
    const v7, 0x20401fb

    const v6, 0x20401fd

    const/4 v5, 0x0

    .line 77
    sget-object v2, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ErrorMsgProvider][getStoragesErrorMessage] sd card status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phone storage status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    .line 79
    .local v1, message:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    .line 81
    .local v0, bSupportPhoneStorage:Z
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 83
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 85
    :cond_0
    const v1, 0x20401f9

    .line 251
    :cond_1
    :goto_0
    return v1

    .line 87
    :cond_2
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    const v1, 0x20401f9

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const v1, 0x20401f9

    goto :goto_0

    .line 103
    :cond_4
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    const v1, 0x20401f9

    .line 106
    if-eqz p2, :cond_1

    .line 107
    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :cond_5
    const v1, 0x20401f9

    goto :goto_0

    .line 114
    :cond_6
    const-string v2, "removed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "bad_removal"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "unmountable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 118
    :cond_7
    if-eqz v0, :cond_8

    if-nez p1, :cond_9

    .line 120
    :cond_8
    const v1, 0x20400a0

    goto :goto_0

    .line 122
    :cond_9
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    const v1, 0x20401f9

    goto :goto_0

    .line 134
    :cond_a
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 136
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto :goto_0

    .line 138
    :cond_b
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 140
    const v1, 0x20401fe

    goto :goto_0

    .line 144
    :cond_c
    const v1, 0x20400a0

    goto :goto_0

    .line 147
    :cond_d
    const-string v2, "unmounted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 149
    if-eqz v0, :cond_e

    if-nez p1, :cond_f

    .line 151
    :cond_e
    const v1, 0x20401fa

    goto/16 :goto_0

    .line 153
    :cond_f
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 155
    const v1, 0x20401f9

    goto/16 :goto_0

    .line 165
    :cond_10
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 167
    const v1, 0x20401fa

    goto/16 :goto_0

    .line 169
    :cond_11
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 171
    const v1, 0x20401fa

    .line 172
    if-eqz p2, :cond_1

    .line 173
    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 177
    :cond_12
    const v1, 0x20401fa

    goto/16 :goto_0

    .line 180
    :cond_13
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 182
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 185
    :cond_14
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto/16 :goto_0

    .line 187
    :cond_15
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 189
    const v1, 0x20401f9

    goto/16 :goto_0

    .line 199
    :cond_16
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 201
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    .line 202
    if-eqz p2, :cond_1

    .line 203
    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 207
    :cond_17
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto/16 :goto_0

    .line 210
    :cond_18
    const-string v2, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 212
    const v1, 0x20401fc

    goto/16 :goto_0

    .line 214
    :cond_19
    const-string v2, "nofs"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    if-eqz v0, :cond_1a

    if-nez p1, :cond_1b

    .line 218
    :cond_1a
    const v1, 0x20401fe

    goto/16 :goto_0

    .line 220
    :cond_1b
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 222
    const v1, 0x20401f9

    .line 223
    if-eqz p2, :cond_1

    .line 224
    invoke-static {p2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    :cond_1c
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 236
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    .line 238
    if-eqz p2, :cond_1

    .line 239
    invoke-static {p2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 241
    :cond_1d
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 243
    const v1, 0x20401fe

    goto/16 :goto_0

    .line 247
    :cond_1e
    const v1, 0x20401fe

    goto/16 :goto_0
.end method
