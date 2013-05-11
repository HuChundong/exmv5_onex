.class Lcom/htc/album/addons/slideshow/SlideshowBase$7;
.super Landroid/os/Handler;
.source "SlideshowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$7;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 926
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 935
    :goto_0
    return-void

    .line 929
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$7;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->showControlBar(Z)V

    goto :goto_0

    .line 932
    :sswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$7;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->showControlBar(Z)V

    goto :goto_0

    .line 926
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
