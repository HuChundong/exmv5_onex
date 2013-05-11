.class Lcom/scalado/app/rewind/AutoSession$ToUiHandler;
.super Landroid/os/Handler;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToUiHandler"
.end annotation


# instance fields
.field bkg_index:I

.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->bkg_index:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$ToUiHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AutoSession;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onAllImagesAdded()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onOutputDone(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #setter for: Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z
    invoke-static {v2, v4}, Lcom/scalado/app/rewind/AutoSession;->access$2(Lcom/scalado/app/rewind/AutoSession;Z)V

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/scalado/base/Image;

    invoke-interface {v3, v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onLTWCompleted(Lcom/scalado/base/Image;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/scalado/base/Image;

    invoke-interface {v3, v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onMergedImage(Lcom/scalado/base/Image;)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/scalado/base/Image;

    invoke-interface {v3, v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onSourceImage(Lcom/scalado/base/Image;)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    iget v5, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->bkg_index:I

    invoke-interface {v2, v3, v4, v5}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onReplacementRects(Ljava/util/List;Ljava/util/List;I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->bkg_index:I

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onError()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x80 -> :sswitch_2
        0x81 -> :sswitch_0
        0x8c -> :sswitch_1
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_6
        0x100 -> :sswitch_7
    .end sparse-switch
.end method

.method public removeAllMessages()V
    .locals 0

    return-void
.end method
