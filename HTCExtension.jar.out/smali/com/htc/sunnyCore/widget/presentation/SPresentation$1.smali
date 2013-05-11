.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;->openingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 625
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateAllContainersLayout()V

    .line 626
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 627
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 628
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput-boolean v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 629
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput-boolean v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 630
    invoke-static {}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "end openingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 618
    invoke-static {}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start openingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 620
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 621
    return-void
.end method
