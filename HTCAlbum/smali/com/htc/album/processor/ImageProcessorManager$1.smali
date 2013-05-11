.class Lcom/htc/album/processor/ImageProcessorManager$1;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/processor/ImageProcessorManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;

.field final synthetic val$runSingle:Z


# direct methods
.method constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    iput-boolean p2, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->val$runSingle:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelPirorProcess(Landroid/app/Dialog;)V

    .line 153
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/ImageProcessorManager;->OnProcessEnd(Landroid/app/Dialog;)V

    .line 136
    return-void
.end method

.method public onDismiss()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onNegative()V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->val$runSingle:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->runSingleProcessor()V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$1;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->runMultipleProcessor()V

    goto :goto_0
.end method
