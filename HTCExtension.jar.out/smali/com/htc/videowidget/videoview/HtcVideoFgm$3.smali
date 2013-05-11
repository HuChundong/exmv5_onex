.class Lcom/htc/videowidget/videoview/HtcVideoFgm$3;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 913
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$3;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$3;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickPlayButton()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 918
    return-void
.end method
