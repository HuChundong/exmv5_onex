.class Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/LockScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockVKReceiver"
.end annotation


# static fields
.field private static final mACTION:Ljava/lang/String; = "com.htc.intent.action.BLOCK_VIRTUAL_KEY"


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;Lcom/htc/videowidget/videoview/widget/LockScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.BLOCK_VIRTUAL_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$800(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #calls: Lcom/htc/videowidget/videoview/widget/LockScreenView;->showRing()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$900(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #setter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I
    invoke-static {v0, v2}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$602(Lcom/htc/videowidget/videoview/widget/LockScreenView;I)I

    .line 763
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #setter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I
    invoke-static {v0, v2}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$502(Lcom/htc/videowidget/videoview/widget/LockScreenView;I)I

    .line 764
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startRingShockAnimation()V

    .line 765
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 768
    :cond_1
    return-void
.end method
