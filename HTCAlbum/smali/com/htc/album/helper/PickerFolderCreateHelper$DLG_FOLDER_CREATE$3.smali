.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 372
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v0, v0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const-string v1, "DLG_FOLDER_CREATE"

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->doCancel(Ljava/lang/String;)V

    .line 376
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 377
    return-void
.end method
