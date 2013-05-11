.class Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VpControllerFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->access$100(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->access$100(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    #setter for: Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->access$002(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 179
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 183
    :cond_0
    return-void
.end method
