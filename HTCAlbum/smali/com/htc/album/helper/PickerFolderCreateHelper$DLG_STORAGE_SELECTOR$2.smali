.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$2;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$900(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mCallBack:Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$900(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;->onResult(ILcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;)V

    .line 575
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 576
    return-void
.end method
