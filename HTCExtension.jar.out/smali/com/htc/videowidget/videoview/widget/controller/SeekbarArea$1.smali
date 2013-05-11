.class Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;
.super Ljava/lang/Object;
.source "SeekbarArea.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 64
    if-eqz p3, :cond_2

    .line 65
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget-object v1, v1, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimePop:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget-object v1, v1, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimePop:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #calls: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$100(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$200(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$300(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$300(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #calls: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$100(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "key_int"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    move-result-object v1

    const/16 v2, 0xbbd

    invoke-virtual {v1, v2, v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 76
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    move-result-object v0

    const/16 v1, 0xbbc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    move-result-object v0

    const/16 v1, 0xbbe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 54
    :cond_0
    return-void
.end method
