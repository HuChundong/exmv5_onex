.class Lcom/htc/videowidget/videoview/PlayerHandler$8;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;


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
    .line 1184
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$8;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnHdmiPlugReceiver(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;Z)V
    .locals 3
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 1188
    const-string v0, "PlayerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHdmiPlugCallback pluged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$8;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$8;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;->onHDMIChange(Z)V

    .line 1191
    :cond_0
    return-void
.end method
