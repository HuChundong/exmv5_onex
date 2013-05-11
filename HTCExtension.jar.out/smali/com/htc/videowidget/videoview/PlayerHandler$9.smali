.class Lcom/htc/videowidget/videoview/PlayerHandler$9;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/PlayerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/PlayerHandler;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$9;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beatsStateChange(Ljava/lang/String;Z)V
    .locals 3
    .parameter "caller"
    .parameter "beatsState"

    .prologue
    .line 1207
    const-string v0, "PlayerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeadsetPlugListener.beatsStateChange(), caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", beatsState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$9;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$9;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;->onBeatsChange(Ljava/lang/String;Z)V

    .line 1210
    :cond_0
    return-void
.end method

.method public headsetStateChange()V
    .locals 2

    .prologue
    .line 1199
    const-string v0, "PlayerHandler"

    const-string v1, "mHeadsetPlugListener.headsetStateChange()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$9;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$9;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;->onHeadsetChange()V

    .line 1202
    :cond_0
    return-void
.end method
