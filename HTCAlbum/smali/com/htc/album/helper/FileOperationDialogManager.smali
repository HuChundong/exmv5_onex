.class public Lcom/htc/album/helper/FileOperationDialogManager;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FileOperationDialogManager$1;,
        Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;,
        Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;,
        Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;,
        Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;,
        Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;,
        Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;,
        Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;,
        Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileOperationDialogManager"


# instance fields
.field private mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 37
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 58
    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method public static hasIllegalChars(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 506
    .local v1, hasIllegal:Z
    if-nez p0, :cond_0

    move v2, v1

    .line 520
    .end local v1           #hasIllegal:Z
    .local v2, hasIllegal:I
    :goto_0
    return v2

    .line 509
    .end local v2           #hasIllegal:I
    .restart local v1       #hasIllegal:Z
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 510
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const-string v4, "\\/:*?\"<>|."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 512
    const-string v4, "\\/:*?\"<>|."

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, c:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 515
    :cond_1
    const/4 v1, 0x1

    .end local v0           #c:Ljava/lang/String;
    :cond_2
    move v2, v1

    .line 520
    .restart local v2       #hasIllegal:I
    goto :goto_0

    .line 510
    .end local v2           #hasIllegal:I
    .restart local v0       #c:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isStringAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 525
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 155
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->cancel(Z)Z

    .line 160
    iput-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 162
    :cond_1
    return-void
.end method

.method public createDuplicateFileWarningDialog(Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 2
    .parameter "path"
    .parameter "callBack"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 79
    :cond_0
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;)V

    .line 80
    .local v0, dialog:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 81
    return-object v0
.end method

.method public createFileOperationErrorDialog(Landroid/app/Activity;ILcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    .locals 5
    .parameter "activity"
    .parameter "result"
    .parameter "type"

    .prologue
    .line 100
    iget-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v3}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 103
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    const/4 v2, 0x0

    .line 108
    .local v2, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, content:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 141
    const/4 v1, 0x0

    .line 145
    :goto_0
    invoke-static {v2, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    .end local v1           #dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    .line 146
    .restart local v1       #dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 147
    return-object v1

    .line 113
    :pswitch_0
    const v3, 0x2040298

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    sget-object v3, Lcom/htc/album/helper/FileOperationDialogManager$1;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 117
    :pswitch_1
    const v3, 0x7f0a0191

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    goto :goto_0

    .line 120
    :pswitch_2
    const v3, 0x7f0a0192

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_0

    .line 127
    :pswitch_3
    const v3, 0x7f0a018e

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    sget-object v3, Lcom/htc/album/helper/FileOperationDialogManager$1;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    goto :goto_0

    .line 131
    :pswitch_4
    const v3, 0x7f0a0193

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_5
    const v3, 0x7f0a0194

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x68561
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 128
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public createFolderDeleteDialog(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 2
    .parameter "context"
    .parameter "albumCollection"
    .parameter "callBack"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 93
    :cond_0
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)V

    .line 94
    .local v0, dialog:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 95
    return-object v0
.end method

.method public createFolderRenameDialog(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 2
    .parameter "context"
    .parameter "albumCollection"
    .parameter "callBack"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 67
    :cond_0
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)V

    .line 68
    .local v0, dialog:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 69
    return-object v0
.end method
