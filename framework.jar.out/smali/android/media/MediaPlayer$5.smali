.class Landroid/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3541
    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3543
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]surfaceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 3545
    .local v0, surface:Landroid/view/Surface;
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->processDLNAIcon(Landroid/view/Surface;)V
    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Landroid/view/Surface;)V

    .line 3546
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 3549
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 3552
    return-void
.end method
