.class Lcom/htc/album/helper/FileOperationManager$DeleteListener;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/FileOperationManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/helper/FileOperationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/helper/FileOperationManager;Lcom/htc/album/helper/FileOperationManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/htc/album/helper/FileOperationManager$DeleteListener;-><init>(Lcom/htc/album/helper/FileOperationManager;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    const v1, 0x68565

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public onDeleteEnd()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    const v1, 0x68560

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public onDeleteStart()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$DeleteListener;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mFileOPCallBack:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->access$100(Lcom/htc/album/helper/FileOperationManager;)Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationBegin()V

    .line 402
    :cond_0
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method
