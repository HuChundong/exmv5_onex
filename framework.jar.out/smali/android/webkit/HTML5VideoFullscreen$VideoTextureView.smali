.class Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
.super Landroid/view/TextureView;
.source "HTML5VideoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoTextureView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullscreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullscreen;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 111
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    .line 112
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$100(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->getDefaultSize(II)I

    move-result v1

    #setter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->access$002(Landroid/webkit/HTML5VideoFullscreen;I)I

    .line 118
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$300(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    invoke-static {v1, p2}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->getDefaultSize(II)I

    move-result v1

    #setter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->access$202(Landroid/webkit/HTML5VideoFullscreen;I)I

    .line 119
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$100(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$300(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$100(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$200(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$000(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullscreen;->access$300(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$000(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullscreen;->access$300(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullscreen;->access$100(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v2

    div-int/2addr v1, v2

    #setter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->access$202(Landroid/webkit/HTML5VideoFullscreen;I)I

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$000(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$200(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setMeasuredDimension(II)V

    .line 128
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$400(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #calls: Landroid/webkit/HTML5VideoFullscreen;->getInlineXOffset()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$500(Landroid/webkit/HTML5VideoFullscreen;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setTranslationX(F)V

    .line 131
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #calls: Landroid/webkit/HTML5VideoFullscreen;->getInlineYOffset()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$700(Landroid/webkit/HTML5VideoFullscreen;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setTranslationY(F)V

    .line 132
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #calls: Landroid/webkit/HTML5VideoFullscreen;->getInlineXScale()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$800(Landroid/webkit/HTML5VideoFullscreen;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setScaleX(F)V

    .line 133
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #calls: Landroid/webkit/HTML5VideoFullscreen;->getInlineYScale()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$900(Landroid/webkit/HTML5VideoFullscreen;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setScaleY(F)V

    .line 136
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView$1;-><init>(Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 143
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 144
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->access$402(Landroid/webkit/HTML5VideoFullscreen;I)I

    .line 145
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 147
    :cond_1
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$100(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$200(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$000(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullscreen;->access$300(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullscreen;->access$200(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullscreen;->access$100(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullscreen;->access$300(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v2

    div-int/2addr v1, v2

    #setter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->access$002(Landroid/webkit/HTML5VideoFullscreen;I)I

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 152
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->isOpaque()Z

    move-result v0

    .line 155
    .local v0, isOpaque:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setOpaque(Z)V

    .line 156
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setOpaque(Z)V

    .line 157
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
