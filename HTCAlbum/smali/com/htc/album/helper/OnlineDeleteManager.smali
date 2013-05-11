.class public Lcom/htc/album/helper/OnlineDeleteManager;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;,
        Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;,
        Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;,
        Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;,
        Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_ALL:I = 0x120001

.field public static final DIALOG_DELETE_PROGRESS:I = 0x120000

.field public static final DIALOG_DELETE_SINGLE:I = 0x120002

.field private static final LOG_TAG:Ljava/lang/String; = "OnlineDeleteManager"


# instance fields
.field private mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field private mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

.field private mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

.field private mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

.field private mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

.field private mFragment:Landroid/app/Fragment;

.field private mIsDeleteAll:Z

.field private mPickedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter "fragment"
    .parameter "adapter"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    .line 31
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    .line 32
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 33
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 34
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    .line 38
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    .line 39
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    .line 55
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    .line 56
    iput-object p2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 57
    iput-object p3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/album/helper/OnlineDeleteManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMedias()V

    return-void
.end method

.method private deleteMedias()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private onDismissDeleteAllDialog()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->dismiss()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    invoke-interface {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDismissDeleteAll()V

    .line 149
    :cond_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDismissDeleteProgressDialog()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDismissDeleteSingleDialog()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->dismiss()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDeleteMultipleDialog(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSourceName(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    .line 189
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    invoke-virtual {v1, v5}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->setCancelable(Z)V

    .line 190
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->setMessage(Ljava/lang/String;)V

    .line 201
    :goto_0
    const-string v1, "OnlineDeleteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][OnlineDeleteManager][showDeleteMultipleDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 203
    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteMultipleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDeleteSingleDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    .line 214
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->setCancelable(Z)V

    .line 215
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->setMessage(Ljava/lang/String;)V

    .line 226
    :goto_0
    const-string v1, "OnlineDeleteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][OnlineDeleteManager][showDeleteSingleDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 228
    return-void

    .line 221
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteSingleDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 155
    const-string v1, "loading_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    if-nez v1, :cond_3

    .line 162
    new-instance v1, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    .line 163
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    .line 175
    :goto_0
    const-string v1, "OnlineDeleteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][OnlineDeleteManager][showProgressDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "OnlineDeleteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][OnlineDeleteManager][showProgressDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    return-void

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->setText(Ljava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public cancelDeleteMedias()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancel()V

    .line 292
    :try_start_0
    const-string v1, "OnlineDeleteManager"

    const-string v2, "[HTCAlbum][OnlineDeleteManager][cancelDeleteMedias] Join delete thread start!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "OnlineDeleteManager"

    const-string v2, "[HTCAlbum][OnlineDeleteManager][cancelDeleteMedias] Join delete thread time out @ 2000!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    .line 302
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "OnlineDeleteManager"

    const-string v2, "[HTCAlbum][OnlineDeleteManager][cancelDeleteMedias]: join thread fail"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteMultipleMedia(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, pickedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 237
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    .line 238
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 239
    .local v1, pickerCount:I
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    .line 240
    .local v0, listCount:I
    if-ne v1, v0, :cond_3

    .line 242
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    .line 248
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMedias()V

    goto :goto_0

    .line 246
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    goto :goto_1

    .line 252
    .end local v0           #listCount:I
    .end local v1           #pickerCount:I
    :cond_4
    const-string v2, "OnlineDeleteManager"

    const-string v3, "Picker list is null or 0"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteSingleMedia(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 262
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_3

    .line 264
    const-string v1, "OnlineDeleteManager"

    const-string v2, "[HTCAlbum][OnlineDeleteManager][deleteSingleMedia] wrapperPhoto is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    .line 268
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v2, 0x120002

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 8
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 62
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-ne v7, v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->showProgressDialog(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v4, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    iget-object v5, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    .line 68
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->start()V

    move v0, v7

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->showDeleteSingleDialog(Landroid/os/Bundle;)V

    move v0, v7

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->showDeleteMultipleDialog(Landroid/os/Bundle;)V

    move v0, v7

    .line 75
    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDismissAllFragmentDialog()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissDeleteProgressDialog()V

    .line 103
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissDeleteSingleDialog()V

    .line 104
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissDeleteAllDialog()V

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 84
    :cond_1
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 97
    goto :goto_0

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissDeleteProgressDialog()V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissDeleteSingleDialog()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissDeleteAllDialog()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;

    .line 307
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 308
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 309
    return-void
.end method
