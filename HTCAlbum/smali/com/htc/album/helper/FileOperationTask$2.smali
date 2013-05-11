.class Lcom/htc/album/helper/FileOperationTask$2;
.super Ljava/lang/Object;
.source "FileOperationTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationTask;->initProgressDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/FileOperationTask;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationTask;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationTask$2;->this$0:Lcom/htc/album/helper/FileOperationTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$2;->this$0:Lcom/htc/album/helper/FileOperationTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationTask;->cancel(Z)Z

    .line 164
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$2;->this$0:Lcom/htc/album/helper/FileOperationTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationTask;->notifyWaitLock()V

    .line 165
    return-void
.end method
