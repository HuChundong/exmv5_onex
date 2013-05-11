.class Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;
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
    .line 166
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    const/4 v1, 0x0

    #setter for: Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->access$002(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 170
    return-void
.end method
