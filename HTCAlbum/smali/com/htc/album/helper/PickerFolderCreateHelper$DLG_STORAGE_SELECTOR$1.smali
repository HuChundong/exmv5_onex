.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

.field final synthetic val$this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;Lcom/htc/album/helper/PickerFolderCreateHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->val$this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;
    invoke-static {v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$700(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 536
    .local v0, info:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #setter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    invoke-static {v1, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$802(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;)Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 537
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mAdapter:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;
    invoke-static {v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$700(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->notifyDataSetChanged()V

    .line 538
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;
    invoke-static {v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$900(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;
    invoke-static {v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$900(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;->onResult(ILcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;)V

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    invoke-virtual {v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->dismiss()V

    .line 543
    return-void
.end method
