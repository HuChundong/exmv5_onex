.class Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;


# direct methods
.method constructor <init>(Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    iget-object v0, v0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;->onNegative()V

    .line 379
    return-void
.end method
