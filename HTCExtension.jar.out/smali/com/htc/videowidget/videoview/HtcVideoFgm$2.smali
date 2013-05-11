.class Lcom/htc/videowidget/videoview/HtcVideoFgm$2;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 890
    const-string v0, "HtcVideoFgm"

    const-string v1, "OnViewContainerChangedListener::onSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    .line 894
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getControllerType()I

    move-result v0

    const/16 v1, 0x259

    if-ne v0, v1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickPlayButton()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 907
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 905
    :cond_0
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    goto :goto_0
.end method
