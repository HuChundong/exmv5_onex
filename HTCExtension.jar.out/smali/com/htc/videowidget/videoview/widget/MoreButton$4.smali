.class Lcom/htc/videowidget/videoview/widget/MoreButton$4;
.super Landroid/os/Handler;
.source "MoreButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/MoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/MoreButton;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$4;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$4;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    #getter for: Lcom/htc/videowidget/videoview/widget/MoreButton;->UI_SHOW_POPWIN:I
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->access$200(Lcom/htc/videowidget/videoview/widget/MoreButton;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$4;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->show()V

    .line 454
    :cond_0
    return-void
.end method
