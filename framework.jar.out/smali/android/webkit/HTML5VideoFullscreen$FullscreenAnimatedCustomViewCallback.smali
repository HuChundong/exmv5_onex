.class Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;
.super Landroid/webkit/AnimatedCustomViewCallback;
.source "HTML5VideoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullscreenAnimatedCustomViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullscreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    .line 421
    invoke-direct {p0}, Landroid/webkit/AnimatedCustomViewCallback;-><init>()V

    .line 422
    return-void
.end method


# virtual methods
.method public getAnimationDelay()J
    .locals 2

    .prologue
    .line 434
    const-wide/16 v0, 0x2ee

    return-wide v0
.end method

.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #calls: Landroid/webkit/HTML5VideoFullscreen;->finishExitingFullscreen()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1200(Landroid/webkit/HTML5VideoFullscreen;)V

    .line 431
    return-void
.end method

.method public onCustomViewHiddenAnimationStart()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1100(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1100(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->prepareExitFullscreen()V

    .line 427
    :cond_0
    return-void
.end method
