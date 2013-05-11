.class Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HTML5VideoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    const/4 v1, 0x2

    #setter for: Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->access$402(Landroid/webkit/HTML5VideoFullscreen;I)I

    .line 139
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1000(Landroid/webkit/HTML5VideoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1100(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onEnterFullscreen()V

    .line 141
    :cond_0
    return-void
.end method
