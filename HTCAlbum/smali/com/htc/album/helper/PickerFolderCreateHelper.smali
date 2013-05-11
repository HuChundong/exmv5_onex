.class public Lcom/htc/album/helper/PickerFolderCreateHelper;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerFolderCreateHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

.field private mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

.field private mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mFileOperationType:I

.field private mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

.field private mSelectedFiles:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    .line 44
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 45
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    .line 46
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 47
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 49
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    .line 53
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mSelectedFiles:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->popUpCreaetFolderDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/helper/PickerFolderCreateHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/PickerFolderCreateHelper;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object p1
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->getFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    return v0
.end method

.method private static getDefaultPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 857
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getDefaultStorageRootPaths(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 858
    .local v0, storageInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/StorageInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 859
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/StorageInfo;

    invoke-virtual {v1}, Lcom/htc/album/helper/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 863
    :goto_0
    return-object v1

    .line 862
    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    const-string v2, "FileOperationHelper.getDefaultStorageRootPaths return size 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v1, "/"

    goto :goto_0
.end method

.method public static getFolderPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "filepath"

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, folderPath:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 878
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 879
    .local v1, lastSlash:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    .line 880
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 890
    .end local v1           #lastSlash:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 892
    :cond_0
    invoke-static {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->getDefaultPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 894
    :cond_1
    return-object v0

    .line 882
    .restart local v1       #lastSlash:I
    :cond_2
    const-string v2, "PickerFolderCreateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getFolderPath] collection.getCoverImage().mFilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 886
    .end local v1           #lastSlash:I
    :cond_3
    const-string v2, "PickerFolderCreateHelper"

    const-string v3, "[getFolderPath] collection.getCoverImage().mFilePath is null. "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultRoot"
    .parameter "newCreateFolder"

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    .locals 2
    .parameter "popupDialog"

    .prologue
    const/4 v1, 0x0

    .line 217
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 221
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method private popUpCreaetFolderDialog(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, supportStoragesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    new-instance v1, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 86
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 87
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const-string v2, "DLG_FOLDER_CREATE"

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[popUpCreaetFolderDialog] fm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFileOperationType(ILjava/lang/String;)V
    .locals 0
    .parameter "fileOperationType"
    .parameter "selectedFiles"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    .line 158
    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mSelectedFiles:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public cancelRunningTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->cancel()V

    .line 175
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->cancel(Z)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->cancel(Z)Z

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 186
    :cond_3
    return-void
.end method

.method public checkFolderExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "targetFolderLocation"
    .parameter "targetFolderDisplayName"

    .prologue
    .line 112
    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    .line 113
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->cancelRunningTask()V

    .line 195
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    .line 196
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 197
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    .line 198
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    .line 200
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mSelectedFiles:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    .line 203
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 204
    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    .line 205
    return-void
.end method

.method public doCancel(Ljava/lang/String;)V
    .locals 3
    .parameter "hint"

    .prologue
    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->sendBackResult(ILjava/lang/String;)V

    .line 150
    const-string v0, "PickerFolderCreateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCancel] Action has canelled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public folderDuplicateConfirm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "targetFolderLocation"
    .parameter "targetFolderDisplayName"

    .prologue
    .line 118
    new-instance v1, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 119
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 120
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const-string v2, "DLG_FOLDER_DUPLICATE_CONFIRM"

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[folderDuplicateConfirm] fm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    invoke-virtual {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-direct {p0, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    invoke-virtual {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-direct {p0, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    :cond_2
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 213
    :cond_1
    return-void
.end method

.method public sendBackResult(ILjava/lang/String;)V
    .locals 4
    .parameter "resultCode"
    .parameter "targetFolderLocation"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    invoke-interface {v1, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PickerFolderCreateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendBackResult] mCallback.onResult ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    const-string v2, "[sendBackResult]mCallback null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCreateFolderDialog(ILjava/lang/String;)V
    .locals 2
    .parameter "fileOperationType"
    .parameter "selectedFiles"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->cancelRunningTask()V

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->setFileOperationType(ILjava/lang/String;)V

    .line 77
    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    .line 78
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
