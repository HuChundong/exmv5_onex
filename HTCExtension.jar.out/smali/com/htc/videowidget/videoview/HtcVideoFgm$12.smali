.class Lcom/htc/videowidget/videoview/HtcVideoFgm$12;
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
    .line 4095
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$12;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4098
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$12;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->beatsStateChangeFromOutside()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$6000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 4099
    return-void
.end method
