.class public Lcom/htc/album/helper/FileOperationManager;
.super Ljava/lang/Object;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FileOperationManager$1;,
        Lcom/htc/album/helper/FileOperationManager$DeleteListener;,
        Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;,
        Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static ENABLE_FILEOPERATION:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileOperationManager"

.field public static final RESULT_FAILED:I = 0x68561

.field public static final RESULT_FAILED_CANCELED:I = 0x68565

.field public static final RESULT_FAILED_STORAGE_FULL:I = 0x68562

.field public static final RESULT_OK:I = 0x68560


# instance fields
.field private mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field private mDataSourceIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSourceUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDataTargetPath:Ljava/lang/String;

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

.field private mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

.field private mFragment:Landroid/app/Fragment;

.field private mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/helper/FileOperationManager;->ENABLE_FILEOPERATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)V
    .locals 1
    .parameter "fragment"
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    .line 33
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    .line 34
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 35
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    .line 36
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 40
    sget-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    .line 57
    iput-object p2, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    .line 58
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    return-object v0
.end method

.method public static scanExternalStorage(Landroid/app/Activity;)V
    .locals 4
    .parameter "activityReference"

    .prologue
    .line 392
    if-eqz p0, :cond_0

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    :cond_0
    return-void
.end method


# virtual methods
.method public callFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "activity"
    .parameter "collection"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p3, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p2, :cond_2

    .line 338
    :cond_0
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 339
    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][callFileOperationFolderSelector] illegal parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v2

    .line 344
    .local v2, type:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    invoke-virtual {p0, p3}, Lcom/htc/album/helper/FileOperationManager;->setSourceUriList(Ljava/util/ArrayList;)V

    .line 345
    invoke-virtual {p0, p4}, Lcom/htc/album/helper/FileOperationManager;->setSourceIndexList(Ljava/util/ArrayList;)V

    .line 346
    invoke-virtual {p0, p2}, Lcom/htc/album/helper/FileOperationManager;->setAlbumCollection(Lcom/htc/album/modules/collection/Collection;)V

    .line 348
    const/4 v1, -0x1

    .line 349
    .local v1, fileOperationType:I
    sget-object v3, Lcom/htc/album/helper/FileOperationManager$1;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {v2}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    const/16 v1, 0x3e

    .line 361
    :goto_1
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, albumBucketID:Ljava/lang/String;
    invoke-static {p1, v0, v1}, Lcom/htc/album/helper/MenuManager;->callFileOperationFolderSelector(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 355
    .end local v0           #albumBucketID:Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x3f

    .line 356
    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 282
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][cancel] +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->cancel(Z)Z

    .line 288
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationTask;->hideAllDialogs()V

    .line 289
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationTask;->notifyWaitLock()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 296
    :cond_2
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 297
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][cancel] ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_3
    return-void
.end method

.method public doCopyMoveOperation(Ljava/lang/String;)V
    .locals 2
    .parameter "targetLocation"

    .prologue
    .line 373
    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationManager;->setTargetFolderPath(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager;->fileOperationStart()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][doFileOperationWithCreateNewFolder] newFolderName is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fileOperationStart()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const v2, 0x68561

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 197
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][fileOperationStart] create file operation task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    .line 201
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v0, v1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v0, v1, :cond_5

    .line 209
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 219
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 220
    iput-object v4, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 222
    :cond_4
    new-instance v0, Lcom/htc/album/helper/DeleteManager;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    new-instance v3, Lcom/htc/album/helper/FileOperationManager$DeleteListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/album/helper/FileOperationManager$DeleteListener;-><init>(Lcom/htc/album/helper/FileOperationManager;Lcom/htc/album/helper/FileOperationManager$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 223
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v8, extras:Landroid/os/Bundle;
    const-string v0, "key_is_delete_folder"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    const v1, 0x120001

    invoke-virtual {v0, v1, v8}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 229
    .end local v8           #extras:Landroid/os/Bundle;
    :cond_5
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationBegin()V

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 234
    :cond_7
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][fileOperationStart] illegal input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0

    .line 240
    :cond_8
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    invoke-virtual {v0, v10}, Lcom/htc/album/helper/FileOperationTask;->cancel(Z)Z

    .line 243
    iput-object v4, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    .line 246
    :cond_9
    new-instance v0, Lcom/htc/album/helper/FileOperationTask;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v3, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/FileOperationTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    .line 253
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public getAlbumCollection()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-object v0
.end method

.method public getSourceIndexList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSourceUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, isRunning:Z
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationTask;->isRunning()Z

    move-result v0

    .line 310
    :cond_0
    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][release]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 72
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 83
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 88
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 89
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    .line 95
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 96
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 98
    :cond_5
    return-void
.end method

.method public setAlbumCollection(Lcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "collection"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 180
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/collection/Collection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    .line 181
    return-void
.end method

.method public setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    .line 264
    return-void
.end method

.method public setSourceIndexList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, source:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 134
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][setSourceFiles] source list is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-void
.end method

.method public setSourceUriList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, source:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 108
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][setSourceFiles] source list is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    return-void
.end method

.method public setStorageProblemState()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationTask;->setStorageProblemState()V

    .line 321
    :cond_0
    return-void
.end method

.method public setTargetFolderPath(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetPath:Ljava/lang/String;

    .line 159
    return-void
.end method
