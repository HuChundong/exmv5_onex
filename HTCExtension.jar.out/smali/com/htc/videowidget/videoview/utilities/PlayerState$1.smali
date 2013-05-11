.class Lcom/htc/videowidget/videoview/utilities/PlayerState$1;
.super Ljava/lang/Object;
.source "PlayerState.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/PlayerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/PlayerState;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;->this$0:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 531
    const-string v0, "PlayerState"

    const-string v1, "OOD mMetaDataReceiver onPrepared"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;->this$0:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    #getter for: Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->access$000(Lcom/htc/videowidget/videoview/utilities/PlayerState;)Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;->this$0:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    #getter for: Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->access$000(Lcom/htc/videowidget/videoview/utilities/PlayerState;)Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;->this$0:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-interface {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;->onMetaPrepared(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    .line 535
    :cond_0
    return-void
.end method
