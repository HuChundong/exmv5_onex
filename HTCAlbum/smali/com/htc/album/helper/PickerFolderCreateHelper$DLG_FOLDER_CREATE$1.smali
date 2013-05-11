.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->getMainView()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v1, v1, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v2, v2, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v3, v3, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->popUpStorageSelector(Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->access$300(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V

    .line 352
    return-void
.end method
