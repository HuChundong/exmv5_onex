.class Lcom/htc/videowidget/videoview/PlayerHandler$1;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 900
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$1;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "player"
    .parameter "percentage"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$1;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v1, 0x0

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWith2Int(II)V
    invoke-static {v0, v1, p2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$000(Lcom/htc/videowidget/videoview/PlayerHandler;II)V

    .line 906
    return-void
.end method
