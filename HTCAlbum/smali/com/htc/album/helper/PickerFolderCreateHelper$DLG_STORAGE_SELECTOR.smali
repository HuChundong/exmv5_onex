.class public Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DLG_STORAGE_SELECTOR"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

.field private mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

.field private mMainView:Lcom/htc/widget/HtcListView;

.field private mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

.field private mSupportStorages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter
    .parameter "selectedStorage"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, supportStorages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    const/4 v2, 0x0

    .line 525
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 515
    iput-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSupportStorages:Ljava/util/ArrayList;

    .line 516
    iput-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 517
    iput-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mMainView:Lcom/htc/widget/HtcListView;

    .line 518
    iput-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    .line 519
    iput-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    .line 526
    iput-object p3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSupportStorages:Ljava/util/ArrayList;

    .line 527
    iput-object p4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 528
    iput-object p5, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    .line 529
    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$200(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mMainView:Lcom/htc/widget/HtcListView;

    .line 530
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mMainView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;Lcom/htc/album/helper/PickerFolderCreateHelper;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 545
    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    .line 546
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mMainView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 547
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSupportStorages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;)Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;->onResult(ILcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;)V

    .line 553
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 554
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 561
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a018b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mMainView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20401ee

    new-instance v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$2;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$2;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 579
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 581
    .local v1, dialogInstance:Lcom/htc/widget/HtcAlertDialog;
    return-object v1
.end method
