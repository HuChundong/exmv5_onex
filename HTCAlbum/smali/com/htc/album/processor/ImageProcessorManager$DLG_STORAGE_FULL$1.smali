.class Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL$1;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;


# direct methods
.method constructor <init>(Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL$1;->this$1:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL$1;->this$1:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    iget-object v0, v0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelProcessing(Landroid/app/Dialog;)V

    .line 442
    return-void
.end method
