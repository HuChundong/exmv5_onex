.class Lcom/htc/videowidget/videoview/widget/CameraButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/CameraButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setTranslationX(F)V

    .line 168
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    const/4 v1, 0x0

    #setter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$002(Lcom/htc/videowidget/videoview/widget/CameraButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 170
    return-void
.end method
