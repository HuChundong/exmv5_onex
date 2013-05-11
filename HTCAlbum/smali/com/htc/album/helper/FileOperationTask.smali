.class Lcom/htc/album/helper/FileOperationTask;
.super Landroid/os/AsyncTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FileOperationTask$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileOperationTask"

.field private static final REMAIN_NEW_FOLDER_CREATE_SIZE:J = 0x100000L

.field private static final REMAIN_SINGLE_BURST_IMAGE_SIZE:J = 0x300000L

.field private static final REMAIN_STORAGE_SIZE_FOR_FULL_SPACE_CHECK:J = 0x6400000L


# instance fields
.field private final BURST_IMAGE_MAX_COUNT:I

.field private final DELAY_TIME_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

.field private final MSG_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

.field private mContext:Landroid/content/Context;

.field private mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

.field private mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

.field private mFragment:Landroid/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsApplyToAll:Z

.field private mIsConfirm:Z

.field private mIsRunning:Z

.field private mIsSkip:Z

.field private mIsStorageProblem:Z

.field private mIsUpdateProgressText:Z

.field private mLocker:Ljava/lang/Object;

.field private mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

.field private mRemoveCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

.field private mSourceIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetPath:Ljava/lang/String;

.field private mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/helper/FileOperationTask;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 3
    .parameter "fragment"
    .parameter "collection"
    .parameter
    .parameter
    .parameter "targetPath"
    .parameter "callBack"
    .parameter "tasktype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;",
            "Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    sget-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    .line 50
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    .line 51
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceUriList:Ljava/util/ArrayList;

    .line 52
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceIndexList:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 55
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    .line 57
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsUpdateProgressText:Z

    .line 59
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 60
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    .line 61
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 63
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    .line 65
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    .line 66
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;

    .line 69
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsRunning:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsStorageProblem:Z

    .line 78
    const v0, 0x22120

    iput v0, p0, Lcom/htc/album/helper/FileOperationTask;->MSG_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

    .line 79
    const/16 v0, 0x63

    iput v0, p0, Lcom/htc/album/helper/FileOperationTask;->BURST_IMAGE_MAX_COUNT:I

    .line 80
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/album/helper/FileOperationTask;->DELAY_TIME_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

    .line 82
    new-instance v0, Lcom/htc/album/helper/FileOperationTask$1;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/FileOperationTask$1;-><init>(Lcom/htc/album/helper/FileOperationTask;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mHandler:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    .line 110
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    .line 111
    iput-object p6, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    .line 112
    iput-object p2, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 113
    iput-object p7, p0, Lcom/htc/album/helper/FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    .line 114
    iput-object p3, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceUriList:Ljava/util/ArrayList;

    .line 115
    iput-object p4, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceIndexList:Ljava/util/ArrayList;

    .line 116
    iput-object p5, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FileOperationDialogManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/FileOperationTask;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/FileOperationTask;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/album/helper/FileOperationTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/album/helper/FileOperationTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/album/helper/FileOperationTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    return p1
.end method

.method private addRemoveFileCacheItem(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "context"
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "dateTaken"

    .prologue
    .line 1620
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableRemoveLocalImageFileCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1622
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1625
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v8, file:Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 1627
    .local v6, imageSize:J
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1628
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1630
    :cond_2
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;-><init>(Ljava/lang/String;JJJ)V

    .line 1634
    .local v0, item:Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1635
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    .line 1636
    :cond_3
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private convertToTargetBurstList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 15
    .parameter "sourceImageList"
    .parameter "targetFolderPath"
    .parameter "isNewBurst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_0

    if-nez p2, :cond_2

    .line 1172
    :cond_0
    const-string v12, "FileOperationTask"

    const-string v13, "[HTCAlbum][FileOperationTask][convertToNewBurstList] illegal input parameters"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v2, 0x0

    .line 1239
    :cond_1
    :goto_0
    return-object v2

    .line 1176
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v2, burstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1179
    .local v1, burstGroupName:Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    .line 1180
    .local v10, sourceImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v10, :cond_3

    .line 1182
    const-string v12, "FileOperationTask"

    const-string v13, "[HTCAlbum][FileOperationTask][convertToNewBurstList] sourceImage is null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v2, 0x0

    goto :goto_0

    .line 1185
    :cond_3
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    .line 1186
    .local v11, sourceImagePath:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 1187
    invoke-static {v11}, Lcom/htc/album/helper/FileOperationHelper;->getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    :goto_1
    if-nez v1, :cond_6

    .line 1193
    const-string v12, "FileOperationTask"

    const-string v13, "[HTCAlbum][FileOperationTask][convertToNewBurstList] can not generate unique burst group name."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    if-eqz p3, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v12

    if-lez v12, :cond_5

    .line 1195
    const-string v12, "FileOperationTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][FileOperationTask][convertToNewBurstList] failed path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1189
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->createUniqueBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1197
    :cond_5
    const-string v12, "FileOperationTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][FileOperationTask][convertToNewBurstList] failed path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1201
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .line 1202
    .local v3, count:I
    if-eqz p3, :cond_8

    .line 1204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    .local v9, newPath:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v3, :cond_1

    .line 1207
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    .line 1208
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v6, :cond_7

    .line 1210
    const-string v12, "FileOperationTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][FileOperationTask][convertToNewBurstList]1 the "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " image is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1213
    :cond_7
    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1214
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1220
    .end local v4           #i:I
    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v9           #newPath:Ljava/lang/StringBuilder;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    .restart local v9       #newPath:Ljava/lang/StringBuilder;
    const-string v5, "IMAG"

    .line 1222
    .local v5, imagPatten:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_BURST"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1223
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    if-ge v4, v3, :cond_1

    .line 1225
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    .line 1226
    .restart local v6       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v6, :cond_9

    .line 1228
    const-string v12, "FileOperationTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][FileOperationTask][convertToNewBurstList]2 the "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " image is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1231
    :cond_9
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1232
    .local v7, imageName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1233
    .local v8, imageSufiix:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1234
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private convertUriListToIImageList(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "collection"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1731
    .local p3, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1733
    :cond_0
    const-string v14, "FileOperationTask"

    const-string v15, "[HTCAlbum][FileOPTask][convertUriListToIImageList] illegal input parameters"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v13, 0x0

    .line 1792
    :cond_1
    :goto_0
    return-object v13

    .line 1737
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1738
    .local v13, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1739
    .local v10, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v10, :cond_3

    .line 1741
    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1742
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    .end local v10           #list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1743
    .restart local v10       #list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v10, :cond_3

    .line 1745
    const-string v14, "FileOperationTask"

    const-string v15, "[HTCAlbum][FileOPTask][convertUriListToIImageList] the image list is null"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v13, 0x0

    goto :goto_0

    .line 1750
    :cond_3
    const/4 v3, 0x0

    .line 1751
    .local v3, drmCount:I
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v3

    .line 1752
    if-nez v3, :cond_5

    if-eqz p4, :cond_5

    .line 1754
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1756
    .local v8, index:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 1757
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v7, :cond_4

    .line 1759
    const-string v14, "FileOperationTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[HTCAlbum][FileOPTask][convertUriListToIImageList] the "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " image is null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1762
    :cond_4
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1765
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v8           #index:Ljava/lang/Integer;
    :cond_5
    if-eqz p3, :cond_9

    .line 1767
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1768
    .local v12, pickUriSize:I
    const/4 v6, 0x0

    .local v6, idx:I
    :goto_2
    if-ge v6, v12, :cond_1

    .line 1770
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1771
    .local v2, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1772
    .local v9, indexFromPicker:I
    invoke-virtual {v10, v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 1773
    .restart local v7       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v7, :cond_7

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1775
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1779
    :cond_7
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v11

    .line 1780
    .local v11, listSize:I
    move v4, v9

    .local v4, i:I
    :goto_3
    if-ge v4, v11, :cond_6

    .line 1782
    invoke-virtual {v10, v4}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 1783
    if-eqz v7, :cond_8

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1784
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1790
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v4           #i:I
    .end local v6           #idx:I
    .end local v7           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v9           #indexFromPicker:I
    .end local v11           #listSize:I
    .end local v12           #pickUriSize:I
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private copyFiles(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 34
    .parameter
    .parameter "targetFolderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, sourceImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_0

    .line 465
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles]"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 468
    .local v26, start:J
    const v21, 0x68560

    .line 469
    .local v21, result:I
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_1

    if-nez p2, :cond_2

    .line 471
    :cond_1
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] illegal input parameters"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const v21, 0x68561

    move/from16 v22, v21

    .line 651
    .end local v21           #result:I
    .local v22, result:I
    :goto_0
    return v22

    .line 477
    .end local v22           #result:I
    .restart local v21       #result:I
    :cond_2
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v30 .. v30}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v25

    .line 478
    .local v25, sourceImagePath:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 479
    .local v24, sourceFolderPathLow:Ljava/lang/String;
    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 480
    .local v29, targetFolderPathLow:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 482
    const v21, 0x68565

    move/from16 v22, v21

    .line 483
    .end local v21           #result:I
    .restart local v22       #result:I
    goto :goto_0

    .line 486
    .end local v22           #result:I
    .restart local v21       #result:I
    :cond_3
    const/4 v4, 0x1

    .line 487
    .local v4, bRes:Z
    const/4 v13, 0x0

    .line 488
    .local v13, isStorageFull:Z
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v28, targetFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_5

    .line 491
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/32 v32, 0x100000

    add-long v19, v30, v32

    .line 493
    .local v19, remainFreeSpace:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v13

    .line 494
    if-eqz v13, :cond_4

    .line 496
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] create new folder failed, the storage is full."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const v21, 0x68562

    move/from16 v22, v21

    .line 498
    .end local v21           #result:I
    .restart local v22       #result:I
    goto :goto_0

    .line 501
    .end local v22           #result:I
    .restart local v21       #result:I
    :cond_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/htc/album/helper/FileOperationHelper;->createNewFolder(Ljava/lang/String;)Z

    move-result v4

    .line 502
    if-nez v4, :cond_5

    .line 504
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] create new folder failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const v21, 0x68561

    move/from16 v22, v21

    .line 506
    .end local v21           #result:I
    .restart local v22       #result:I
    goto/16 :goto_0

    .line 509
    .end local v9           #file:Ljava/io/File;
    .end local v19           #remainFreeSpace:J
    .end local v22           #result:I
    .restart local v21       #result:I
    :cond_5
    const/16 v25, 0x0

    .line 510
    const/16 v24, 0x0

    .line 511
    const/16 v29, 0x0

    .line 513
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v30, ""

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 514
    .local v6, dataPath:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 516
    .local v14, media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationTask;->isCancelled()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 518
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] Copy file failed, the task is cancelling."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v4, 0x0

    .line 520
    const v21, 0x68565

    .line 638
    .end local v14           #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_7
    :goto_2
    if-eqz v4, :cond_9

    .line 639
    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_8

    .line 640
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] File Copied success."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_8
    const v21, 0x68560

    .line 644
    :cond_9
    sget-boolean v30, Lcom/htc/album/helper/FileOperationTask;->DEBUG:Z

    if-eqz v30, :cond_a

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 647
    .local v7, end:J
    const-string v30, "FileOperationTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[HTCAlbum][FileOperationTask][copyFiles] process time = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v7, v26

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v7           #end:J
    :cond_a
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v22, v21

    .line 651
    .end local v21           #result:I
    .restart local v22       #result:I
    goto/16 :goto_0

    .line 523
    .end local v22           #result:I
    .restart local v14       #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v21       #result:I
    :cond_b
    if-nez v14, :cond_c

    .line 525
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] media is null in current round"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 528
    :cond_c
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v15

    .line 529
    .local v15, mediaPath:Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v23, sourceFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_d

    .line 532
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] the source file not exists"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const v21, 0x68561

    move/from16 v22, v21

    .line 534
    .end local v21           #result:I
    .restart local v22       #result:I
    goto/16 :goto_0

    .line 537
    .end local v22           #result:I
    .restart local v21       #result:I
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    if-eqz v30, :cond_e

    .line 538
    const/16 v30, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 539
    :cond_e
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 540
    .local v10, fileName:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 541
    .local v18, newFilePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v17, newFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 544
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    .line 549
    :cond_f
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 551
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-static {v15, v0}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v12

    .line 552
    .local v12, isNewBurst:Z
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v30

    invoke-direct {v0, v14, v1, v2, v12}, Lcom/htc/album/helper/FileOperationTask;->doBurstImageOperation(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;ZZ)I

    move-result v5

    .line 553
    .local v5, burstOperationResult:I
    const v30, 0x68560

    move/from16 v0, v30

    if-eq v5, v0, :cond_6

    .line 557
    const v30, 0x68565

    move/from16 v0, v30

    if-ne v5, v0, :cond_12

    .line 559
    const/4 v4, 0x0

    .line 560
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    move/from16 v30, v0

    if-eqz v30, :cond_11

    .line 562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v30, v0

    if-nez v30, :cond_10

    .line 563
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    .line 564
    :cond_10
    const/16 v30, 0x63

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    .line 569
    :cond_11
    move/from16 v21, v5

    .line 570
    goto/16 :goto_2

    .line 575
    :cond_12
    const/4 v4, 0x0

    .line 576
    move/from16 v21, v5

    .line 577
    goto/16 :goto_2

    .line 582
    .end local v5           #burstOperationResult:I
    .end local v12           #isNewBurst:Z
    :cond_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 585
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v30, v0

    if-nez v30, :cond_14

    .line 586
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    .line 588
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    move/from16 v30, v0

    if-nez v30, :cond_16

    .line 590
    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_15

    .line 591
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] user cancelled."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_15
    const/4 v4, 0x0

    .line 593
    const v21, 0x68565

    .line 594
    goto/16 :goto_2

    .line 596
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    move/from16 v30, v0

    if-eqz v30, :cond_18

    .line 598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    .line 599
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    .line 600
    :cond_17
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    .line 603
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    .line 606
    :cond_19
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/32 v32, 0x6400000

    add-long v19, v30, v32

    .line 607
    .restart local v19       #remainFreeSpace:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v13

    .line 608
    if-eqz v13, :cond_1a

    .line 610
    const v21, 0x68562

    .line 611
    const/4 v4, 0x0

    .line 612
    goto/16 :goto_2

    .line 615
    :cond_1a
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationHelper;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v30

    if-nez v30, :cond_1b

    .line 617
    const-string v30, "FileOperationTask"

    const-string v31, "[HTCAlbum][FileOperationTask][copyFiles] Copy file failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v30, "FileOperationTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[HTCAlbum][FileOperationTask][copyFiles] failed in source: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v30, "FileOperationTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[HTCAlbum][FileOperationTask][copyFiles] failed in target: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v4, 0x0

    .line 621
    const v21, 0x68561

    .line 622
    goto/16 :goto_2

    .line 625
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->insertDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Z)Z

    move-result v4

    .line 626
    if-nez v4, :cond_1c

    .line 628
    const-string v16, "insert DB failed."

    .line 629
    .local v16, message:Ljava/lang/String;
    const/4 v4, 0x0

    .line 631
    const-string v30, "FileOperationTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[HTCAlbum][FileOperationTask][copyFiles] "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const v21, 0x68561

    .line 633
    goto/16 :goto_2

    .line 635
    .end local v16           #message:Ljava/lang/String;
    :cond_1c
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1
.end method

.method private doBurstImageOperation(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;ZZ)I
    .locals 24
    .parameter "sourceMedia"
    .parameter "targetFilePath"
    .parameter "moveFile"
    .parameter "isNewBurst"

    .prologue
    .line 874
    sget-boolean v20, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v20, :cond_0

    .line 875
    const-string v20, "FileOperationTask"

    const-string v21, "[HTCAlbum][FileOperationTask][doBurstImageOperation]"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    const v15, 0x68560

    .line 878
    .local v15, result:I
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 880
    :cond_1
    const v15, 0x68561

    move/from16 v16, v15

    .line 968
    .end local v15           #result:I
    .local v16, result:I
    :goto_0
    return v16

    .line 884
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 885
    .local v12, newFolderPath:Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    .line 886
    .local v8, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v19

    .line 887
    .local v19, totalCount:I
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    .line 888
    const/4 v10, 0x0

    .line 889
    .local v10, isStorageFull:Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->genBurstImageSize(I)J

    move-result-wide v20

    const-wide/32 v22, 0x6400000

    add-long v13, v20, v22

    .line 890
    .local v13, remainFreeSpace:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13, v14}, Lcom/htc/album/helper/FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v10

    .line 891
    if-eqz v10, :cond_3

    .line 893
    const v15, 0x68562

    move/from16 v16, v15

    .line 894
    .end local v15           #result:I
    .restart local v16       #result:I
    goto :goto_0

    .line 897
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_3
    const/16 v17, 0x0

    .line 898
    .local v17, sourceBurstList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v4, 0x0

    .line 901
    .local v4, bursImagetList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v9, 0x0

    .line 902
    .local v9, isBurstExists:Z
    if-eqz p4, :cond_d

    .line 904
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/album/helper/FileOperationHelper;->getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 905
    .local v7, groupName:Ljava/lang/String;
    invoke-static {v12, v7}, Lcom/htc/album/helper/FileOperationHelper;->isBurstGroupExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 906
    if-eqz v9, :cond_d

    .line 908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 910
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    .line 912
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 914
    const-string v20, "FileOperationTask"

    const-string v21, "[HTCAlbum][FileOperationTask][doBurstImageOperation] user cancelled."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    const v15, 0x68565

    .line 960
    if-eqz v8, :cond_5

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_5
    if-eqz v17, :cond_6

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_6
    if-eqz v4, :cond_7

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_7
    move/from16 v16, v15

    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 918
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v20, :cond_c

    .line 920
    const v15, 0x68565

    .line 960
    if-eqz v8, :cond_9

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_9
    if-eqz v17, :cond_a

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_a
    if-eqz v4, :cond_b

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_b
    move/from16 v16, v15

    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 923
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_c
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .local v5, dataPath:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_BURST0001_COVER.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 925
    .local v11, newFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/helper/FileOperationTask;->getBurstImageList(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 926
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/album/helper/FileOperationTask;->deleteBurstShotImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 930
    .end local v5           #dataPath:Ljava/lang/StringBuilder;
    .end local v7           #groupName:Ljava/lang/String;
    .end local v11           #newFilePath:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->getBurstImageList(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    .line 931
    if-nez v17, :cond_11

    .line 933
    const v15, 0x68561

    .line 960
    if-eqz v8, :cond_e

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_e
    if-eqz v17, :cond_f

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_f
    if-eqz v4, :cond_10

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_10
    move/from16 v16, v15

    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 936
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/album/helper/FileOperationTask;->convertToTargetBurstList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v18

    .line 937
    .local v18, targetBurstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v18, :cond_15

    .line 939
    const-string v20, "FileOperationTask"

    const-string v21, "[HTCAlbum][FileOperationTask][doBurstImageOperation] problem with convert to target burst list."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    const v15, 0x68561

    .line 960
    if-eqz v8, :cond_12

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_12
    if-eqz v17, :cond_13

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_13
    if-eqz v4, :cond_14

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_14
    move/from16 v16, v15

    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 943
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_15
    if-eqz p4, :cond_19

    if-nez v9, :cond_19

    .line 945
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->getExistsBurstChildPath(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 946
    .local v6, duplicateFile:Ljava/lang/String;
    if-eqz v6, :cond_19

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->isContinueToReplaceExpandedBurst(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_19

    .line 950
    const-string v20, "FileOperationTask"

    const-string v21, "[HTCAlbum][FileOperationTask][doBurstImageOperation] copy burst images task cancelled."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 951
    const v15, 0x68565

    .line 960
    if-eqz v8, :cond_16

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_16
    if-eqz v17, :cond_17

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_17
    if-eqz v4, :cond_18

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_18
    move/from16 v16, v15

    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 956
    .end local v6           #duplicateFile:Ljava/lang/String;
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_19
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->copyBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    .line 960
    if-eqz v8, :cond_1a

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_1a
    if-eqz v17, :cond_1b

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_1b
    if-eqz v4, :cond_1c

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_1c
    move/from16 v16, v15

    .line 968
    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 960
    .end local v16           #result:I
    .end local v18           #targetBurstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #result:I
    :catchall_0
    move-exception v20

    if-eqz v8, :cond_1d

    .line 961
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 962
    :cond_1d
    if-eqz v17, :cond_1e

    .line 963
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 964
    :cond_1e
    if-eqz v4, :cond_1f

    .line 965
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_1f
    throw v20
.end method

.method private genBurstImageSize(I)J
    .locals 6
    .parameter "totalCount"

    .prologue
    .line 1123
    if-gtz p1, :cond_0

    .line 1125
    const-string v2, "FileOperationTask"

    const-string v3, "[HTCAlbum][FileOperationTask][getBurstImageSize] illegal input parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-wide/16 v0, -0x1

    .line 1130
    :goto_0
    return-wide v0

    .line 1128
    :cond_0
    int-to-long v2, p1

    const-wide/32 v4, 0x300000

    mul-long v0, v2, v4

    .line 1130
    .local v0, size:J
    goto :goto_0
.end method

.method private getBurstImageList(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 1135
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1137
    :cond_0
    const-string v4, "FileOperationTask"

    const-string v5, "[HTCAlbum][FileOperationTask][getBurstImageList]2 illegal input parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_1
    :goto_0
    return-object v1

    .line 1141
    :cond_2
    invoke-static {p2}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1142
    .local v3, sourceFolderPath:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1145
    invoke-static {v3}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, bucketID:Ljava/lang/String;
    new-instance v2, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-direct {v2, p1, v0, p2}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v2, p1, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1150
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1151
    .local v1, burstImageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1153
    :cond_3
    const-string v4, "FileOperationTask"

    const-string v5, "[HTCAlbum][FileOperationTask][getBurstImageList]2 get source burst image list failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v1, 0x0

    .line 1155
    goto :goto_0
.end method

.method private getExistsBurstChildPath(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1244
    .local p1, burstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1245
    .local v0, duplicateFile:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1247
    const-string v5, "FileOperationTask"

    const-string v6, "[HTCAlbum][FileOperationTask][getExistsBurstChildPath] burstList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1264
    .end local v0           #duplicateFile:Ljava/lang/String;
    .local v1, duplicateFile:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1251
    .end local v1           #duplicateFile:Ljava/lang/String;
    .restart local v0       #duplicateFile:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 1252
    .local v2, file:Ljava/io/File;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1254
    .local v4, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1255
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1257
    move-object v0, v4

    .line 1262
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move-object v1, v0

    .line 1264
    .end local v0           #duplicateFile:Ljava/lang/String;
    .restart local v1       #duplicateFile:Ljava/lang/String;
    goto :goto_0

    .line 1260
    .end local v1           #duplicateFile:Ljava/lang/String;
    .restart local v0       #duplicateFile:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getTotalDataCount(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1709
    .local p1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    const/4 v2, -0x1

    .line 1710
    .local v2, totalCount:I
    if-nez p1, :cond_0

    .line 1712
    const-string v4, "FileOperationTask"

    const-string v5, "[HTCAlbum][FileOperationTask][getTotalDataCount] dataList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1723
    .end local v2           #totalCount:I
    .local v3, totalCount:I
    :goto_0
    return v3

    .line 1715
    .end local v3           #totalCount:I
    .restart local v2       #totalCount:I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1717
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1719
    .local v0, data:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1720
    add-int/lit8 v2, v2, 0x62

    goto :goto_1

    .end local v0           #data:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    move v3, v2

    .line 1723
    .end local v2           #totalCount:I
    .restart local v3       #totalCount:I
    goto :goto_0
.end method

.method private initDuplicateFileWarningDialog()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-nez v0, :cond_0

    .line 176
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][initDuplicateFileWarningDialog] mDialogMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    const-string v1, ""

    new-instance v2, Lcom/htc/album/helper/FileOperationTask$3;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/FileOperationTask$3;-><init>(Lcom/htc/album/helper/FileOperationTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationDialogManager;->createDuplicateFileWarningDialog(Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    goto :goto_0
.end method

.method private initProgressDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 6
    .parameter "activity"
    .parameter "sourceFileCount"
    .parameter "targetPath"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 128
    :cond_0
    const-string v2, "FileOperationTask"

    const-string v3, "[HTCAlbum][FileOperationTask][initProgressDialog] illegal parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2}, Lcom/htc/album/helper/GalleryProgressDialog;->dismiss()V

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    .line 136
    :cond_2
    new-instance v2, Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-direct {v2, p1}, Lcom/htc/album/helper/GalleryProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, progressMessage:Ljava/lang/String;
    move v0, p2

    .line 140
    .local v0, progressCount:I
    sget-object v2, Lcom/htc/album/helper/FileOperationTask$4;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p4}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2}, Lcom/htc/album/helper/GalleryProgressDialog;->initialProgresDialog()V

    .line 155
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setMax(I)V

    .line 157
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setGeneralMaxCount(I)V

    .line 158
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/GalleryProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/GalleryProgressDialog;->setCancelable(Z)V

    .line 160
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    new-instance v3, Lcom/htc/album/helper/FileOperationTask$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/FileOperationTask$2;-><init>(Lcom/htc/album/helper/FileOperationTask;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/GalleryProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 143
    :pswitch_0
    const v2, 0x7f0a018f

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const v3, 0x7f0a0188

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/GalleryProgressDialog;->setTitle(I)V

    goto :goto_1

    .line 147
    :pswitch_1
    const v2, 0x7f0a0190

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const v3, 0x7f0a0187

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/GalleryProgressDialog;->setTitle(I)V

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isContinueToReplaceExpandedBurst(Ljava/lang/String;)Z
    .locals 4
    .parameter "targetFilePath"

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1270
    .local v0, bRes:Z
    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    if-nez v2, :cond_0

    .line 1272
    invoke-direct {p0, p1}, Lcom/htc/album/helper/FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    .line 1274
    :cond_0
    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    if-nez v2, :cond_1

    .line 1276
    const-string v2, "FileOperationTask"

    const-string v3, "[HTCAlbum][FileOperationTask][isContinueToReplaceExpandedBurst] user cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1284
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 1279
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    if-eqz v2, :cond_2

    move v1, v0

    .line 1281
    .restart local v1       #bRes:I
    goto :goto_0

    .line 1283
    .end local v1           #bRes:I
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 1284
    .restart local v1       #bRes:I
    goto :goto_0
.end method

.method private isStorageFull(Ljava/lang/String;J)Z
    .locals 8
    .parameter "targetPath"
    .parameter "remainFreeSpace"

    .prologue
    const-wide/16 v6, 0x400

    .line 434
    const/4 v2, 0x0

    .line 436
    .local v2, bRes:Z
    if-nez p1, :cond_0

    .line 437
    const/4 v4, 0x1

    .line 453
    :goto_0
    return v4

    .line 439
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5, p2, p3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithPathAndSize(Ljava/lang/String;JJ)Z

    move-result v2

    .line 440
    if-eqz v2, :cond_2

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is full..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, message:Ljava/lang/String;
    div-long v4, p2, v6

    div-long v0, v4, v6

    .line 444
    .local v0, allocate:J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 445
    const-wide/16 v0, 0x1

    .line 447
    :cond_1
    const-string v4, "FileOperationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationTask][isStorageFull] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v4, "FileOperationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationTask][isStorageFull] storage free space is smaller than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MB."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 450
    goto :goto_0

    .end local v0           #allocate:J
    .end local v3           #message:Ljava/lang/String;
    :cond_2
    move v4, v2

    .line 453
    goto :goto_0
.end method

.method private moveFiles(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 35
    .parameter
    .parameter "targetFolderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, sourceImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_0

    .line 663
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles]"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    const v22, 0x68560

    .line 665
    .local v22, result:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 666
    .local v27, start:J
    const/4 v4, 0x1

    .line 668
    .local v4, bRes:Z
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1

    if-nez p2, :cond_2

    .line 670
    :cond_1
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] move failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v4, 0x0

    .line 672
    const v22, 0x68561

    move/from16 v23, v22

    .line 869
    .end local v22           #result:I
    .local v23, result:I
    :goto_0
    return v23

    .line 677
    .end local v23           #result:I
    .restart local v22       #result:I
    :cond_2
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v31 .. v31}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v26

    .line 678
    .local v26, sourceImagePath:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget-object v32, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    .line 679
    .local v25, sourceFolderPathLow:Ljava/lang/String;
    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 680
    .local v30, targetFolderPathLow:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 682
    const v22, 0x68565

    move/from16 v23, v22

    .line 683
    .end local v22           #result:I
    .restart local v23       #result:I
    goto :goto_0

    .line 686
    .end local v23           #result:I
    .restart local v22       #result:I
    :cond_3
    const/4 v14, 0x0

    .line 687
    .local v14, isStorageFull:Z
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v29, targetFile:Ljava/io/File;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_5

    .line 690
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v31

    const-wide/32 v33, 0x100000

    add-long v20, v31, v33

    .line 692
    .local v20, remainFreeSpace:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v14

    .line 693
    if-eqz v14, :cond_4

    .line 695
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] create new folder failed, the storage is full."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const v22, 0x68562

    move/from16 v23, v22

    .line 697
    .end local v22           #result:I
    .restart local v23       #result:I
    goto :goto_0

    .line 700
    .end local v23           #result:I
    .restart local v22       #result:I
    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/htc/album/helper/FileOperationHelper;->createNewFolder(Ljava/lang/String;)Z

    move-result v4

    .line 701
    if-nez v4, :cond_5

    .line 703
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] create new folder failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const v22, 0x68561

    move/from16 v23, v22

    .line 705
    .end local v22           #result:I
    .restart local v23       #result:I
    goto/16 :goto_0

    .line 708
    .end local v9           #file:Ljava/io/File;
    .end local v20           #remainFreeSpace:J
    .end local v23           #result:I
    .restart local v22       #result:I
    :cond_5
    const/16 v26, 0x0

    .line 709
    const/16 v25, 0x0

    .line 710
    const/16 v30, 0x0

    .line 714
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v31, 0x100

    move/from16 v0, v31

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 715
    .local v6, dataPath:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 717
    .local v15, media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationTask;->isCancelled()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 719
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] Move file failed, the task is cancelling."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    const/4 v4, 0x0

    .line 721
    const v22, 0x68565

    .line 854
    .end local v15           #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_7
    :goto_2
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    .line 856
    if-eqz v4, :cond_9

    .line 858
    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_8

    .line 859
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] move success."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_8
    const v22, 0x68560

    .line 863
    :cond_9
    sget-boolean v31, Lcom/htc/album/helper/FileOperationTask;->DEBUG:Z

    if-eqz v31, :cond_a

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 866
    .local v7, end:J
    const-string v31, "FileOperationTask"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[HTCAlbum][FileOperationTask][moveFiles] process time = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sub-long v33, v7, v27

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #end:J
    :cond_a
    move/from16 v23, v22

    .line 869
    .end local v22           #result:I
    .restart local v23       #result:I
    goto/16 :goto_0

    .line 724
    .end local v23           #result:I
    .restart local v15       #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v22       #result:I
    :cond_b
    if-nez v15, :cond_c

    .line 726
    :try_start_1
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] media is null in current round"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 854
    .end local v6           #dataPath:Ljava/lang/StringBuilder;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catchall_0
    move-exception v31

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    throw v31

    .line 729
    .restart local v6       #dataPath:Ljava/lang/StringBuilder;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_c
    :try_start_2
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v16

    .line 730
    .local v16, mediaPath:Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    .local v24, sourceFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_d

    .line 733
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] The source file not exists"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    const/4 v4, 0x0

    .line 735
    const v22, 0x68561

    .line 854
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    move/from16 v23, v22

    .end local v22           #result:I
    .restart local v23       #result:I
    goto/16 :goto_0

    .line 739
    .end local v23           #result:I
    .restart local v22       #result:I
    :cond_d
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v31

    if-eqz v31, :cond_e

    .line 740
    const/16 v31, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 741
    :cond_e
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 742
    .local v10, fileName:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 743
    .local v19, newFilePath:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v18, newFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 747
    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    .line 752
    :cond_f
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v31

    if-eqz v31, :cond_13

    .line 754
    const/16 v31, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v13

    .line 755
    .local v13, isNewBurst:Z
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v31

    invoke-direct {v0, v15, v1, v2, v13}, Lcom/htc/album/helper/FileOperationTask;->doBurstImageOperation(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;ZZ)I

    move-result v5

    .line 756
    .local v5, burstOperationResult:I
    const v31, 0x68560

    move/from16 v0, v31

    if-eq v5, v0, :cond_6

    .line 760
    const v31, 0x68565

    move/from16 v0, v31

    if-ne v5, v0, :cond_12

    .line 762
    const/4 v4, 0x0

    .line 763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    .line 765
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    .line 766
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    .line 767
    :cond_10
    const/16 v31, 0x63

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    .line 772
    :cond_11
    move/from16 v22, v5

    .line 773
    goto/16 :goto_2

    .line 778
    :cond_12
    const/4 v4, 0x0

    .line 779
    move/from16 v22, v5

    .line 780
    goto/16 :goto_2

    .line 785
    .end local v5           #burstOperationResult:I
    .end local v13           #isNewBurst:Z
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v12

    .line 786
    .local v12, isDuplicateFile:Z
    if-eqz v12, :cond_18

    .line 789
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v31, v0

    if-nez v31, :cond_14

    .line 790
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    .line 792
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    move/from16 v31, v0

    if-nez v31, :cond_15

    .line 794
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] user cancelled."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v4, 0x0

    .line 796
    const v22, 0x68565

    .line 797
    goto/16 :goto_2

    .line 799
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    move/from16 v31, v0

    if-eqz v31, :cond_17

    .line 801
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z

    move/from16 v31, v0

    if-nez v31, :cond_16

    .line 802
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z

    .line 803
    :cond_16
    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    .line 806
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    .line 809
    :cond_18
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v31

    const-wide/32 v33, 0x6400000

    add-long v20, v31, v33

    .line 810
    .restart local v20       #remainFreeSpace:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v14

    .line 811
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnDifferenceStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_19

    if-eqz v14, :cond_19

    .line 813
    const/4 v4, 0x0

    .line 814
    const v22, 0x68562

    .line 815
    goto/16 :goto_2

    .line 817
    :cond_19
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationHelper;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v31

    if-nez v31, :cond_1b

    .line 819
    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_1a

    .line 820
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] Move file failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1a
    const/4 v4, 0x0

    .line 822
    const v22, 0x68561

    .line 823
    goto/16 :goto_2

    .line 826
    :cond_1b
    if-eqz v12, :cond_1d

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->insertDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Z)Z

    move-result v4

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1c

    .line 830
    const-string v31, "FileOperationTask"

    const-string v32, "[HTCAlbum][FileOperationTask][moveFiles] delete original file failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_1c
    :goto_3
    if-nez v4, :cond_1f

    .line 839
    const/16 v17, 0x0

    .line 840
    .local v17, message:Ljava/lang/String;
    if-eqz v12, :cond_1e

    .line 841
    const-string v17, "insert data to DB failed."

    .line 845
    :goto_4
    const-string v31, "FileOperationTask"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[HTCAlbum][FileOperationTask][moveFiles] "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const v22, 0x68561

    .line 847
    goto/16 :goto_2

    .line 834
    .end local v17           #message:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v15, v2}, Lcom/htc/album/helper/FileOperationTask;->updateDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    .line 843
    .restart local v17       #message:Ljava/lang/String;
    :cond_1e
    const-string v17, "update data to DB failed."

    goto :goto_4

    .line 849
    .end local v17           #message:Ljava/lang/String;
    :cond_1f
    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private sendMessage(ILjava/lang/Object;J)V
    .locals 2
    .parameter "messageID"
    .parameter "data"
    .parameter "delayMillis"

    .prologue
    .line 1599
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1600
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1601
    return-void
.end method

.method private startRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1643
    .local p2, cacheItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;>;"
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableRemoveLocalImageFileCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1653
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    if-eqz p1, :cond_0

    .line 1647
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1649
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask;

    invoke-direct {v0, p1, p2}, Lcom/htc/album/helper/RemoveFileCacheTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1650
    .local v0, removeCacheTask:Lcom/htc/album/helper/RemoveFileCacheTask;
    invoke-virtual {v0}, Lcom/htc/album/helper/RemoveFileCacheTask;->start()V

    .line 1651
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/RemoveFileCacheTask;->postTask(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateHiddenAlbumList(Ljava/util/HashMap;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    const/16 v4, 0x9

    const/4 v5, 0x1

    .line 1657
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1659
    :cond_0
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][updateHiddenAlbumList] illegal input parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_1
    :goto_0
    return-void

    .line 1664
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    invoke-static {v0, v1, v2, v4, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1670
    .local v12, hiddenAlbumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-nez v12, :cond_3

    .line 1672
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][updateHiddenAlbumList] there is no any hidden album."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1676
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .local v3, newAlbumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v6, 0x0

    .line 1678
    .local v6, bIsUpdateCache:Z
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1680
    .local v8, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v7

    .line 1681
    .local v7, bucketID:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1683
    const/4 v6, 0x1

    .line 1684
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 1685
    .local v11, folder:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1686
    .local v10, filePath:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1687
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1688
    invoke-virtual {v8, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setBucketId(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v8, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setDisplayName(Ljava/lang/String;)V

    .line 1691
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #folder:Ljava/io/File;
    :cond_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1694
    .end local v7           #bucketID:Ljava/lang/String;
    .end local v8           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_5
    if-eqz v6, :cond_1

    .line 1696
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 1703
    invoke-static {v3}, Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private waitForWarningDialogComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 1605
    const v1, 0x22120

    const-wide/16 v2, 0x64

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->sendMessage(ILjava/lang/Object;J)V

    .line 1607
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1609
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1610
    monitor-exit v2

    .line 1614
    :goto_0
    return-void

    .line 1610
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public copyBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;Z)I
    .locals 33
    .parameter "imageList"
    .parameter
    .parameter "moveFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 973
    .local p2, targetBurstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v29, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v29, :cond_0

    .line 974
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages]"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    const v21, 0x68560

    .line 976
    .local v21, result:I
    const/4 v6, 0x0

    .line 978
    .local v6, bRes:Z
    const/16 v5, 0x32

    .line 980
    .local v5, COPY_ROUND_LIMIT:I
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v29

    if-nez v29, :cond_2

    .line 982
    :cond_1
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages] problem with the input parameters."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const v21, 0x68561

    move/from16 v22, v21

    .line 1118
    .end local v21           #result:I
    .local v22, result:I
    :goto_0
    return v22

    .line 987
    .end local v22           #result:I
    .restart local v21       #result:I
    :cond_2
    const/4 v15, 0x0

    .line 988
    .local v15, isCancelled:Z
    const/16 v16, 0x0

    .line 990
    .local v16, isStorageFull:Z
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v23, rollBackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v24, sourceBurstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    const/16 v28, 0x0

    .line 994
    .local v28, updateCount:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v7

    .line 995
    .local v7, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v7, :cond_3

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationTask;->isCancelled()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 999
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages] copy burst images task cancelled."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v15, 0x1

    .line 1001
    const v21, 0x68565

    .line 1048
    :cond_3
    :goto_2
    move/from16 v0, v28

    if-ge v0, v5, :cond_4

    .line 1050
    sub-int v29, v5, v28

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    .line 1051
    move/from16 v28, v5

    .line 1054
    :cond_4
    if-eqz v15, :cond_c

    .line 1056
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages] copy burst images not complete."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 1059
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1060
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 1005
    .end local v11           #file:Ljava/io/File;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v14

    .line 1006
    .local v14, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v14, :cond_7

    .line 1008
    const-string v29, "FileOperationTask"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[HTCAlbum][FileOperationTask][copyBurstImages] copy burst images failed, the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " image is null"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v15, 0x1

    .line 1010
    const v21, 0x68561

    .line 1011
    goto :goto_2

    .line 1013
    :cond_7
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v25

    .line 1014
    .local v25, sourceDataPath:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1015
    .local v27, targetDataPath:Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v26, srcFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v8, dstFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1021
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v29

    const-wide/32 v31, 0x6400000

    add-long v19, v29, v31

    .line 1022
    .local v19, remainFreeSpace:J
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v16

    .line 1023
    if-eqz v16, :cond_9

    .line 1025
    const v21, 0x68562

    .line 1026
    const/4 v15, 0x1

    .line 1027
    goto/16 :goto_2

    .line 1030
    :cond_9
    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/htc/album/helper/FileOperationHelper;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 1032
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages] copy burst images failed."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v15, 0x1

    .line 1034
    const v21, 0x68561

    .line 1035
    goto/16 :goto_2

    .line 1037
    :cond_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    rem-int/lit8 v10, v12, 0x2

    .line 1041
    .local v10, even:I
    if-nez v10, :cond_b

    move/from16 v0, v28

    if-gt v0, v5, :cond_b

    .line 1043
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    .line 1044
    add-int/lit8 v28, v28, 0x1

    .line 995
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1065
    .end local v8           #dstFile:Ljava/io/File;
    .end local v10           #even:I
    .end local v14           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v19           #remainFreeSpace:J
    .end local v25           #sourceDataPath:Ljava/lang/String;
    .end local v26           #srcFile:Ljava/io/File;
    .end local v27           #targetDataPath:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1066
    .local v17, length:I
    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_10

    .line 1068
    if-eqz p3, :cond_11

    .line 1070
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1071
    .local v18, media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v18, :cond_e

    .line 1073
    const-string v29, "FileOperationTask"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[HTCAlbum][FileOperationTask][copyBurstImages] the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " image is null"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .end local v18           #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_d
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1076
    .restart local v18       #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_e
    new-instance v11, Ljava/io/File;

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    .restart local v11       #file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1078
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1079
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/File;

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->updateDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;)Z

    move-result v6

    .line 1080
    if-nez v6, :cond_12

    .line 1082
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages] update data to DB failed."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const v21, 0x68561

    .line 1108
    .end local v11           #file:Ljava/io/File;
    .end local v17           #length:I
    .end local v18           #media:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_10
    :goto_6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    const-wide/16 v29, 0x64

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1111
    rsub-int/lit8 v29, v28, 0x63

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    .line 1112
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    move/from16 v22, v21

    .line 1118
    .end local v21           #result:I
    .restart local v22       #result:I
    goto/16 :goto_0

    .line 1089
    .end local v22           #result:I
    .restart local v17       #length:I
    .restart local v21       #result:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/File;

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/FileOperationTask;->insertDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Z)Z

    move-result v6

    .line 1090
    if-nez v6, :cond_12

    .line 1092
    const-string v29, "FileOperationTask"

    const-string v30, "[HTCAlbum][FileOperationTask][copyBurstImages] insert data to DB failed."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const v21, 0x68561

    .line 1094
    goto :goto_6

    .line 1098
    :cond_12
    rem-int/lit8 v10, v12, 0x2

    .line 1099
    .restart local v10       #even:I
    const/16 v29, 0x63

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    if-nez v10, :cond_d

    .line 1101
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationTask;->updateProgress(IZ)V

    .line 1102
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    .line 1112
    .end local v10           #even:I
    .end local v17           #length:I
    :catchall_0
    move-exception v29

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v29
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1113
    :catch_0
    move-exception v9

    .line 1115
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method

.method public deleteBurstShotImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 1
    .parameter "imageList"

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/helper/FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)Z

    .line 1164
    return-void
.end method

.method public deleteDataFromDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)Z
    .locals 15
    .parameter "context"
    .parameter "imageList"

    .prologue
    .line 1553
    const/4 v8, 0x0

    .line 1554
    .local v8, bRes:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1556
    :cond_0
    const-string v1, "FileOperationTask"

    const-string v2, "[HTCAlbum][FileOperationTask][deleteDataFromDB]1 illegal input parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1579
    .end local v8           #bRes:Z
    .local v9, bRes:I
    :goto_0
    return v9

    .line 1559
    .end local v9           #bRes:I
    .restart local v8       #bRes:Z
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    .line 1560
    .local v10, count:I
    new-array v11, v10, [Ljava/lang/String;

    .line 1562
    .local v11, deleteIDArr:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in ( ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1563
    .local v14, where:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v10, :cond_4

    .line 1565
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v13

    .line 1566
    .local v13, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v13, :cond_2

    .line 1568
    const-string v1, "FileOperationTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FileOperationTask][deleteDataFromDB]1 the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1571
    :cond_2
    if-eqz v12, :cond_3

    .line 1572
    const-string v1, ", ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    :cond_3
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v12

    .line 1574
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v6

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/htc/album/helper/FileOperationTask;->addRemoveFileCacheItem(Landroid/content/Context;Ljava/lang/String;JJ)V

    goto :goto_2

    .line 1576
    .end local v13           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    const-string v1, " )"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v11}, Lcom/htc/album/helper/MediaProviderHelper;->deleteData(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    move v9, v8

    .line 1579
    .restart local v9       #bRes:I
    goto :goto_0
.end method

.method public deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 1584
    const/4 v0, 0x0

    .line 1585
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1587
    :cond_0
    const-string v4, "FileOperationTask"

    const-string v5, "[HTCAlbum][FileOperationTask][deleteDataFromDB]2 illegal input parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1594
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 1591
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_1
    const-string v2, " _data = ?"

    .line 1592
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 1593
    .local v3, wheres:[Ljava/lang/String;
    const-string v4, " _data = ?"

    invoke-static {p1, v4, v3}, Lcom/htc/album/helper/MediaProviderHelper;->deleteData(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 1594
    .restart local v1       #bRes:I
    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "arg0"

    .prologue
    .line 260
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 261
    const-string v8, "FileOperationTask"

    const-string v9, "[HTCAlbum][FileOperationTask][doInBackground] +++"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/helper/FileOperationTask;->mIsRunning:Z

    .line 263
    const v3, 0x68561

    .line 264
    .local v3, result:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 266
    .local v6, start:J
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 268
    :cond_1
    const-string v8, "FileOperationTask"

    const-string v9, "[HTCAlbum][FileOperationTask][doInBackground] illegal parameters"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/album/helper/MediaProviderHelper;->notifyChange(Landroid/content/Context;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    .local v0, end:J
    sget-boolean v8, Lcom/htc/album/helper/FileOperationTask;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 304
    const-string v8, "FileOperationTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FileOperationTask][doInBackground] process time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 306
    const-string v8, "FileOperationTask"

    const-string v9, "[HTCAlbum][FileOperationTask][doInBackground] ---"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    return-object v8

    .line 272
    .end local v0           #end:J
    :cond_5
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v10, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceUriList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceIndexList:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/htc/album/helper/FileOperationTask;->convertUriListToIImageList(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 273
    .local v2, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v8, :cond_6

    .line 274
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-direct {p0, v2}, Lcom/htc/album/helper/FileOperationTask;->getTotalDataCount(Ljava/util/ArrayList;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/album/helper/GalleryProgressDialog;->setExpandMaxCount(I)V

    .line 276
    :cond_6
    sget-object v8, Lcom/htc/album/helper/FileOperationTask$4;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    iget-object v9, p0, Lcom/htc/album/helper/FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v9}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 295
    const-string v8, "FileOperationTask"

    const-string v9, "[HTCAlbum][FileOperationTask][doInBackground] unknown task type."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const v3, 0x68561

    goto :goto_0

    .line 279
    :pswitch_0
    if-eqz v2, :cond_2

    .line 280
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lcom/htc/album/helper/FileOperationTask;->moveFiles(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 283
    :pswitch_1
    if-eqz v2, :cond_2

    .line 284
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lcom/htc/album/helper/FileOperationTask;->copyFiles(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 289
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v8

    iget-object v5, v8, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 290
    .local v5, sourcePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, sourceFolderPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    invoke-virtual {p0, v8, v4, v9}, Lcom/htc/album/helper/FileOperationTask;->renameFolderContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 292
    goto/16 :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hideAllDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 409
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v0}, Lcom/htc/album/helper/GalleryProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v0}, Lcom/htc/album/helper/GalleryProgressDialog;->dismiss()V

    .line 414
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    .line 416
    :cond_1
    return-void
.end method

.method public insertDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Z)Z
    .locals 12
    .parameter "context"
    .parameter "sourceMedia"
    .parameter "newPath"
    .parameter "keepFavorite"

    .prologue
    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1469
    :cond_0
    const-string v9, "FileOperationTask"

    const-string v10, "[HTCAlbum][FileOperationTask][insertDataToDB] illegal input parameter"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1521
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 1473
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_1
    const-string v7, " _ID = ?"

    .line 1474
    .local v7, where:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1475
    .local v8, wheres:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1478
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    :try_start_0
    const-string v10, " _ID = ?"

    const/4 v11, 0x0

    invoke-static {p1, v9, v10, v8, v11}, Lcom/htc/album/helper/MediaProviderHelper;->getFileCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1479
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_4

    .line 1481
    :cond_2
    const-string v9, "FileOperationTask"

    const-string v10, "[HTCAlbum][FileOperationTask][insertDataToDB] insert data to database failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    const/4 v0, 0x0

    .line 1514
    if-eqz v2, :cond_3

    .line 1516
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1517
    const/4 v2, 0x0

    :cond_3
    move v1, v0

    .restart local v1       #bRes:I
    goto :goto_0

    .line 1485
    .end local v1           #bRes:I
    :cond_4
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1486
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1487
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {v2, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1488
    const-string v9, "_id"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1489
    const-string v9, "parent"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1492
    const-string v9, "favorite"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1493
    .local v4, favorite:Ljava/lang/Integer;
    if-eqz v4, :cond_5

    .line 1495
    if-nez p4, :cond_5

    .line 1497
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1498
    const-string v9, "favorite"

    invoke-virtual {v6, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    :cond_5
    invoke-static {p1, p3, v6}, Lcom/htc/album/helper/MediaProviderHelper;->insertFile(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 1503
    .local v5, result:Landroid/net/Uri;
    if-eqz v5, :cond_6

    .line 1504
    const/4 v0, 0x1

    .line 1514
    :cond_6
    if-eqz v2, :cond_7

    .line 1516
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1517
    const/4 v2, 0x0

    .end local v4           #favorite:Ljava/lang/Integer;
    .end local v5           #result:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_1
    move v1, v0

    .line 1521
    .restart local v1       #bRes:I
    goto :goto_0

    .line 1506
    .end local v1           #bRes:I
    :catch_0
    move-exception v3

    .line 1508
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "FileOperationTask"

    const-string v10, "[HTCAlbum][FileOperationTask][insertDataToDB] insert data to database failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const-string v9, "FileOperationTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][FileOperationTask][insertDataToDB] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1510
    const/4 v0, 0x0

    .line 1514
    if-eqz v2, :cond_7

    .line 1516
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1517
    const/4 v2, 0x0

    goto :goto_1

    .line 1514
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_8

    .line 1516
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1517
    const/4 v2, 0x0

    :cond_8
    throw v9
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/htc/album/helper/FileOperationTask;->mIsRunning:Z

    return v0
.end method

.method public notifyWaitLock()V
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z

    .line 377
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][onCancelled]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 355
    :cond_1
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsRunning:Z

    .line 356
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationTask;->hideAllDialogs()V

    .line 357
    iget-boolean v0, p0, Lcom/htc/album/helper/FileOperationTask;->mIsStorageProblem:Z

    if-eqz v0, :cond_3

    .line 359
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsStorageProblem:Z

    .line 360
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    const v1, 0x68561

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    .line 369
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/FileOperationTask;->startRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 370
    return-void

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    const v1, 0x68565

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 333
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][onPostExecute]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 338
    :cond_1
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsRunning:Z

    .line 339
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationTask;->hideAllDialogs()V

    .line 341
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/FileOperationTask;->startRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 345
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "FileOperationTask"

    const-string v2, "[HTCAlbum][FileOperationTask][onPreExecute]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    if-nez v1, :cond_1

    .line 233
    const-string v1, "FileOperationTask"

    const-string v2, "[HTCAlbum][FileOperationTask][onPreExecute] mFragment is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 239
    iput-boolean v3, p0, Lcom/htc/album/helper/FileOperationTask;->mIsRunning:Z

    .line 240
    iput-boolean v3, p0, Lcom/htc/album/helper/FileOperationTask;->mIsStorageProblem:Z

    .line 241
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 243
    sget-object v1, Lcom/htc/album/helper/FileOperationTask$4;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v2}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 255
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/helper/FileOperationTask;->initDuplicateFileWarningDialog()V

    goto :goto_0

    .line 247
    :pswitch_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mSourceUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask;->mTargetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/helper/FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationTask;->initProgressDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v1}, Lcom/htc/album/helper/GalleryProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v1}, Lcom/htc/album/helper/GalleryProgressDialog;->show()V

    goto :goto_1

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 314
    sget-boolean v0, Lcom/htc/album/helper/FileOperationTask;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][onProgressUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-nez v0, :cond_1

    .line 329
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/helper/FileOperationTask;->mIsUpdateProgressText:Z

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->incrementProgressNumberBy(I)V

    .line 324
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->incrementProgressPercentBy(I)V

    .line 328
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 327
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->incrementProgressPercentBy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public renameFolderContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 38
    .parameter "context"
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 1289
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1290
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_0
    const v28, 0x68560

    .line 1293
    .local v28, result:I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1295
    :cond_1
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents] illegal input parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const v28, 0x68561

    move/from16 v29, v28

    .line 1461
    .end local v28           #result:I
    .local v29, result:I
    :goto_0
    return v29

    .line 1300
    .end local v29           #result:I
    .restart local v28       #result:I
    :cond_2
    const/4 v10, 0x0

    .line 1302
    .local v10, bRes:Z
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v25, oldFolder:Ljava/io/File;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v21, newFolder:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    .line 1308
    if-nez v10, :cond_3

    .line 1310
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents]1 rename folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    const v28, 0x68561

    move/from16 v29, v28

    .line 1312
    .end local v28           #result:I
    .restart local v29       #result:I
    goto :goto_0

    .line 1315
    .end local v29           #result:I
    .restart local v28       #result:I
    :catch_0
    move-exception v13

    .line 1317
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents]2 rename folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const-string v3, "FileOperationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HTCAlbum][FileOperationTask][renameFolderContents]2 "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v10, 0x0

    .line 1321
    const v28, 0x68561

    move/from16 v29, v28

    .line 1322
    .end local v28           #result:I
    .restart local v29       #result:I
    goto :goto_0

    .line 1325
    .end local v13           #e:Ljava/lang/Exception;
    .end local v29           #result:I
    .restart local v28       #result:I
    :cond_3
    const-string v3, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1326
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1327
    :cond_4
    const-string v35, " _data like ?"

    .line 1328
    .local v35, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v37, "%"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v36, v3

    .line 1329
    .local v36, wheres:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 1330
    .local v14, fileCursor:Landroid/database/Cursor;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1334
    .local v17, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v3, v1, v2, v4}, Lcom/htc/album/helper/MediaProviderHelper;->getFileCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1336
    const/4 v12, 0x0

    .line 1337
    .local v12, cursorValue:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1338
    const/16 v16, 0x0

    .line 1339
    .local v16, folderCheck:Ljava/io/File;
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1340
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents] rename total files."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1345
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents] rename folder cancelled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v10, 0x0

    .line 1347
    const v28, 0x68565

    .line 1436
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->updateHiddenAlbumList(Ljava/util/HashMap;)V

    .line 1437
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1439
    const/4 v10, 0x1

    .line 1451
    if-eqz v14, :cond_7

    .line 1453
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1454
    const/4 v14, 0x0

    .line 1458
    .end local v12           #cursorValue:Ljava/lang/String;
    .end local v16           #folderCheck:Ljava/io/File;
    :cond_7
    :goto_3
    if-eqz v10, :cond_8

    .line 1459
    const v28, 0x68560

    :cond_8
    move/from16 v29, v28

    .line 1461
    .end local v28           #result:I
    .restart local v29       #result:I
    goto/16 :goto_0

    .line 1352
    .end local v29           #result:I
    .restart local v12       #cursorValue:Ljava/lang/String;
    .restart local v16       #folderCheck:Ljava/io/File;
    .restart local v28       #result:I
    :cond_9
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1353
    .local v20, index:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1354
    .local v33, valueId:Ljava/lang/String;
    if-nez v33, :cond_b

    .line 1341
    :cond_a
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1441
    .end local v12           #cursorValue:Ljava/lang/String;
    .end local v16           #folderCheck:Ljava/io/File;
    .end local v20           #index:I
    .end local v33           #valueId:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 1443
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents]3 rename folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string v3, "FileOperationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HTCAlbum][FileOperationTask][renameFolderContents]3 "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1446
    const v28, 0x68561

    .line 1447
    const/4 v10, 0x0

    .line 1451
    if-eqz v14, :cond_7

    .line 1453
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1454
    const/4 v14, 0x0

    goto :goto_3

    .line 1356
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #cursorValue:Ljava/lang/String;
    .restart local v16       #folderCheck:Ljava/io/File;
    .restart local v20       #index:I
    .restart local v33       #valueId:Ljava/lang/String;
    :cond_b
    :try_start_4
    invoke-static/range {v33 .. v33}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v19

    .line 1359
    .local v19, id:I
    const-string v3, "_data"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1360
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1361
    .local v5, filePath:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 1368
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v30, targetPath:Ljava/lang/StringBuilder;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 1370
    .local v15, filePathLow:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 1371
    .local v26, oldPathLow:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1372
    .local v27, oldPathLowWithSlash:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1374
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 1375
    const-string v3, "FileOperationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HTCAlbum][FileOperationTask][renameFolderContents] source folder path: "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_c
    :goto_4
    new-instance v16, Ljava/io/File;

    .end local v16           #folderCheck:Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1385
    .restart local v16       #folderCheck:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1387
    invoke-static {v15}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 1388
    .local v11, bucketID:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    .end local v11           #bucketID:Ljava/lang/String;
    :cond_d
    const-wide/16 v6, 0x0

    .line 1393
    .local v6, dateModified:J
    const-string v3, "date_modified"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1394
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1395
    if-eqz v12, :cond_e

    .line 1396
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1399
    :cond_e
    const-wide/16 v8, 0x0

    .line 1400
    .local v8, dateTaken:J
    const-string v3, "datetaken"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1401
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1402
    if-eqz v12, :cond_f

    .line 1403
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1406
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/album/helper/FileOperationTask;->addRemoveFileCacheItem(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 1410
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1411
    .local v24, newPathBucketIDString:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1412
    .local v31, title:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1413
    invoke-static/range {v24 .. v24}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1414
    .local v18, folderName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v22

    .line 1415
    .local v22, newPathBucketID:J
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1416
    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1417
    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1419
    :cond_10
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 1420
    .local v34, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v3, "title"

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v3, "bucket_display_name"

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v3, "bucket_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1425
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/MediaProviderHelper;->updateData(Landroid/content/Context;Landroid/content/ContentValues;I)I

    move-result v32

    .line 1426
    .local v32, updateNum:I
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ge v0, v3, :cond_a

    .line 1428
    const-string v3, "FileOperationTask"

    const-string v4, "[HTCAlbum][FileOperationTask][renameFolderContents] update database failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const v28, 0x68561

    .line 1430
    const/4 v10, 0x0

    .line 1431
    goto/16 :goto_2

    .line 1377
    .end local v6           #dateModified:J
    .end local v8           #dateTaken:J
    .end local v18           #folderName:Ljava/lang/String;
    .end local v22           #newPathBucketID:J
    .end local v24           #newPathBucketIDString:Ljava/lang/String;
    .end local v31           #title:Ljava/lang/String;
    .end local v32           #updateNum:I
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_11
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1378
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 1451
    .end local v5           #filePath:Ljava/lang/String;
    .end local v12           #cursorValue:Ljava/lang/String;
    .end local v15           #filePathLow:Ljava/lang/String;
    .end local v16           #folderCheck:Ljava/io/File;
    .end local v19           #id:I
    .end local v20           #index:I
    .end local v26           #oldPathLow:Ljava/lang/String;
    .end local v27           #oldPathLowWithSlash:Ljava/lang/String;
    .end local v30           #targetPath:Ljava/lang/StringBuilder;
    .end local v33           #valueId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_12

    .line 1453
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1454
    const/4 v14, 0x0

    :cond_12
    throw v3
.end method

.method public setStorageProblemState()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationTask;->mIsStorageProblem:Z

    .line 424
    return-void
.end method

.method public updateDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "sourceMedia"
    .parameter "newPath"

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1530
    :cond_0
    const-string v4, "FileOperationTask"

    const-string v5, "[HTCAlbum][FileOperationTask][updateDataToDB] illegal input parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1548
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 1534
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/htc/album/helper/FileOperationTask;->insertDataToDB(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Z)Z

    move-result v0

    .line 1538
    :try_start_0
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1539
    .local v3, sourceUri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 1540
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #sourceUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    move v1, v0

    .line 1548
    .restart local v1       #bRes:I
    goto :goto_0

    .line 1542
    .end local v1           #bRes:I
    :catch_0
    move-exception v2

    .line 1544
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "FileOperationTask"

    const-string v5, "[HTCAlbum][FileOperationTask][updateDataToDB] delete original data failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const-string v4, "FileOperationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationTask][updateDataToDB] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateProgress(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "bIsUpdateProgressText"

    .prologue
    .line 386
    sget-boolean v0, Lcom/htc/album/helper/FileOperationTask;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "FileOperationTask"

    const-string v1, "[HTCAlbum][FileOperationTask][update]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iput-boolean p2, p0, Lcom/htc/album/helper/FileOperationTask;->mIsUpdateProgressText:Z

    .line 389
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    .line 390
    return-void
.end method
