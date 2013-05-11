.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$2;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;

    iget-object v0, v0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;

    iget-object v2, v2, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->sendBackResult(ILjava/lang/String;)V

    .line 713
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 714
    return-void
.end method
