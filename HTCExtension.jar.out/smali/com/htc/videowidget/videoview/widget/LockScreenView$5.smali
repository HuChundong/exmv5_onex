.class Lcom/htc/videowidget/videoview/widget/LockScreenView$5;
.super Landroid/os/Handler;
.source "LockScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/LockScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$5;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 611
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 617
    :goto_0
    return-void

    .line 614
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$5;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #calls: Lcom/htc/videowidget/videoview/widget/LockScreenView;->hideRing()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$100(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
