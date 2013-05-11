.class Lcom/htc/album/addons/slideshow/SlideShowController$1;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShowController;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 408
    const-string v0, "SlideShowController"

    const-string v1, "[HtcAlbum][SlideShowController][mPauseListener][onClick]: PauseListener"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 410
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPauseResume()V

    .line 411
    return-void
.end method
