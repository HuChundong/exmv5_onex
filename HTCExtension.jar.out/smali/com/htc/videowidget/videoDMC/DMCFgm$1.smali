.class Lcom/htc/videowidget/videoDMC/DMCFgm$1;
.super Ljava/lang/Object;
.source "DMCFgm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$1;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$1;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->clickPlayButton()V
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    .line 233
    return-void
.end method
