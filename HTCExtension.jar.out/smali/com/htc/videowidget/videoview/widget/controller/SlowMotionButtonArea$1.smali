.class Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea$1;
.super Ljava/lang/Object;
.source "SlowMotionButtonArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    const/16 v1, 0xbc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 40
    :cond_0
    return-void
.end method
