.class Lcom/htc/quickselection/HtcCheckableImageView$1;
.super Ljava/lang/Object;
.source "HtcCheckableImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/quickselection/HtcCheckableImageView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/quickselection/HtcCheckableImageView;


# direct methods
.method constructor <init>(Lcom/htc/quickselection/HtcCheckableImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/quickselection/HtcCheckableImageView$1;->this$0:Lcom/htc/quickselection/HtcCheckableImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView$1;->this$0:Lcom/htc/quickselection/HtcCheckableImageView;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcCheckableImageView;->onDownAnimationCancel()V

    .line 168
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView$1;->this$0:Lcom/htc/quickselection/HtcCheckableImageView;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcCheckableImageView;->onDownAnimationEnd()V

    .line 164
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView$1;->this$0:Lcom/htc/quickselection/HtcCheckableImageView;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcCheckableImageView;->onDownAnimationStart()V

    .line 158
    return-void
.end method
