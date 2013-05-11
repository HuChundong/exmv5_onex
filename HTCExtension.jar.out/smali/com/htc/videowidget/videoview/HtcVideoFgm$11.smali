.class Lcom/htc/videowidget/videoview/HtcVideoFgm$11;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 4087
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$11;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4090
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$11;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    const/4 v1, 0x1

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateSoundEffectStyle(Z)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5900(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)V

    .line 4091
    return-void
.end method
