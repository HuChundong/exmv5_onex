.class Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;
.super Landroid/os/Handler;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 982
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 965
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/processor/ImageProcessorManager;->access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/processor/ImageProcessorManager;->access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/processor/ImageProcessorManager;->access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/16 v1, 0x12e

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 973
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/processor/ImageProcessorManager;->access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/processor/ImageProcessorManager;->access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/processor/ImageProcessorManager;->access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$300(Lcom/htc/album/processor/ImageProcessorManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->handleProcessedResult()V

    goto :goto_0

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
